// Code generated by protoc-gen-gogo. DO NOT EDIT.
// source: localworker.proto

package v1

import (
	context "context"
	fmt "fmt"
	proto "github.com/golang/protobuf/proto"
	grpc "google.golang.org/grpc"
	codes "google.golang.org/grpc/codes"
	status "google.golang.org/grpc/status"
	math "math"
)

// Reference imports to suppress errors if they are not otherwise used.
var _ = proto.Marshal
var _ = fmt.Errorf
var _ = math.Inf

// This is a compile-time assertion to ensure that this generated file
// is compatible with the proto package it is being compiled against.
// A compilation error at this line likely means your copy of the
// proto package needs to be updated.
const _ = proto.ProtoPackageIsVersion3 // please upgrade the proto package

func init() { proto.RegisterFile("localworker.proto", fileDescriptor_4d9116c22e0c2dd1) }

var fileDescriptor_4d9116c22e0c2dd1 = []byte{
	// 408 bytes of a gzipped FileDescriptorProto
	0x1f, 0x8b, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0xff, 0x84, 0x93, 0x41, 0x8b, 0xd3, 0x40,
	0x14, 0xc7, 0x1d, 0x51, 0xd1, 0x29, 0x6a, 0x3a, 0x3d, 0xa8, 0x45, 0x22, 0x8a, 0x07, 0x4f, 0x49,
	0x5a, 0x05, 0xbd, 0x08, 0xb6, 0x52, 0x42, 0xb1, 0xb4, 0xc5, 0x80, 0x82, 0xb7, 0x34, 0xbc, 0xb6,
	0x43, 0xd3, 0x4c, 0xcc, 0xbc, 0xb4, 0xf4, 0x9b, 0xf8, 0x19, 0xfc, 0x24, 0x7b, 0xdc, 0x8f, 0xb0,
	0x74, 0xbf, 0xc6, 0x1e, 0x96, 0x66, 0x36, 0xa1, 0x93, 0x26, 0xbb, 0xb7, 0xcc, 0xfc, 0x7f, 0xef,
	0xbd, 0xdf, 0x0b, 0x0c, 0x6d, 0x86, 0x22, 0xf0, 0xc3, 0xad, 0x48, 0x56, 0x90, 0x58, 0x71, 0x22,
	0x50, 0xb0, 0xc6, 0x8c, 0x47, 0xab, 0x5d, 0x04, 0x68, 0x6d, 0x3a, 0xed, 0x06, 0xee, 0x62, 0x90,
	0x2a, 0xe9, 0x2e, 0xe8, 0xcb, 0xd1, 0x01, 0xff, 0x9d, 0xe1, 0xdf, 0x45, 0x34, 0xe7, 0x0b, 0x0f,
	0x92, 0x0d, 0x0f, 0x80, 0xfd, 0xa0, 0x4f, 0x5c, 0x40, 0x75, 0xc7, 0x5e, 0x5b, 0x47, 0x3d, 0xac,
	0xa3, 0x9a, 0x61, 0x34, 0x17, 0x6d, 0xb3, 0x2e, 0x55, 0xd5, 0x0e, 0xe9, 0x5e, 0x3d, 0xa4, 0xaf,
	0xf4, 0x7b, 0x4c, 0x44, 0x98, 0x8f, 0xfa, 0x42, 0x1f, 0x4c, 0x79, 0x74, 0xd7, 0x14, 0xa6, 0xa5,
	0x83, 0x75, 0x8c, 0x3b, 0x36, 0xa5, 0x86, 0x0b, 0x38, 0x15, 0x5b, 0x48, 0x7e, 0xc2, 0xdf, 0x14,
	0x24, 0x4a, 0xf6, 0x56, 0xe3, 0xb4, 0x6c, 0x12, 0x23, 0x17, 0x91, 0x6c, 0xbf, 0x38, 0x45, 0x3c,
	0xf4, 0x11, 0x1c, 0xc2, 0xbe, 0xd1, 0xe7, 0xde, 0x4d, 0xc7, 0x5e, 0x80, 0xa9, 0x1f, 0x4a, 0x56,
	0x47, 0x57, 0x19, 0x7d, 0x20, 0x6c, 0x40, 0x9f, 0xb9, 0x80, 0x23, 0x11, 0x14, 0x46, 0x6f, 0xca,
	0x7b, 0x95, 0x7d, 0x8c, 0x32, 0xe0, 0x10, 0xf6, 0x99, 0x3e, 0xf5, 0xb2, 0x36, 0xb9, 0xc6, 0x09,
	0x54, 0x33, 0xff, 0x2b, 0x35, 0x3c, 0x40, 0x0f, 0x22, 0x29, 0x8a, 0x15, 0x5a, 0x1a, 0xa9, 0xb2,
	0x9a, 0xf2, 0x31, 0x6d, 0xba, 0x80, 0x93, 0x14, 0xe3, 0x14, 0x8b, 0x0d, 0xde, 0x69, 0xa8, 0x1e,
	0xe6, 0x4b, 0xb4, 0x2a, 0x18, 0x27, 0xd7, 0x51, 0xc7, 0x6a, 0x1d, 0x95, 0xdd, 0xaa, 0xe3, 0x6d,
	0x39, 0x06, 0xcb, 0x1a, 0x1d, 0x3d, 0xac, 0xd6, 0x51, 0x4c, 0xa1, 0xa3, 0x8e, 0x35, 0x7f, 0x27,
	0xcb, 0x6a, 0x74, 0x3e, 0xd1, 0xc7, 0x87, 0x57, 0x11, 0x8a, 0x60, 0xc5, 0x2a, 0x88, 0x52, 0x55,
	0xc6, 0x39, 0xa4, 0x3f, 0x3c, 0xdb, 0x9b, 0xe4, 0x7c, 0x6f, 0x92, 0x8b, 0xbd, 0x49, 0xfe, 0x5d,
	0x9a, 0xf7, 0xfe, 0xbc, 0x5f, 0x70, 0x5c, 0xa6, 0x33, 0x2b, 0x10, 0x6b, 0x3b, 0xaf, 0xb0, 0xfb,
	0x87, 0x8f, 0x31, 0xa0, 0xed, 0xc7, 0x5c, 0xda, 0x9b, 0xce, 0xff, 0xfb, 0x46, 0x7e, 0x65, 0xf5,
	0x62, 0x2e, 0xad, 0x5f, 0x9d, 0xd9, 0xa3, 0xec, 0xe5, 0x7e, 0xbc, 0x0e, 0x00, 0x00, 0xff, 0xff,
	0xf0, 0x42, 0x4c, 0x97, 0xe8, 0x03, 0x00, 0x00,
}

