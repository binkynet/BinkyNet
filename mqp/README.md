# BinkyNet Message Queue Protocol

This document specifies the Message Queue Protocol (short `mqp`) between the `Network Master`
and `Local Workers`.

The protocol consists of a series of JSON encoded messages, send in various channels
over an MQTT service.

Messages can be send from `Network Master` to `Local Worker` and from `Local Worker` to `Network Master`.

Messages are grouped in 2 categories:

- Global messages that involve the global state of the entire network.
  An example of a global message is a `Power` message.
- Object messages that have a specific `Object` as subject.
  An example of an object message is a `Switch` message.

## Topics

Messages are send in specific topics.

Global messages are send in the `<prefix>/global/<message-type>` topic, which is shared by
the `Network master` and all `Local workers`.

Object messages are send in an object-type topic per `Local worker`; e.g. `<prefix>/<worker-id>/switch`.
This ensures that the amount of traffic per `Local worker` is limited to only the
traffic that it is involved with.

## Requested vs Actual value

Most messages can be used bi-directional. A message `mode` specifies if the message
is a `request` to change to a specified state, or a notification of an `actual` state.

For example, the `Network master` can send a `SwithcMessage` with mode `request` to
request the state of a `Switch` object to be set to `straight`.
The applicable `Local worker` will start the process of moving the switch
to the `straight` position and once that position is reached, it will send
a `SwitchMessage` back with an `actual` mode, confirming the `straight` position.

## Message addresses

All `Object` messages have an address field to specify the specific `Object` that is the
subject of the message. This address is formatted as `<worker-id>/<local-object-id>`.

While the `<worker-id>` part of the address is stricly not needed since all `Object`
messages are send in a worker specific topic, it is still part of the address with future extensions in mind.
