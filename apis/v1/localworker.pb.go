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
	// 285 bytes of a gzipped FileDescriptorProto
	0x1f, 0x8b, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0xff, 0xe2, 0x12, 0xcc, 0xc9, 0x4f, 0x4e,
	0xcc, 0x29, 0xcf, 0x2f, 0xca, 0x4e, 0x2d, 0xd2, 0x2b, 0x28, 0xca, 0x2f, 0xc9, 0x17, 0xe2, 0x4e,
	0xca, 0xcc, 0xcb, 0xae, 0xcc, 0x4b, 0x2d, 0xd1, 0x2b, 0x33, 0x94, 0xe2, 0x2e, 0xa9, 0x2c, 0x48,
	0x2d, 0x86, 0xc8, 0x18, 0xdd, 0x67, 0xe2, 0x92, 0xf4, 0x01, 0xa9, 0x0f, 0x07, 0xab, 0x77, 0xce,
	0xcf, 0x2b, 0x29, 0xca, 0xcf, 0x09, 0x4e, 0x2d, 0x2a, 0xcb, 0x4c, 0x4e, 0x15, 0xb2, 0xe0, 0x62,
	0x09, 0xc8, 0xcc, 0x4b, 0x17, 0x92, 0xd1, 0x43, 0x32, 0x40, 0x0f, 0x49, 0xbd, 0x67, 0x5e, 0x5a,
	0xbe, 0x94, 0x10, 0x8a, 0xac, 0x6b, 0x6e, 0x41, 0x49, 0xa5, 0x90, 0x37, 0x97, 0x80, 0x7b, 0x6a,
	0x49, 0x40, 0x7e, 0x79, 0x6a, 0x51, 0x50, 0x6a, 0x61, 0x69, 0x6a, 0x71, 0x49, 0xb1, 0x90, 0x22,
	0x8a, 0x3a, 0x14, 0x39, 0xff, 0x82, 0x92, 0xcc, 0xfc, 0xbc, 0x62, 0x34, 0xa3, 0xc0, 0x4a, 0x0c,
	0x18, 0x85, 0xac, 0xb9, 0xf8, 0x83, 0xa1, 0x86, 0x39, 0x26, 0x97, 0x94, 0x26, 0xe6, 0x14, 0x0b,
	0x61, 0x51, 0x88, 0xcd, 0x1d, 0x1a, 0x8c, 0x42, 0xae, 0x5c, 0x7c, 0xee, 0xa9, 0x25, 0x3e, 0xf9,
	0xc9, 0x70, 0x77, 0xc8, 0xa3, 0xfb, 0x06, 0xdd, 0x15, 0x02, 0xe8, 0x0a, 0x0c, 0x18, 0x85, 0xcc,
	0xb9, 0x78, 0x83, 0xc1, 0xc6, 0xc0, 0x5c, 0x80, 0xa1, 0x08, 0xbb, 0xfd, 0x4e, 0x9e, 0x27, 0x1e,
	0xc9, 0x31, 0x5e, 0x78, 0x24, 0xc7, 0xf8, 0xe0, 0x91, 0x1c, 0xe3, 0x8c, 0xc7, 0x72, 0x0c, 0x51,
	0x2a, 0xe9, 0x99, 0x25, 0x19, 0xa5, 0x49, 0x7a, 0xc9, 0xf9, 0xb9, 0xfa, 0x30, 0x1d, 0xfa, 0x4e,
	0x20, 0x86, 0x5f, 0x6a, 0x89, 0x7e, 0x62, 0x41, 0x66, 0xb1, 0x7e, 0x99, 0xe1, 0x2a, 0x26, 0x01,
	0x98, 0x90, 0x9e, 0x63, 0x41, 0x66, 0xb1, 0x5e, 0x98, 0x61, 0x12, 0x1b, 0x38, 0xce, 0x8c, 0x01,
	0x01, 0x00, 0x00, 0xff, 0xff, 0xc9, 0x3e, 0xe9, 0xfe, 0xe2, 0x01, 0x00, 0x00,
}

// Reference imports to suppress errors if they are not otherwise used.
var _ context.Context
var _ grpc.ClientConn

// This is a compile-time assertion to ensure that this generated file
// is compatible with the grpc package it is being compiled against.
const _ = grpc.SupportPackageIsVersion4

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
	GetLocRequests(ctx context.Context, in *LocRequestsOptions, opts ...grpc.CallOption) (LocalWorkerControlService_GetLocRequestsClient, error)
	// SetLocActuals is used to send a stream of actual loc statuses to
	// the network master.
	SetLocActuals(ctx context.Context, opts ...grpc.CallOption) (LocalWorkerControlService_SetLocActualsClient, error)
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
	Recv() (*Power, error)
	grpc.ClientStream
}

type localWorkerControlServiceGetPowerRequestsClient struct {
	grpc.ClientStream
}

func (x *localWorkerControlServiceGetPowerRequestsClient) Recv() (*Power, error) {
	m := new(Power)
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
	Send(*Power) error
	CloseAndRecv() (*Empty, error)
	grpc.ClientStream
}

type localWorkerControlServiceSetPowerActualsClient struct {
	grpc.ClientStream
}

func (x *localWorkerControlServiceSetPowerActualsClient) Send(m *Power) error {
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
	GetLocRequests(*LocRequestsOptions, LocalWorkerControlService_GetLocRequestsServer) error
	// SetLocActuals is used to send a stream of actual loc statuses to
	// the network master.
	SetLocActuals(LocalWorkerControlService_SetLocActualsServer) error
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
	Send(*Power) error
	grpc.ServerStream
}

type localWorkerControlServiceGetPowerRequestsServer struct {
	grpc.ServerStream
}

func (x *localWorkerControlServiceGetPowerRequestsServer) Send(m *Power) error {
	return x.ServerStream.SendMsg(m)
}

func _LocalWorkerControlService_SetPowerActuals_Handler(srv interface{}, stream grpc.ServerStream) error {
	return srv.(LocalWorkerControlServiceServer).SetPowerActuals(&localWorkerControlServiceSetPowerActualsServer{stream})
}

type LocalWorkerControlService_SetPowerActualsServer interface {
	SendAndClose(*Empty) error
	Recv() (*Power, error)
	grpc.ServerStream
}

type localWorkerControlServiceSetPowerActualsServer struct {
	grpc.ServerStream
}

func (x *localWorkerControlServiceSetPowerActualsServer) SendAndClose(m *Empty) error {
	return x.ServerStream.SendMsg(m)
}

func (x *localWorkerControlServiceSetPowerActualsServer) Recv() (*Power, error) {
	m := new(Power)
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
	},
	Metadata: "localworker.proto",
}