// Reference imports to suppress errors if they are not otherwise used.
var _ context.Context
var _ grpc.ClientConn

// This is a compile-time assertion to ensure that this generated file
// is compatible with the grpc package it is being compiled against.
const _ = grpc.SupportPackageIsVersion4

// LocalWorkerConfigServiceClient is the client API for LocalWorkerConfigService service.
//
// For semantics around ctx use and closing/ending streaming RPCs, please refer to https://godoc.org/google.golang.org/grpc#ClientConn.NewStream.
type LocalWorkerConfigServiceClient interface {
	// GetConfig is used to fetch the configuration for a local worker.
	GetConfig(ctx context.Context, in *LocalWorkerInfo, opts ...grpc.CallOption) (LocalWorkerConfigService_GetConfigClient, error)
}

type localWorkerConfigServiceClient struct {
	cc *grpc.ClientConn
}

func NewLocalWorkerConfigServiceClient(cc *grpc.ClientConn) LocalWorkerConfigServiceClient {
	return &localWorkerConfigServiceClient{cc}
}

func (c *localWorkerConfigServiceClient) GetConfig(ctx context.Context, in *LocalWorkerInfo, opts ...grpc.CallOption) (LocalWorkerConfigService_GetConfigClient, error) {
	stream, err := c.cc.NewStream(ctx, &_LocalWorkerConfigService_serviceDesc.Streams[0], "/binkynet.v1.LocalWorkerConfigService/GetConfig", opts...)
	if err != nil {
		return nil, err
	}
	x := &localWorkerConfigServiceGetConfigClient{stream}
	if err := x.ClientStream.SendMsg(in); err != nil {
		return nil, err
	}
	if err := x.ClientStream.CloseSend(); err != nil {
		return nil, err
	}
	return x, nil
}

type LocalWorkerConfigService_GetConfigClient interface {
	Recv() (*LocalWorkerConfig, error)
	grpc.ClientStream
}

type localWorkerConfigServiceGetConfigClient struct {
	grpc.ClientStream
}

func (x *localWorkerConfigServiceGetConfigClient) Recv() (*LocalWorkerConfig, error) {
	m := new(LocalWorkerConfig)
	if err := x.ClientStream.RecvMsg(m); err != nil {
		return nil, err
	}
	return m, nil
}

// LocalWorkerConfigServiceServer is the server API for LocalWorkerConfigService service.
type LocalWorkerConfigServiceServer interface {
	// GetConfig is used to fetch the configuration for a local worker.
	GetConfig(*LocalWorkerInfo, LocalWorkerConfigService_GetConfigServer) error
}

// UnimplementedLocalWorkerConfigServiceServer can be embedded to have forward compatible implementations.
type UnimplementedLocalWorkerConfigServiceServer struct {
}

func (*UnimplementedLocalWorkerConfigServiceServer) GetConfig(req *LocalWorkerInfo, srv LocalWorkerConfigService_GetConfigServer) error {
	return status.Errorf(codes.Unimplemented, "method GetConfig not implemented")
}

func RegisterLocalWorkerConfigServiceServer(s *grpc.Server, srv LocalWorkerConfigServiceServer) {
	s.RegisterService(&_LocalWorkerConfigService_serviceDesc, srv)
}

func _LocalWorkerConfigService_GetConfig_Handler(srv interface{}, stream grpc.ServerStream) error {
	m := new(LocalWorkerInfo)
	if err := stream.RecvMsg(m); err != nil {
		return err
	}
	return srv.(LocalWorkerConfigServiceServer).GetConfig(m, &localWorkerConfigServiceGetConfigServer{stream})
}

type LocalWorkerConfigService_GetConfigServer interface {
	Send(*LocalWorkerConfig) error
	grpc.ServerStream
}

type localWorkerConfigServiceGetConfigServer struct {
	grpc.ServerStream
}

func (x *localWorkerConfigServiceGetConfigServer) Send(m *LocalWorkerConfig) error {
	return x.ServerStream.SendMsg(m)
}

