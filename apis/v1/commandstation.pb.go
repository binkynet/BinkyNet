// Code generated by protoc-gen-gogo. DO NOT EDIT.
// source: commandstation.proto

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

func init() { proto.RegisterFile("commandstation.proto", fileDescriptor_2383d9124325f33a) }

var fileDescriptor_2383d9124325f33a = []byte{
	// 229 bytes of a gzipped FileDescriptorProto
	0x1f, 0x8b, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0xff, 0xe2, 0x12, 0x49, 0xce, 0xcf, 0xcd,
	0x4d, 0xcc, 0x4b, 0x29, 0x2e, 0x49, 0x2c, 0xc9, 0xcc, 0xcf, 0xd3, 0x2b, 0x28, 0xca, 0x2f, 0xc9,
	0x17, 0xe2, 0x4e, 0xca, 0xcc, 0xcb, 0xae, 0xcc, 0x4b, 0x2d, 0xd1, 0x2b, 0x33, 0x94, 0xe2, 0x2e,
	0xa9, 0x2c, 0x48, 0x2d, 0x86, 0xc8, 0x18, 0x1d, 0x64, 0xe4, 0x12, 0x75, 0x86, 0x68, 0x09, 0x86,
	0x68, 0x09, 0x4e, 0x2d, 0x2a, 0xcb, 0x4c, 0x4e, 0x15, 0xb2, 0xe3, 0x62, 0x77, 0x4f, 0x2d, 0xf1,
	0xcc, 0x4b, 0xcb, 0x17, 0x12, 0xd2, 0x43, 0xd2, 0xaf, 0xe7, 0x9a, 0x5b, 0x50, 0x52, 0x29, 0x25,
	0x8f, 0x22, 0x86, 0x6a, 0x04, 0x58, 0x93, 0x05, 0x17, 0x6b, 0x40, 0x7e, 0x79, 0x6a, 0x91, 0x90,
	0x38, 0x8a, 0x4a, 0xb0, 0x18, 0x48, 0x5d, 0xaa, 0x94, 0x10, 0xa6, 0x84, 0x06, 0xa3, 0x01, 0xa3,
	0x90, 0x1e, 0x17, 0x8b, 0x4f, 0x7e, 0x72, 0xb1, 0x90, 0x00, 0x8a, 0xbc, 0x4f, 0x7e, 0xb2, 0x14,
	0x86, 0x08, 0x48, 0xbd, 0x93, 0xe7, 0x89, 0x47, 0x72, 0x8c, 0x17, 0x1e, 0xc9, 0x31, 0x3e, 0x78,
	0x24, 0xc7, 0x38, 0xe3, 0xb1, 0x1c, 0x43, 0x94, 0x4a, 0x7a, 0x66, 0x49, 0x46, 0x69, 0x92, 0x5e,
	0x72, 0x7e, 0xae, 0x3e, 0x4c, 0x87, 0xbe, 0x13, 0x88, 0xe1, 0x97, 0x5a, 0xa2, 0x9f, 0x58, 0x90,
	0x59, 0xac, 0x5f, 0x66, 0xb8, 0x8a, 0x49, 0x00, 0x26, 0xa4, 0xe7, 0x58, 0x90, 0x59, 0xac, 0x17,
	0x66, 0x98, 0xc4, 0x06, 0x0e, 0x15, 0x63, 0x40, 0x00, 0x00, 0x00, 0xff, 0xff, 0x66, 0x99, 0x87,
	0x81, 0x47, 0x01, 0x00, 0x00,
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
	// Power is used to send power requests and receive power request & actual changes.
	Power(ctx context.Context, opts ...grpc.CallOption) (CommandStationService_PowerClient, error)
	// Locs is used to control locs and get changes in loc requests & actual state back.
	// Note: Loc.actual on incoming objects is ignored.
	Locs(ctx context.Context, opts ...grpc.CallOption) (CommandStationService_LocsClient, error)
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

func (c *commandStationServiceClient) Power(ctx context.Context, opts ...grpc.CallOption) (CommandStationService_PowerClient, error) {
	stream, err := c.cc.NewStream(ctx, &_CommandStationService_serviceDesc.Streams[0], "/binkynet.v1.CommandStationService/Power", opts...)
	if err != nil {
		return nil, err
	}
	x := &commandStationServicePowerClient{stream}
	return x, nil
}

type CommandStationService_PowerClient interface {
	Send(*PowerState) error
	Recv() (*Power, error)
	grpc.ClientStream
}

type commandStationServicePowerClient struct {
	grpc.ClientStream
}

func (x *commandStationServicePowerClient) Send(m *PowerState) error {
	return x.ClientStream.SendMsg(m)
}

func (x *commandStationServicePowerClient) Recv() (*Power, error) {
	m := new(Power)
	if err := x.ClientStream.RecvMsg(m); err != nil {
		return nil, err
	}
	return m, nil
}

func (c *commandStationServiceClient) Locs(ctx context.Context, opts ...grpc.CallOption) (CommandStationService_LocsClient, error) {
	stream, err := c.cc.NewStream(ctx, &_CommandStationService_serviceDesc.Streams[1], "/binkynet.v1.CommandStationService/Locs", opts...)
	if err != nil {
		return nil, err
	}
	x := &commandStationServiceLocsClient{stream}
	return x, nil
}

type CommandStationService_LocsClient interface {
	Send(*Loc) error
	Recv() (*Loc, error)
	grpc.ClientStream
}

type commandStationServiceLocsClient struct {
	grpc.ClientStream
}

func (x *commandStationServiceLocsClient) Send(m *Loc) error {
	return x.ClientStream.SendMsg(m)
}

func (x *commandStationServiceLocsClient) Recv() (*Loc, error) {
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
	// Power is used to send power requests and receive power request & actual changes.
	Power(CommandStationService_PowerServer) error
	// Locs is used to control locs and get changes in loc requests & actual state back.
	// Note: Loc.actual on incoming objects is ignored.
	Locs(CommandStationService_LocsServer) error
}

// UnimplementedCommandStationServiceServer can be embedded to have forward compatible implementations.
type UnimplementedCommandStationServiceServer struct {
}

func (*UnimplementedCommandStationServiceServer) GetInfo(ctx context.Context, req *Empty) (*CommandStationInfo, error) {
	return nil, status.Errorf(codes.Unimplemented, "method GetInfo not implemented")
}
func (*UnimplementedCommandStationServiceServer) Power(srv CommandStationService_PowerServer) error {
	return status.Errorf(codes.Unimplemented, "method Power not implemented")
}
func (*UnimplementedCommandStationServiceServer) Locs(srv CommandStationService_LocsServer) error {
	return status.Errorf(codes.Unimplemented, "method Locs not implemented")
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

func _CommandStationService_Power_Handler(srv interface{}, stream grpc.ServerStream) error {
	return srv.(CommandStationServiceServer).Power(&commandStationServicePowerServer{stream})
}

type CommandStationService_PowerServer interface {
	Send(*Power) error
	Recv() (*PowerState, error)
	grpc.ServerStream
}

type commandStationServicePowerServer struct {
	grpc.ServerStream
}

func (x *commandStationServicePowerServer) Send(m *Power) error {
	return x.ServerStream.SendMsg(m)
}

func (x *commandStationServicePowerServer) Recv() (*PowerState, error) {
	m := new(PowerState)
	if err := x.ServerStream.RecvMsg(m); err != nil {
		return nil, err
	}
	return m, nil
}

func _CommandStationService_Locs_Handler(srv interface{}, stream grpc.ServerStream) error {
	return srv.(CommandStationServiceServer).Locs(&commandStationServiceLocsServer{stream})
}

type CommandStationService_LocsServer interface {
	Send(*Loc) error
	Recv() (*Loc, error)
	grpc.ServerStream
}

type commandStationServiceLocsServer struct {
	grpc.ServerStream
}

func (x *commandStationServiceLocsServer) Send(m *Loc) error {
	return x.ServerStream.SendMsg(m)
}

func (x *commandStationServiceLocsServer) Recv() (*Loc, error) {
	m := new(Loc)
	if err := x.ServerStream.RecvMsg(m); err != nil {
		return nil, err
	}
	return m, nil
}

var _CommandStationService_serviceDesc = grpc.ServiceDesc{
	ServiceName: "binkynet.v1.CommandStationService",
	HandlerType: (*CommandStationServiceServer)(nil),
	Methods: []grpc.MethodDesc{
		{
			MethodName: "GetInfo",
			Handler:    _CommandStationService_GetInfo_Handler,
		},
	},
	Streams: []grpc.StreamDesc{
		{
			StreamName:    "Power",
			Handler:       _CommandStationService_Power_Handler,
			ServerStreams: true,
			ClientStreams: true,
		},
		{
			StreamName:    "Locs",
			Handler:       _CommandStationService_Locs_Handler,
			ServerStreams: true,
			ClientStreams: true,
		},
	},
	Metadata: "commandstation.proto",
}
