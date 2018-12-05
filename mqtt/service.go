// Copyright 2018 Ewout Prangsma
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
// Author Ewout Prangsma
//

package mqtt

import (
	"context"
	"encoding/json"
	"net"
	"strconv"
	"sync"
	"time"

	paho "github.com/eclipse/paho.mqtt.golang"
	"github.com/pkg/errors"
	"github.com/rs/zerolog"
	"github.com/yosssi/gmq/mqtt"
)

var (
	SubscriptionClosedError = errors.New("subscription closed")
	TimeoutError            = errors.New("timeout")
	maskAny                 = errors.WithStack
)

const (
	// QosAtMostOnce represents "QoS 0: At most once delivery".
	QosAtMostOnce = mqtt.QoS0
	// QosAsLeastOnce represents "QoS 1: At least once delivery".
	QosAsLeastOnce = mqtt.QoS1
	//QosExactlyOnce represents "QoS 2: Exactly once delivery".
	QosExactlyOnce = mqtt.QoS2
	// QosDefault is the default Qos value for BinkyNet
	QosDefault = QosAsLeastOnce
)

type Config struct {
	Host     string
	Port     int
	UserName string
	Password string
	ClientID string
}

// Service contains the API exposed by the MQTT service.
type Service interface {
	// Close the service
	Close() error
	// Publish a JSON encoded message into a topic.
	Publish(ctx context.Context, msg interface{}, topic string, qos byte) error
	// Subscribe to a topic
	Subscribe(ctx context.Context, topic string, qos byte) (Subscription, error)
}

// Subscription for a single topic
type Subscription interface {
	// Unsubscribe.
	Close() error
	// NextMsg blocks until the next message has been received.
	// Returns message-ID, error
	NextMsg(ctx context.Context, result interface{}) (int, error)
}

// NewService instantiates a new MQTT service.
func NewService(config Config, logger zerolog.Logger) (Service, error) {
	return &service{
		Config:      config,
		logger:      logger,
		topicQueues: make(map[string]chan paho.Message),
	}, nil
}

type service struct {
	Config
	mutex       sync.Mutex
	client      paho.Client
	connected   bool
	logger      zerolog.Logger
	topicQueues map[string]chan paho.Message
}

const (
	connectTimeout     = time.Second * 15
	publishTimeout     = time.Second * 15
	subscribeTimeout   = time.Second * 15
	unsubscribeTimeout = time.Second * 15
	disconnectPatience = time.Second * 15
)

// Close the service
func (s *service) Close() error {
	s.mutex.Lock()
	defer s.mutex.Unlock()

	if s.connected {
		s.client.Disconnect(uint(disconnectPatience.Seconds()))
		s.connected = false
	}

	return nil
}

// connect opens a connection.
func (s *service) connect() error {
	s.mutex.Lock()
	defer s.mutex.Unlock()

	if s.connected {
		return nil
	}
	// Connect to the MQTT Server.
	addr := net.JoinHostPort(s.Host, strconv.Itoa(s.Port))
	opts := paho.NewClientOptions()
	opts.AddBroker(addr)
	opts.SetDefaultPublishHandler(s.defaultMessageHandler)
	opts.SetClientID(s.ClientID)
	opts.SetCleanSession(false)
	opts.SetKeepAlive(time.Second * 5)
	opts.SetOnConnectHandler(func(paho.Client) {
		s.logger.Debug().Msg("MQTT connected")
	})
	opts.SetConnectionLostHandler(func(c paho.Client, err error) {
		s.logger.Debug().Err(err).Msg("MQTT connection lost")
	})
	client := paho.NewClient(opts)
	token := client.Connect()
	if !token.WaitTimeout(connectTimeout) {
		client.Disconnect(0)
		return maskAny(TimeoutError)
	}
	if err := token.Error(); err != nil {
		client.Disconnect(0)
		return maskAny(err)
	}
	s.client = client
	s.connected = true
	return nil
}