var _LocalWorkerConfigService_serviceDesc = grpc.ServiceDesc{
	ServiceName: "binkynet.v1.LocalWorkerConfigService",
	HandlerType: (*LocalWorkerConfigServiceServer)(nil),
	Methods:     []grpc.MethodDesc{},
	Streams: []grpc.StreamDesc{
		{
			StreamName:    "GetConfig",
			Handler:       _LocalWorkerConfigService_GetConfig_Handler,
			ServerStreams: true,
		},
	},
	Metadata: "localworker.proto",
}

// LocalWorkerControlServiceClient is the client API for LocalWorkerControlService service.
//
// For semantics around ctx use and closing/ending streaming RPCs, please refer to https://godoc.org/google.golang.org/grpc#ClientConn.NewStream.
type LocalWorkerControlServiceClient interface {
	// Ping messages are send at regular intervals by local workers
	// as a heartbeat notification, as well as providing information about
	// versions.
	Ping(ctx context.Context, in *LocalWorkerInfo, opts ...grpc.CallOption) (*Empty, error)
	// GetPowerRequests is used to get a stream of power requests from the network
	// master.
	GetPowerRequests(ctx context.Context, in *PowerRequestsOptions, opts ...grpc.CallOption) (LocalWorkerControlService_GetPowerRequestsClient, error)
	// SetPowerActuals is used to send a stream of actual power statuses to
	// the network master.
	SetPowerActuals(ctx context.Context, opts ...grpc.CallOption) (LocalWorkerControlService_SetPowerActualsClient, error)
	// GetLocRequests is used to get a stream of loc requests from the network
	// master.
	// Note: Loc.actual field is not set.
	GetLocRequests(ctx context.Context, in *LocRequestsOptions, opts ...grpc.CallOption) (LocalWorkerControlService_GetLocRequestsClient, error)
	// SetLocActuals is used to send a stream of actual loc statuses to
	// the network master.
	// Note: Loc.request field must be set to the latest request.
	SetLocActuals(ctx context.Context, opts ...grpc.CallOption) (LocalWorkerControlService_SetLocActualsClient, error)
	// SetSensorActuals is used to send a stream of actual sensor statuses to
	// the network master.
	SetSensorActuals(ctx context.Context, opts ...grpc.CallOption) (LocalWorkerControlService_SetSensorActualsClient, error)
	// GetOutputRequests is used to get a stream of output requests from the network
	// master.
	GetOutputRequests(ctx context.Context, in *OutputRequestsOptions, opts ...grpc.CallOption) (LocalWorkerControlService_GetOutputRequestsClient, error)
	// SetOutputActuals is used to send a stream of actual output statuses to
	// the network master.
	SetOutputActuals(ctx context.Context, opts ...grpc.CallOption) (LocalWorkerControlService_SetOutputActualsClient, error)
	// GetSwitchRequests is used to get a stream of switch requests from the network
	// master.
	GetSwitchRequests(ctx context.Context, in *SwitchRequestsOptions, opts ...grpc.CallOption) (LocalWorkerControlService_GetSwitchRequestsClient, error)
	// SetSwitchActuals is used to send a stream of actual switch statuses to
	// the network master.
	SetSwitchActuals(ctx context.Context, opts ...grpc.CallOption) (LocalWorkerControlService_SetSwitchActualsClient, error)
	// GetClock is used to get a stream of switch current time of day from the network
	// master.
	GetClock(ctx context.Context, in *Empty, opts ...grpc.CallOption) (LocalWorkerControlService_GetClockClient, error)
}

type localWorkerControlServiceClient struct {
	cc *grpc.ClientConn
}

func NewLocalWorkerControlServiceClient(cc *grpc.ClientConn) LocalWorkerControlServiceClient {
	return &localWorkerControlServiceClient{cc}
}

