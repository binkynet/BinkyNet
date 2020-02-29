// Code generated by protoc-gen-gogo. DO NOT EDIT.
// source: commandstation.proto

package v1

import (
	context "context"
	fmt "fmt"
	proto "github.com/golang/protobuf/proto"
	grpc "google.golang.org/grpc"
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
const _ = proto.ProtoPackageIsVersion2 // please upgrade the proto package

func init() { proto.RegisterFile("commandstation.proto", fileDescriptor_2383d9124325f33a) }

var fileDescriptor_2383d9124325f33a = []byte{
	// 255 bytes of a gzipped FileDescriptorProto
	0x1f, 0x8b, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0xff, 0xe2, 0x12, 0x49, 0xce, 0xcf, 0xcd,
	0x4d, 0xcc, 0x4b, 0x29, 0x2e, 0x49, 0x2c, 0xc9, 0xcc, 0xcf, 0xd3, 0x2b, 0x28, 0xca, 0x2f, 0xc9,
	0x17, 0xe2, 0x4e, 0xca, 0xcc, 0xcb, 0xae, 0xcc, 0x4b, 0x2d, 0xd1, 0x2b, 0x33, 0x94, 0xe2, 0x2e,
	0xa9, 0x2c, 0x48, 0x2d, 0x86, 0xc8, 0x18, 0x6d, 0x64, 0xe2, 0x12, 0x75, 0x86, 0x68, 0x09, 0x86,
	0x68, 0x09, 0x4e, 0x2d, 0x2a, 0xcb, 0x4c, 0x4e, 0x15, 0xb2, 0xe3, 0x62, 0x77, 0x4f, 0x2d, 0xf1,
	0xcc, 0x4b, 0xcb, 0x17, 0x12, 0xd2, 0x43, 0xd2, 0xaf, 0xe7, 0x9a, 0x5b, 0x50, 0x52, 0x29, 0x25,
	0x8f, 0x22, 0x86, 0x6a, 0x04, 0x58, 0x93, 0x11, 0x17, 0x47, 0x70, 0x6a, 0x49, 0x40, 0x7e, 0x79,
	0x6a, 0x11, 0x9a, 0x01, 0x60, 0x31, 0x29, 0x2c, 0x86, 0x0a, 0x59, 0x73, 0xf1, 0xbb, 0x43, 0xf5,
	0x38, 0x26, 0x97, 0x94, 0x26, 0xe6, 0x14, 0x63, 0xb5, 0x1b, 0x8b, 0x71, 0x06, 0x8c, 0x42, 0x7a,
	0x5c, 0x6c, 0xc1, 0xa9, 0x25, 0x3e, 0xf9, 0xc9, 0x42, 0x02, 0x28, 0xf2, 0x3e, 0xf9, 0xc9, 0x58,
	0x2d, 0x33, 0xe7, 0xe2, 0x75, 0x07, 0xab, 0xc7, 0x67, 0x15, 0x86, 0x51, 0x06, 0x8c, 0x4e, 0x9e,
	0x27, 0x1e, 0xc9, 0x31, 0x5e, 0x78, 0x24, 0xc7, 0xf8, 0xe0, 0x91, 0x1c, 0xe3, 0x8c, 0xc7, 0x72,
	0x0c, 0x51, 0x2a, 0xe9, 0x99, 0x25, 0x19, 0xa5, 0x49, 0x7a, 0xc9, 0xf9, 0xb9, 0xfa, 0x30, 0xf5,
	0xfa, 0x4e, 0x20, 0x86, 0x5f, 0x6a, 0x89, 0x7e, 0x62, 0x41, 0x66, 0xb1, 0x7e, 0x99, 0xe1, 0x2a,
	0x26, 0x01, 0x98, 0x90, 0x9e, 0x63, 0x41, 0x66, 0xb1, 0x5e, 0x98, 0x61, 0x12, 0x1b, 0x38, 0x16,
	0x8c, 0x01, 0x01, 0x00, 0x00, 0xff, 0xff, 0x98, 0xe9, 0x7f, 0xb3, 0xb7, 0x01, 0x00, 0x00,
}

// Reference imports to suppress errors if they are not otherwise used.
var _ context.Context
var _ grpc.ClientConn

// This is a compile-time assertion to ensure that this generated file
// is compatible with the grpc package it is being compiled against.
const _ = grpc.SupportPackageIsVersion4

// CommandStationServiceClient is the client API for CommandStationService service.
//
// For semantics around ctx use and closing/ending streaming RPCs, please refer to https://godoc.org/google.golang.org/grpc#ClientConn.NewStream.
type CommandStationServiceClient interface {
	// GetInfo returns information from the command station.
	GetInfo(ctx context.Context, in *Empty, opts ...grpc.CallOption) (*CommandStationInfo, error)
	// SetPower is used to set the power status of the command station.
	SetPower(ctx context.Context, in *Power, opts ...grpc.CallOption) (*Empty, error)
	// GetPowerActuals is used to request a stream of actual power statuses from
	// the command station to the client.
	GetPowerActuals(ctx context.Context, in *Empty, opts ...grpc.CallOption) (CommandStationService_GetPowerActualsClient, error)
	// SetLoc is used to request a loc status from the client to the command station.
	SetLoc(ctx context.Context, in *Loc, opts ...grpc.CallOption) (*Empty, error)
	// GetLocActuals is used to send a stream of actual loc statuses from
	// the command station to the client.
	GetLocActuals(ctx context.Context, in *Empty, opts ...grpc.CallOption) (CommandStationService_GetLocActualsClient, error)
}

type commandStationServiceClient struct {
	cc *grpc.ClientConn
}

func NewCommandStationServiceClient(cc *grpc.ClientConn) CommandStationServiceClient {
	return &commandStationServiceClient{cc}
}

func (c *commandStationServiceClient) GetInfo(ctx context.Context, in *Empty, opts ...grpc.CallOption) (*CommandStationInfo, error) {
	out := new(CommandStationInfo)
	err := c.cc.Invoke(ctx, "/binkynet.v1.CommandStationService/GetInfo", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *commandStationServiceClient) SetPower(ctx context.Context, in *Power, opts ...grpc.CallOption) (*Empty, error) {
	out := new(Empty)
	err := c.cc.Invoke(ctx, "/binkynet.v1.CommandStationService/SetPower", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *commandStationServiceClient) GetPowerActuals(ctx context.Context, in *Empty, opts ...grpc.CallOption) (CommandStationService_GetPowerActualsClient, error) {
	stream, err := c.cc.NewStream(ctx, &_CommandStationService_serviceDesc.Streams[0], "/binkynet.v1.CommandStationService/GetPowerActuals", opts...)
	if err != nil {
		return nil, err
	}
	x := &commandStationServiceGetPowerActualsClient{stream}
	if err := x.ClientStream.SendMsg(in); err != nil {
		return nil, err
	}
	if err := x.ClientStream.CloseSend(); err != nil {
		return nil, err
	}
	return x, nil
}

type CommandStationService_GetPowerActualsClient interface {
	Recv() (*Power, error)
	grpc.ClientStream
}

type commandStationServiceGetPowerActualsClient struct {
	grpc.ClientStream
}

func (x *commandStationServiceGetPowerActualsClient) Recv() (*Power, error) {
	m := new(Power)
	if err := x.ClientStream.RecvMsg(m); err != nil {
		return nil, err
	}
	return m, nil
}

func (c *commandStationServiceClient) SetLoc(ctx context.Context, in *Loc, opts ...grpc.CallOption) (*Empty, error) {
	out := new(Empty)
	err := c.cc.Invoke(ctx, "/binkynet.v1.CommandStationService/SetLoc", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *commandStationServiceClient) GetLocActuals(ctx context.Context, in *Empty, opts ...grpc.CallOption) (CommandStationService_GetLocActualsClient, error) {
	stream, err := c.cc.NewStream(ctx, &_CommandStationService_serviceDesc.Streams[1], "/binkynet.v1.CommandStationService/GetLocActuals", opts...)
	if err != nil {
		return nil, err
	}
	x := &commandStationServiceGetLocActualsClient{stream}
	if err := x.ClientStream.SendMsg(in); err != nil {
		return nil, err
	}
	if err := x.ClientStream.CloseSend(); err != nil {
		return nil, err
	}
	return x, nil
}

type CommandStationService_GetLocActualsClient interface {
	Recv() (*Loc, error)
	grpc.ClientStream
}

type commandStationServiceGetLocActualsClient struct {
	grpc.ClientStream
}

func (x *commandStationServiceGetLocActualsClient) Recv() (*Loc, error) {
	m := new(Loc)
	if err := x.ClientStream.RecvMsg(m); err != nil {
		return nil, err
	}
	return m, nil
}

// CommandStationServiceServer is the server API for CommandStationService service.
type CommandStationServiceServer interface {
	// GetInfo returns information from the command station.
	GetInfo(context.Context, *Empty) (*CommandStationInfo, error)
	// SetPower is used to set the power status of the command station.
	SetPower(context.Context, *Power) (*Empty, error)
	// GetPowerActuals is used to request a stream of actual power statuses from
	// the command station to the client.
	GetPowerActuals(*Empty, CommandStationService_GetPowerActualsServer) error
	// SetLoc is used to request a loc status from the client to the command station.
	SetLoc(context.Context, *Loc) (*Empty, error)
	// GetLocActuals is used to send a stream of actual loc statuses from
	// the command station to the client.
	GetLocActuals(*Empty, CommandStationService_GetLocActualsServer) error
}

func RegisterCommandStationServiceServer(s *grpc.Server, srv CommandStationServiceServer) {
	s.RegisterService(&_CommandStationService_serviceDesc, srv)
}

func _CommandStationService_GetInfo_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(Empty)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(CommandStationServiceServer).GetInfo(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/binkynet.v1.CommandStationService/GetInfo",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(CommandStationServiceServer).GetInfo(ctx, req.(*Empty))
	}
	return interceptor(ctx, in, info, handler)
}

func _CommandStationService_SetPower_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(Power)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(CommandStationServiceServer).SetPower(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/binkynet.v1.CommandStationService/SetPower",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(CommandStationServiceServer).SetPower(ctx, req.(*Power))
	}
	return interceptor(ctx, in, info, handler)
}

func _CommandStationService_GetPowerActuals_Handler(srv interface{}, stream grpc.ServerStream) error {
	m := new(Empty)
	if err := stream.RecvMsg(m); err != nil {
		return err
	}
	return srv.(CommandStationServiceServer).GetPowerActuals(m, &commandStationServiceGetPowerActualsServer{stream})
}

type CommandStationService_GetPowerActualsServer interface {
	Send(*Power) error
	grpc.ServerStream
}

type commandStationServiceGetPowerActualsServer struct {
	grpc.ServerStream
}

func (x *commandStationServiceGetPowerActualsServer) Send(m *Power) error {
	return x.ServerStream.SendMsg(m)
}

func _CommandStationService_SetLoc_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(Loc)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(CommandStationServiceServer).SetLoc(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/binkynet.v1.CommandStationService/SetLoc",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(CommandStationServiceServer).SetLoc(ctx, req.(*Loc))
	}
	return interceptor(ctx, in, info, handler)
}

func _CommandStationService_GetLocActuals_Handler(srv interface{}, stream grpc.ServerStream) error {
	m := new(Empty)
	if err := stream.RecvMsg(m); err != nil {
		return err
	}
	return srv.(CommandStationServiceServer).GetLocActuals(m, &commandStationServiceGetLocActualsServer{stream})
}

type CommandStationService_GetLocActualsServer interface {
	Send(*Loc) error
	grpc.ServerStream
}

type commandStationServiceGetLocActualsServer struct {
	grpc.ServerStream
}

func (x *commandStationServiceGetLocActualsServer) Send(m *Loc) error {
	return x.ServerStream.SendMsg(m)
}

var _CommandStationService_serviceDesc = grpc.ServiceDesc{
	ServiceName: "binkynet.v1.CommandStationService",
	HandlerType: (*CommandStationServiceServer)(nil),
	Methods: []grpc.MethodDesc{
		{
			MethodName: "GetInfo",
			Handler:    _CommandStationService_GetInfo_Handler,
		},
		{
			MethodName: "SetPower",
			Handler:    _CommandStationService_SetPower_Handler,
		},
		{
			MethodName: "SetLoc",
			Handler:    _CommandStationService_SetLoc_Handler,
		},
	},
	Streams: []grpc.StreamDesc{
		{
			StreamName:    "GetPowerActuals",
			Handler:       _CommandStationService_GetPowerActuals_Handler,
			ServerStreams: true,
		},
		{
			StreamName:    "GetLocActuals",
			Handler:       _CommandStationService_GetLocActuals_Handler,
			ServerStreams: true,
		},
	},
	Metadata: "commandstation.proto",
}