// Publish a JSON encoded message into a topic.
func (s *service) Publish(ctx context.Context, msg interface{}, topic string, qos byte) error {
	encodedMsg, ok := msg.([]byte)
	if !ok {
		var err error
		encodedMsg, err = json.Marshal(msg)
		if err != nil {
			return maskAny(err)
		}
	}
	if err := s.connect(); err != nil {
		return maskAny(err)
	}
	retained := false
	timeout := publishTimeout
	if deadline, found := ctx.Deadline(); found {
		timeout = time.Until(deadline)
	}
	token := s.client.Publish(topic, qos, retained, encodedMsg)
	if !token.WaitTimeout(timeout) {
		return maskAny(TimeoutError)
	}
	if err := token.Error(); err != nil {
		return maskAny(err)
	}
	return nil
}

// Subscribe to a topic
func (s *service) Subscribe(ctx context.Context, topic string, qos byte) (Subscription, error) {
	result := &subscription{
		s:     s,
		topic: topic,
	}
	if err := s.connect(); err != nil {
		return nil, maskAny(err)
	}
	s.ensureTopicQueue(topic)
	token := s.client.Subscribe(topic, qos, nil)
	if !token.WaitTimeout(subscribeTimeout) {
		s.closeTopicQueue(topic)
		return nil, maskAny(TimeoutError)
	}
	if err := token.Error(); err != nil {
		s.closeTopicQueue(topic)
		return nil, maskAny(err)
	}
	return result, nil
}

// Decode message and put in queue
func (s *service) defaultMessageHandler(c paho.Client, msg paho.Message) {
	s.mutex.Lock()
	queue, found := s.topicQueues[msg.Topic()]
	s.mutex.Unlock()
	if found {
		select {
		case queue <- msg:
			// We encoded the message
		default:
			// Queue full
			s.logger.Warn().Str("topic", msg.Topic()).Msg("Message queue full")
		}
	}
}

// ensureTopicQueue ensures a queue with given topic name exists.
func (s *service) ensureTopicQueue(topic string) {
	s.mutex.Lock()
	defer s.mutex.Unlock()
	if _, found := s.topicQueues[topic]; !found {
		s.topicQueues[topic] = make(chan paho.Message, 32)
	}
}

// closeTopicQueue closes a queue with given topic name.
func (s *service) closeTopicQueue(topic string) {
	s.mutex.Lock()
	defer s.mutex.Unlock()
	if queue, found := s.topicQueues[topic]; found {
		delete(s.topicQueues, topic)
		close(queue)
	}
}

// nextMsg blocks until the next message has been received.
func (s *service) nextMsg(ctx context.Context, topic string, result interface{}) (int, error) {
	s.mutex.Lock()
	queue, found := s.topicQueues[topic]
	s.mutex.Unlock()
	if !found {
		return 0, maskAny(SubscriptionClosedError)
	}
	select {
	case <-ctx.Done():
		// Context cancelled
		return 0, ctx.Err()
	case msg, ok := <-queue:
		if !ok {
			return 0, maskAny(SubscriptionClosedError)
		}
		if err := json.Unmarshal(msg.Payload(), result); err != nil {
			return 0, maskAny(err)
		}
		return int(msg.MessageID()), nil
	}
}

type subscription struct {
	s     *service
	topic string
}

// Unsubscribe.
func (s *subscription) Close() error {
	s.s.closeTopicQueue(s.topic)
	token := s.s.client.Unsubscribe(s.topic)
	if !token.WaitTimeout(unsubscribeTimeout) {
		return maskAny(TimeoutError)
	}
	if err := token.Error(); err != nil {
		return maskAny(err)
	}
	return nil
}

// NextMsg blocks until the next message has been received.
func (s *subscription) NextMsg(ctx context.Context, result interface{}) (int, error) {
	msgID, err := s.s.nextMsg(ctx, s.topic, result)
	if err != nil {
		return 0, maskAny(err)
	}
	return msgID, nil
}