func (c *localWorkerControlServiceClient) Ping(ctx context.Context, in *LocalWorkerInfo, opts ...grpc.CallOption) (*Empty, error) {
	out := new(Empty)
	err := c.cc.Invoke(ctx, "/binkynet.v1.LocalWorkerControlService/Ping", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *localWorkerControlServiceClient) GetPowerRequests(ctx context.Context, in *PowerRequestsOptions, opts ...grpc.CallOption) (LocalWorkerControlService_GetPowerRequestsClient, error) {
	stream, err := c.cc.NewStream(ctx, &_LocalWorkerControlService_serviceDesc.Streams[0], "/binkynet.v1.LocalWorkerControlService/GetPowerRequests", opts...)
	if err != nil {
		return nil, err
	}
	x := &localWorkerControlServiceGetPowerRequestsClient{stream}
	if err := x.ClientStream.SendMsg(in); err != nil {
		return nil, err
	}
	if err := x.ClientStream.CloseSend(); err != nil {
		return nil, err
	}
	return x, nil
}

type LocalWorkerControlService_GetPowerRequestsClient interface {
	Recv() (*PowerState, error)
	grpc.ClientStream
}

type localWorkerControlServiceGetPowerRequestsClient struct {
	grpc.ClientStream
}

func (x *localWorkerControlServiceGetPowerRequestsClient) Recv() (*PowerState, error) {
	m := new(PowerState)
	if err := x.ClientStream.RecvMsg(m); err != nil {
		return nil, err
	}
	return m, nil
}

func (c *localWorkerControlServiceClient) SetPowerActuals(ctx context.Context, opts ...grpc.CallOption) (LocalWorkerControlService_SetPowerActualsClient, error) {
	stream, err := c.cc.NewStream(ctx, &_LocalWorkerControlService_serviceDesc.Streams[1], "/binkynet.v1.LocalWorkerControlService/SetPowerActuals", opts...)
	if err != nil {
		return nil, err
	}
	x := &localWorkerControlServiceSetPowerActualsClient{stream}
	return x, nil
}

type LocalWorkerControlService_SetPowerActualsClient interface {
	Send(*PowerState) error
	CloseAndRecv() (*Empty, error)
	grpc.ClientStream
}

type localWorkerControlServiceSetPowerActualsClient struct {
	grpc.ClientStream
}

func (x *localWorkerControlServiceSetPowerActualsClient) Send(m *PowerState) error {
	return x.ClientStream.SendMsg(m)
}

func (x *localWorkerControlServiceSetPowerActualsClient) CloseAndRecv() (*Empty, error) {
	if err := x.ClientStream.CloseSend(); err != nil {
		return nil, err
	}
	m := new(Empty)
	if err := x.ClientStream.RecvMsg(m); err != nil {
		return nil, err
	}
	return m, nil
}

func (c *localWorkerControlServiceClient) GetLocRequests(ctx context.Context, in *LocRequestsOptions, opts ...grpc.CallOption) (LocalWorkerControlService_GetLocRequestsClient, error) {
	stream, err := c.cc.NewStream(ctx, &_LocalWorkerControlService_serviceDesc.Streams[2], "/binkynet.v1.LocalWorkerControlService/GetLocRequests", opts...)
	if err != nil {
		return nil, err
	}
	x := &localWorkerControlServiceGetLocRequestsClient{stream}
	if err := x.ClientStream.SendMsg(in); err != nil {
		return nil, err
	}
	if err := x.ClientStream.CloseSend(); err != nil {
		return nil, err
	}
	return x, nil
}

type LocalWorkerControlService_GetLocRequestsClient interface {
	Recv() (*Loc, error)
	grpc.ClientStream
}

type localWorkerControlServiceGetLocRequestsClient struct {
	grpc.ClientStream
}

func (x *localWorkerControlServiceGetLocRequestsClient) Recv() (*Loc, error) {
	m := new(Loc)
	if err := x.ClientStream.RecvMsg(m); err != nil {
		return nil, err
	}
	return m, nil
}

func (c *localWorkerControlServiceClient) SetLocActuals(ctx context.Context, opts ...grpc.CallOption) (LocalWorkerControlService_SetLocActualsClient, error) {
	stream, err := c.cc.NewStream(ctx, &_LocalWorkerControlService_serviceDesc.Streams[3], "/binkynet.v1.LocalWorkerControlService/SetLocActuals", opts...)
	if err != nil {
		return nil, err
	}
	x := &localWorkerControlServiceSetLocActualsClient{stream}
	return x, nil
}

type LocalWorkerControlService_SetLocActualsClient interface {
	Send(*Loc) error
	CloseAndRecv() (*Empty, error)
	grpc.ClientStream
}

type localWorkerControlServiceSetLocActualsClient struct {
	grpc.ClientStream
}

func (x *localWorkerControlServiceSetLocActualsClient) Send(m *Loc) error {
	return x.ClientStream.SendMsg(m)
}

func (x *localWorkerControlServiceSetLocActualsClient) CloseAndRecv() (*Empty, error) {
	if err := x.ClientStream.CloseSend(); err != nil {
		return nil, err
	}
	m := new(Empty)
	if err := x.ClientStream.RecvMsg(m); err != nil {
		return nil, err
	}
	return m, nil
}

func (c *localWorkerControlServiceClient) SetSensorActuals(ctx context.Context, opts ...grpc.CallOption) (LocalWorkerControlService_SetSensorActualsClient, error) {
	stream, err := c.cc.NewStream(ctx, &_LocalWorkerControlService_serviceDesc.Streams[4], "/binkynet.v1.LocalWorkerControlService/SetSensorActuals", opts...)
	if err != nil {
		return nil, err
	}
	x := &localWorkerControlServiceSetSensorActualsClient{stream}
	return x, nil
}

type LocalWorkerControlService_SetSensorActualsClient interface {
	Send(*Sensor) error
	CloseAndRecv() (*Empty, error)
	grpc.ClientStream
}

type localWorkerControlServiceSetSensorActualsClient struct {
	grpc.ClientStream
}

func (x *localWorkerControlServiceSetSensorActualsClient) Send(m *Sensor) error {
	return x.ClientStream.SendMsg(m)
}

func (x *localWorkerControlServiceSetSensorActualsClient) CloseAndRecv() (*Empty, error) {
	if err := x.ClientStream.CloseSend(); err != nil {
		return nil, err
	}
	m := new(Empty)
	if err := x.ClientStream.RecvMsg(m); err != nil {
		return nil, err
	}
	return m, nil
}

func (c *localWorkerControlServiceClient) GetOutputRequests(ctx context.Context, in *OutputRequestsOptions, opts ...grpc.CallOption) (LocalWorkerControlService_GetOutputRequestsClient, error) {
	stream, err := c.cc.NewStream(ctx, &_LocalWorkerControlService_serviceDesc.Streams[5], "/binkynet.v1.LocalWorkerControlService/GetOutputRequests", opts...)
	if err != nil {
		return nil, err
	}
	x := &localWorkerControlServiceGetOutputRequestsClient{stream}
	if err := x.ClientStream.SendMsg(in); err != nil {
		return nil, err
	}
	if err := x.ClientStream.CloseSend(); err != nil {
		return nil, err
	}
	return x, nil
}

type LocalWorkerControlService_GetOutputRequestsClient interface {
	Recv() (*Output, error)
	grpc.ClientStream
}

type localWorkerControlServiceGetOutputRequestsClient struct {
	grpc.ClientStream
}

func (x *localWorkerControlServiceGetOutputRequestsClient) Recv() (*Output, error) {
	m := new(Output)
	if err := x.ClientStream.RecvMsg(m); err != nil {
		return nil, err
	}
	return m, nil
}

func (c *localWorkerControlServiceClient) SetOutputActuals(ctx context.Context, opts ...grpc.CallOption) (LocalWorkerControlService_SetOutputActualsClient, error) {
	stream, err := c.cc.NewStream(ctx, &_LocalWorkerControlService_serviceDesc.Streams[6], "/binkynet.v1.LocalWorkerControlService/SetOutputActuals", opts...)
	if err != nil {
		return nil, err
	}
	x := &localWorkerControlServiceSetOutputActualsClient{stream}
	return x, nil
}

type LocalWorkerControlService_SetOutputActualsClient interface {
	Send(*Output) error
	CloseAndRecv() (*Empty, error)
	grpc.ClientStream
}

type localWorkerControlServiceSetOutputActualsClient struct {
	grpc.ClientStream
}

func (x *localWorkerControlServiceSetOutputActualsClient) Send(m *Output) error {
	return x.ClientStream.SendMsg(m)
}

func (x *localWorkerControlServiceSetOutputActualsClient) CloseAndRecv() (*Empty, error) {
	if err := x.ClientStream.CloseSend(); err != nil {
		return nil, err
	}
	m := new(Empty)
	if err := x.ClientStream.RecvMsg(m); err != nil {
		return nil, err
	}
	return m, nil
}

func (c *localWorkerControlServiceClient) GetSwitchRequests(ctx context.Context, in *SwitchRequestsOptions, opts ...grpc.CallOption) (LocalWorkerControlService_GetSwitchRequestsClient, error) {
	stream, err := c.cc.NewStream(ctx, &_LocalWorkerControlService_serviceDesc.Streams[7], "/binkynet.v1.LocalWorkerControlService/GetSwitchRequests", opts...)
	if err != nil {
		return nil, err
	}
	x := &localWorkerControlServiceGetSwitchRequestsClient{stream}
	if err := x.ClientStream.SendMsg(in); err != nil {
		return nil, err
	}
	if err := x.ClientStream.CloseSend(); err != nil {
		return nil, err
	}
	return x, nil
}

type LocalWorkerControlService_GetSwitchRequestsClient interface {
	Recv() (*Switch, error)
	grpc.ClientStream
}

type localWorkerControlServiceGetSwitchRequestsClient struct {
	grpc.ClientStream
}

func (x *localWorkerControlServiceGetSwitchRequestsClient) Recv() (*Switch, error) {
	m := new(Switch)
	if err := x.ClientStream.RecvMsg(m); err != nil {
		return nil, err
	}
	return m, nil
}

func (c *localWorkerControlServiceClient) SetSwitchActuals(ctx context.Context, opts ...grpc.CallOption) (LocalWorkerControlService_SetSwitchActualsClient, error) {
	stream, err := c.cc.NewStream(ctx, &_LocalWorkerControlService_serviceDesc.Streams[8], "/binkynet.v1.LocalWorkerControlService/SetSwitchActuals", opts...)
	if err != nil {
		return nil, err
	}
	x := &localWorkerControlServiceSetSwitchActualsClient{stream}
	return x, nil
}

type LocalWorkerControlService_SetSwitchActualsClient interface {
	Send(*Switch) error
	CloseAndRecv() (*Empty, error)
	grpc.ClientStream
}

type localWorkerControlServiceSetSwitchActualsClient struct {
	grpc.ClientStream
}

func (x *localWorkerControlServiceSetSwitchActualsClient) Send(m *Switch) error {
	return x.ClientStream.SendMsg(m)
}

func (x *localWorkerControlServiceSetSwitchActualsClient) CloseAndRecv() (*Empty, error) {
	if err := x.ClientStream.CloseSend(); err != nil {
		return nil, err
	}
	m := new(Empty)
	if err := x.ClientStream.RecvMsg(m); err != nil {
		return nil, err
	}
	return m, nil
}

func (c *localWorkerControlServiceClient) GetClock(ctx context.Context, in *Empty, opts ...grpc.CallOption) (LocalWorkerControlService_GetClockClient, error) {
	stream, err := c.cc.NewStream(ctx, &_LocalWorkerControlService_serviceDesc.Streams[9], "/binkynet.v1.LocalWorkerControlService/GetClock", opts...)
	if err != nil {
		return nil, err
	}
	x := &localWorkerControlServiceGetClockClient{stream}
	if err := x.ClientStream.SendMsg(in); err != nil {
		return nil, err
	}
	if err := x.ClientStream.CloseSend(); err != nil {
		return nil, err
	}
	return x, nil
}

type LocalWorkerControlService_GetClockClient interface {
	Recv() (*Clock, error)
	grpc.ClientStream
}

type localWorkerControlServiceGetClockClient struct {
	grpc.ClientStream
}

func (x *localWorkerControlServiceGetClockClient) Recv() (*Clock, error) {
	m := new(Clock)
	if err := x.ClientStream.RecvMsg(m); err != nil {
		return nil, err
	}
	return m, nil
}

// LocalWorkerControlServiceServer is the server API for LocalWorkerControlService service.
type LocalWorkerControlServiceServer interface {
	// Ping messages are send at regular intervals by local workers
	// as a heartbeat notification, as well as providing information about
	// versions.
	Ping(context.Context, *LocalWorkerInfo) (*Empty, error)
	// GetPowerRequests is used to get a stream of power requests from the network
	// master.
	GetPowerRequests(*PowerRequestsOptions, LocalWorkerControlService_GetPowerRequestsServer) error
	// SetPowerActuals is used to send a stream of actual power statuses to
	// the network master.
	SetPowerActuals(LocalWorkerControlService_SetPowerActualsServer) error
	// GetLocRequests is used to get a stream of loc requests from the network
	// master.
	// Note: Loc.actual field is not set.
	GetLocRequests(*LocRequestsOptions, LocalWorkerControlService_GetLocRequestsServer) error
	// SetLocActuals is used to send a stream of actual loc statuses to
	// the network master.
	// Note: Loc.request field must be set to the latest request.
	SetLocActuals(LocalWorkerControlService_SetLocActualsServer) error
	// SetSensorActuals is used to send a stream of actual sensor statuses to
	// the network master.
	SetSensorActuals(LocalWorkerControlService_SetSensorActualsServer) error
	// GetOutputRequests is used to get a stream of output requests from the network
	// master.
	GetOutputRequests(*OutputRequestsOptions, LocalWorkerControlService_GetOutputRequestsServer) error
	// SetOutputActuals is used to send a stream of actual output statuses to
	// the network master.
	SetOutputActuals(LocalWorkerControlService_SetOutputActualsServer) error
	// GetSwitchRequests is used to get a stream of switch requests from the network
	// master.
	GetSwitchRequests(*SwitchRequestsOptions, LocalWorkerControlService_GetSwitchRequestsServer) error
	// SetSwitchActuals is used to send a stream of actual switch statuses to
	// the network master.
	SetSwitchActuals(LocalWorkerControlService_SetSwitchActualsServer) error
	// GetClock is used to get a stream of switch current time of day from the network
	// master.
	GetClock(*Empty, LocalWorkerControlService_GetClockServer) error
}

// UnimplementedLocalWorkerControlServiceServer can be embedded to have forward compatible implementations.
type UnimplementedLocalWorkerControlServiceServer struct {
}

func (*UnimplementedLocalWorkerControlServiceServer) Ping(ctx context.Context, req *LocalWorkerInfo) (*Empty, error) {
	return nil, status.Errorf(codes.Unimplemented, "method Ping not implemented")
}
func (*UnimplementedLocalWorkerControlServiceServer) GetPowerRequests(req *PowerRequestsOptions, srv LocalWorkerControlService_GetPowerRequestsServer) error {
	return status.Errorf(codes.Unimplemented, "method GetPowerRequests not implemented")
}
func (*UnimplementedLocalWorkerControlServiceServer) SetPowerActuals(srv LocalWorkerControlService_SetPowerActualsServer) error {
	return status.Errorf(codes.Unimplemented, "method SetPowerActuals not implemented")
}
func (*UnimplementedLocalWorkerControlServiceServer) GetLocRequests(req *LocRequestsOptions, srv LocalWorkerControlService_GetLocRequestsServer) error {
	return status.Errorf(codes.Unimplemented, "method GetLocRequests not implemented")
}
func (*UnimplementedLocalWorkerControlServiceServer) SetLocActuals(srv LocalWorkerControlService_SetLocActualsServer) error {
	return status.Errorf(codes.Unimplemented, "method SetLocActuals not implemented")
}
func (*UnimplementedLocalWorkerControlServiceServer) SetSensorActuals(srv LocalWorkerControlService_SetSensorActualsServer) error {
	return status.Errorf(codes.Unimplemented, "method SetSensorActuals not implemented")
}
func (*UnimplementedLocalWorkerControlServiceServer) GetOutputRequests(req *OutputRequestsOptions, srv LocalWorkerControlService_GetOutputRequestsServer) error {
	return status.Errorf(codes.Unimplemented, "method GetOutputRequests not implemented")
}
func (*UnimplementedLocalWorkerControlServiceServer) SetOutputActuals(srv LocalWorkerControlService_SetOutputActualsServer) error {
	return status.Errorf(codes.Unimplemented, "method SetOutputActuals not implemented")
}
func (*UnimplementedLocalWorkerControlServiceServer) GetSwitchRequests(req *SwitchRequestsOptions, srv LocalWorkerControlService_GetSwitchRequestsServer) error {
	return status.Errorf(codes.Unimplemented, "method GetSwitchRequests not implemented")
}
func (*UnimplementedLocalWorkerControlServiceServer) SetSwitchActuals(srv LocalWorkerControlService_SetSwitchActualsServer) error {
	return status.Errorf(codes.Unimplemented, "method SetSwitchActuals not implemented")
}
func (*UnimplementedLocalWorkerControlServiceServer) GetClock(req *Empty, srv LocalWorkerControlService_GetClockServer) error {
	return status.Errorf(codes.Unimplemented, "method GetClock not implemented")
}

func RegisterLocalWorkerControlServiceServer(s *grpc.Server, srv LocalWorkerControlServiceServer) {
	s.RegisterService(&_LocalWorkerControlService_serviceDesc, srv)
}

func _LocalWorkerControlService_Ping_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(LocalWorkerInfo)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(LocalWorkerControlServiceServer).Ping(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/binkynet.v1.LocalWorkerControlService/Ping",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(LocalWorkerControlServiceServer).Ping(ctx, req.(*LocalWorkerInfo))
	}
	return interceptor(ctx, in, info, handler)
}

func _LocalWorkerControlService_GetPowerRequests_Handler(srv interface{}, stream grpc.ServerStream) error {
	m := new(PowerRequestsOptions)
	if err := stream.RecvMsg(m); err != nil {
		return err
	}
	return srv.(LocalWorkerControlServiceServer).GetPowerRequests(m, &localWorkerControlServiceGetPowerRequestsServer{stream})
}

type LocalWorkerControlService_GetPowerRequestsServer interface {
	Send(*PowerState) error
	grpc.ServerStream
}

type localWorkerControlServiceGetPowerRequestsServer struct {
	grpc.ServerStream
}

func (x *localWorkerControlServiceGetPowerRequestsServer) Send(m *PowerState) error {
	return x.ServerStream.SendMsg(m)
}

func _LocalWorkerControlService_SetPowerActuals_Handler(srv interface{}, stream grpc.ServerStream) error {
	return srv.(LocalWorkerControlServiceServer).SetPowerActuals(&localWorkerControlServiceSetPowerActualsServer{stream})
}

type LocalWorkerControlService_SetPowerActualsServer interface {
	SendAndClose(*Empty) error
	Recv() (*PowerState, error)
	grpc.ServerStream
}

type localWorkerControlServiceSetPowerActualsServer struct {
	grpc.ServerStream
}

func (x *localWorkerControlServiceSetPowerActualsServer) SendAndClose(m *Empty) error {
	return x.ServerStream.SendMsg(m)
}

func (x *localWorkerControlServiceSetPowerActualsServer) Recv() (*PowerState, error) {
	m := new(PowerState)
	if err := x.ServerStream.RecvMsg(m); err != nil {
		return nil, err
	}
	return m, nil
}

func _LocalWorkerControlService_GetLocRequests_Handler(srv interface{}, stream grpc.ServerStream) error {
	m := new(LocRequestsOptions)
	if err := stream.RecvMsg(m); err != nil {
		return err
	}
	return srv.(LocalWorkerControlServiceServer).GetLocRequests(m, &localWorkerControlServiceGetLocRequestsServer{stream})
}

type LocalWorkerControlService_GetLocRequestsServer interface {
	Send(*Loc) error
	grpc.ServerStream
}

type localWorkerControlServiceGetLocRequestsServer struct {
	grpc.ServerStream
}

func (x *localWorkerControlServiceGetLocRequestsServer) Send(m *Loc) error {
	return x.ServerStream.SendMsg(m)
}

func _LocalWorkerControlService_SetLocActuals_Handler(srv interface{}, stream grpc.ServerStream) error {
	return srv.(LocalWorkerControlServiceServer).SetLocActuals(&localWorkerControlServiceSetLocActualsServer{stream})
}

type LocalWorkerControlService_SetLocActualsServer interface {
	SendAndClose(*Empty) error
	Recv() (*Loc, error)
	grpc.ServerStream
}

type localWorkerControlServiceSetLocActualsServer struct {
	grpc.ServerStream
}

func (x *localWorkerControlServiceSetLocActualsServer) SendAndClose(m *Empty) error {
	return x.ServerStream.SendMsg(m)
}

func (x *localWorkerControlServiceSetLocActualsServer) Recv() (*Loc, error) {
	m := new(Loc)
	if err := x.ServerStream.RecvMsg(m); err != nil {
		return nil, err
	}
	return m, nil
}

func _LocalWorkerControlService_SetSensorActuals_Handler(srv interface{}, stream grpc.ServerStream) error {
	return srv.(LocalWorkerControlServiceServer).SetSensorActuals(&localWorkerControlServiceSetSensorActualsServer{stream})
}

type LocalWorkerControlService_SetSensorActualsServer interface {
	SendAndClose(*Empty) error
	Recv() (*Sensor, error)
	grpc.ServerStream
}

type localWorkerControlServiceSetSensorActualsServer struct {
	grpc.ServerStream
}

func (x *localWorkerControlServiceSetSensorActualsServer) SendAndClose(m *Empty) error {
	return x.ServerStream.SendMsg(m)
}

func (x *localWorkerControlServiceSetSensorActualsServer) Recv() (*Sensor, error) {
	m := new(Sensor)
	if err := x.ServerStream.RecvMsg(m); err != nil {
		return nil, err
	}
	return m, nil
}

func _LocalWorkerControlService_GetOutputRequests_Handler(srv interface{}, stream grpc.ServerStream) error {
	m := new(OutputRequestsOptions)
	if err := stream.RecvMsg(m); err != nil {
		return err
	}
	return srv.(LocalWorkerControlServiceServer).GetOutputRequests(m, &localWorkerControlServiceGetOutputRequestsServer{stream})
}

type LocalWorkerControlService_GetOutputRequestsServer interface {
	Send(*Output) error
	grpc.ServerStream
}

type localWorkerControlServiceGetOutputRequestsServer struct {
	grpc.ServerStream
}

func (x *localWorkerControlServiceGetOutputRequestsServer) Send(m *Output) error {
	return x.ServerStream.SendMsg(m)
}

func _LocalWorkerControlService_SetOutputActuals_Handler(srv interface{}, stream grpc.ServerStream) error {
	return srv.(LocalWorkerControlServiceServer).SetOutputActuals(&localWorkerControlServiceSetOutputActualsServer{stream})
}

type LocalWorkerControlService_SetOutputActualsServer interface {
	SendAndClose(*Empty) error
	Recv() (*Output, error)
	grpc.ServerStream
}

type localWorkerControlServiceSetOutputActualsServer struct {
	grpc.ServerStream
}

func (x *localWorkerControlServiceSetOutputActualsServer) SendAndClose(m *Empty) error {
	return x.ServerStream.SendMsg(m)
}

func (x *localWorkerControlServiceSetOutputActualsServer) Recv() (*Output, error) {
	m := new(Output)
	if err := x.ServerStream.RecvMsg(m); err != nil {
		return nil, err
	}
	return m, nil
}

func _LocalWorkerControlService_GetSwitchRequests_Handler(srv interface{}, stream grpc.ServerStream) error {
	m := new(SwitchRequestsOptions)
	if err := stream.RecvMsg(m); err != nil {
		return err
	}
	return srv.(LocalWorkerControlServiceServer).GetSwitchRequests(m, &localWorkerControlServiceGetSwitchRequestsServer{stream})
}

type LocalWorkerControlService_GetSwitchRequestsServer interface {
	Send(*Switch) error
	grpc.ServerStream
}

type localWorkerControlServiceGetSwitchRequestsServer struct {
	grpc.ServerStream
}

func (x *localWorkerControlServiceGetSwitchRequestsServer) Send(m *Switch) error {
	return x.ServerStream.SendMsg(m)
}

func _LocalWorkerControlService_SetSwitchActuals_Handler(srv interface{}, stream grpc.ServerStream) error {
	return srv.(LocalWorkerControlServiceServer).SetSwitchActuals(&localWorkerControlServiceSetSwitchActualsServer{stream})
}

type LocalWorkerControlService_SetSwitchActualsServer interface {
	SendAndClose(*Empty) error
	Recv() (*Switch, error)
	grpc.ServerStream
}

type localWorkerControlServiceSetSwitchActualsServer struct {
	grpc.ServerStream
}

func (x *localWorkerControlServiceSetSwitchActualsServer) SendAndClose(m *Empty) error {
	return x.ServerStream.SendMsg(m)
}

func (x *localWorkerControlServiceSetSwitchActualsServer) Recv() (*Switch, error) {
	m := new(Switch)
	if err := x.ServerStream.RecvMsg(m); err != nil {
		return nil, err
	}
	return m, nil
}

func _LocalWorkerControlService_GetClock_Handler(srv interface{}, stream grpc.ServerStream) error {
	m := new(Empty)
	if err := stream.RecvMsg(m); err != nil {
		return err
	}
	return srv.(LocalWorkerControlServiceServer).GetClock(m, &localWorkerControlServiceGetClockServer{stream})
}

type LocalWorkerControlService_GetClockServer interface {
	Send(*Clock) error
	grpc.ServerStream
}

type localWorkerControlServiceGetClockServer struct {
	grpc.ServerStream
}

func (x *localWorkerControlServiceGetClockServer) Send(m *Clock) error {
	return x.ServerStream.SendMsg(m)
}

var _LocalWorkerControlService_serviceDesc = grpc.ServiceDesc{
	ServiceName: "binkynet.v1.LocalWorkerControlService",
	HandlerType: (*LocalWorkerControlServiceServer)(nil),
	Methods: []grpc.MethodDesc{
		{
			MethodName: "Ping",
			Handler:    _LocalWorkerControlService_Ping_Handler,
		},
	},
	Streams: []grpc.StreamDesc{
		{
			StreamName:    "GetPowerRequests",
			Handler:       _LocalWorkerControlService_GetPowerRequests_Handler,
			ServerStreams: true,
		},
		{
			StreamName:    "SetPowerActuals",
			Handler:       _LocalWorkerControlService_SetPowerActuals_Handler,
			ClientStreams: true,
		},
		{
			StreamName:    "GetLocRequests",
			Handler:       _LocalWorkerControlService_GetLocRequests_Handler,
			ServerStreams: true,
		},
		{
			StreamName:    "SetLocActuals",
			Handler:       _LocalWorkerControlService_SetLocActuals_Handler,
			ClientStreams: true,
		},
		{
			StreamName:    "SetSensorActuals",
			Handler:       _LocalWorkerControlService_SetSensorActuals_Handler,
			ClientStreams: true,
		},
		{
			StreamName:    "GetOutputRequests",
			Handler:       _LocalWorkerControlService_GetOutputRequests_Handler,
			ServerStreams: true,
		},
		{
			StreamName:    "SetOutputActuals",
			Handler:       _LocalWorkerControlService_SetOutputActuals_Handler,
			ClientStreams: true,
		},
		{
			StreamName:    "GetSwitchRequests",
			Handler:       _LocalWorkerControlService_GetSwitchRequests_Handler,
			ServerStreams: true,
		},
		{
			StreamName:    "SetSwitchActuals",
			Handler:       _LocalWorkerControlService_SetSwitchActuals_Handler,
			ClientStreams: true,
		},
		{
			StreamName:    "GetClock",
			Handler:       _LocalWorkerControlService_GetClock_Handler,
			ServerStreams: true,
		},
	},
	Metadata: "localworker.proto",
}
