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
	0x1f, 0x8b, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0xff, 0x7c, 0x91, 0xcd, 0x4a, 0xf4, 0x30,
	0x14, 0x86, 0xbf, 0x7e, 0xa2, 0x8b, 0x0c, 0x62, 0x8d, 0x0b, 0x71, 0x90, 0xae, 0x5c, 0xa7, 0x54,
	0x71, 0x25, 0x08, 0x0e, 0xe3, 0x42, 0xa8, 0x3f, 0x4c, 0x40, 0xc1, 0x5d, 0x1b, 0x0e, 0x4e, 0x98,
	0x9f, 0xc4, 0xe4, 0xb4, 0xa5, 0x17, 0xe0, 0x3d, 0x78, 0x0d, 0x5e, 0x89, 0x4b, 0x2f, 0x41, 0xea,
	0x8d, 0x48, 0x5b, 0x02, 0x56, 0x82, 0xbb, 0xf0, 0xbe, 0xcf, 0xf3, 0x2e, 0x72, 0xc8, 0xee, 0x52,
	0x89, 0x6c, 0x59, 0x29, 0xb3, 0x00, 0xc3, 0xb4, 0x51, 0xa8, 0xe8, 0x28, 0x97, 0xeb, 0x45, 0xbd,
	0x06, 0x64, 0x65, 0x32, 0x1e, 0x61, 0xad, 0xc1, 0xf6, 0xcd, 0xf1, 0xcb, 0x06, 0xa1, 0x69, 0xcb,
	0x3f, 0x74, 0x3c, 0x07, 0x53, 0x4a, 0x01, 0x34, 0x26, 0x9b, 0x33, 0xb0, 0x80, 0x94, 0xb2, 0x1f,
	0x2a, 0xbb, 0x5c, 0x69, 0xac, 0xc7, 0x9e, 0x8c, 0x9e, 0x92, 0x6d, 0x0e, 0x98, 0x2a, 0x31, 0x83,
	0xe7, 0x02, 0x2c, 0xd2, 0x70, 0x00, 0xa5, 0x4a, 0x78, 0xb5, 0x73, 0xb2, 0xc3, 0x01, 0xef, 0x54,
	0x05, 0xc6, 0x89, 0xfb, 0x03, 0xac, 0xab, 0x38, 0x66, 0x08, 0x5e, 0xff, 0x8c, 0x84, 0x1c, 0xf0,
	0xb6, 0x40, 0x5d, 0xa0, 0x1b, 0xd8, 0x1b, 0x70, 0x7d, 0xf7, 0x87, 0xcc, 0x2b, 0x89, 0x62, 0xee,
	0x97, 0xfb, 0xce, 0x2b, 0x5f, 0x93, 0x03, 0x0e, 0x38, 0x85, 0xf6, 0xbb, 0xa6, 0xd2, 0x0a, 0x55,
	0x82, 0xa9, 0xdd, 0xca, 0xe1, 0x40, 0xf8, 0x05, 0xf9, 0xe6, 0x26, 0x57, 0xef, 0x4d, 0x14, 0x7c,
	0x34, 0x51, 0xf0, 0xd9, 0x44, 0xc1, 0xeb, 0x57, 0xf4, 0xef, 0xf1, 0xe8, 0x49, 0xe2, 0xbc, 0xc8,
	0x99, 0x50, 0xab, 0xd8, 0xf1, 0xf1, 0xa4, 0x7d, 0xdc, 0x00, 0xc6, 0x99, 0x96, 0x36, 0x2e, 0x93,
	0xb7, 0xff, 0xa1, 0x8b, 0xd8, 0x85, 0x96, 0x96, 0xdd, 0x27, 0xf9, 0x56, 0x77, 0xd9, 0x93, 0xef,
	0x00, 0x00, 0x00, 0xff, 0xff, 0x8c, 0x32, 0xc2, 0xaa, 0x08, 0x02, 0x00, 0x00,
}

// Reference imports to suppress errors if they are not otherwise used.
var _ context.Context
var _ grpc.ClientConn

// This is a compile-time assertion to ensure that this generated file
// is compatible with the grpc package it is being compiled against.
const _ = grpc.SupportPackageIsVersion4

// LocalWorkerServiceClient is the client API for LocalWorkerService service.
//
// For semantics around ctx use and closing/ending streaming RPCs, please refer to https://godoc.org/google.golang.org/grpc#ClientConn.NewStream.
type LocalWorkerServiceClient interface {
	// Reset the local worker
	Reset(ctx context.Context, in *Empty, opts ...grpc.CallOption) (*Empty, error)
	// Set a requested loc state
	SetLocRequest(ctx context.Context, in *Loc, opts ...grpc.CallOption) (*Empty, error)
	// Set the requested power state
	SetPowerRequest(ctx context.Context, in *PowerState, opts ...grpc.CallOption) (*Empty, error)
	// Set a requested output state
	SetOutputRequest(ctx context.Context, in *Output, opts ...grpc.CallOption) (*Empty, error)
	// Set a requested switch state
	SetSwitchRequest(ctx context.Context, in *Switch, opts ...grpc.CallOption) (*Empty, error)
	// Set a requested device discovery state
	SetDeviceDiscoveryRequest(ctx context.Context, in *DeviceDiscovery, opts ...grpc.CallOption) (*Empty, error)
}

type localWorkerServiceClient struct {
	cc *grpc.ClientConn
}

func NewLocalWorkerServiceClient(cc *grpc.ClientConn) LocalWorkerServiceClient {
	return &localWorkerServiceClient{cc}
}

func (c *localWorkerServiceClient) Reset(ctx context.Context, in *Empty, opts ...grpc.CallOption) (*Empty, error) {
	out := new(Empty)
	err := c.cc.Invoke(ctx, "/binkynet.v1.LocalWorkerService/Reset", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *localWorkerServiceClient) SetLocRequest(ctx context.Context, in *Loc, opts ...grpc.CallOption) (*Empty, error) {
	out := new(Empty)
	err := c.cc.Invoke(ctx, "/binkynet.v1.LocalWorkerService/SetLocRequest", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *localWorkerServiceClient) SetPowerRequest(ctx context.Context, in *PowerState, opts ...grpc.CallOption) (*Empty, error) {
	out := new(Empty)
	err := c.cc.Invoke(ctx, "/binkynet.v1.LocalWorkerService/SetPowerRequest", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *localWorkerServiceClient) SetOutputRequest(ctx context.Context, in *Output, opts ...grpc.CallOption) (*Empty, error) {
	out := new(Empty)
	err := c.cc.Invoke(ctx, "/binkynet.v1.LocalWorkerService/SetOutputRequest", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *localWorkerServiceClient) SetSwitchRequest(ctx context.Context, in *Switch, opts ...grpc.CallOption) (*Empty, error) {
	out := new(Empty)
	err := c.cc.Invoke(ctx, "/binkynet.v1.LocalWorkerService/SetSwitchRequest", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *localWorkerServiceClient) SetDeviceDiscoveryRequest(ctx context.Context, in *DeviceDiscovery, opts ...grpc.CallOption) (*Empty, error) {
	out := new(Empty)
	err := c.cc.Invoke(ctx, "/binkynet.v1.LocalWorkerService/SetDeviceDiscoveryRequest", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

// LocalWorkerServiceServer is the server API for LocalWorkerService service.
type LocalWorkerServiceServer interface {
	// Reset the local worker
	Reset(context.Context, *Empty) (*Empty, error)
	// Set a requested loc state
	SetLocRequest(context.Context, *Loc) (*Empty, error)
	// Set the requested power state
	SetPowerRequest(context.Context, *PowerState) (*Empty, error)
	// Set a requested output state
	SetOutputRequest(context.Context, *Output) (*Empty, error)
	// Set a requested switch state
	SetSwitchRequest(context.Context, *Switch) (*Empty, error)
	// Set a requested device discovery state
	SetDeviceDiscoveryRequest(context.Context, *DeviceDiscovery) (*Empty, error)
}

// UnimplementedLocalWorkerServiceServer can be embedded to have forward compatible implementations.
type UnimplementedLocalWorkerServiceServer struct {
}

func (*UnimplementedLocalWorkerServiceServer) Reset(ctx context.Context, req *Empty) (*Empty, error) {
	return nil, status.Errorf(codes.Unimplemented, "method Reset not implemented")
}
func (*UnimplementedLocalWorkerServiceServer) SetLocRequest(ctx context.Context, req *Loc) (*Empty, error) {
	return nil, status.Errorf(codes.Unimplemented, "method SetLocRequest not implemented")
}
func (*UnimplementedLocalWorkerServiceServer) SetPowerRequest(ctx context.Context, req *PowerState) (*Empty, error) {
	return nil, status.Errorf(codes.Unimplemented, "method SetPowerRequest not implemented")
}
func (*UnimplementedLocalWorkerServiceServer) SetOutputRequest(ctx context.Context, req *Output) (*Empty, error) {
	return nil, status.Errorf(codes.Unimplemented, "method SetOutputRequest not implemented")
}
func (*UnimplementedLocalWorkerServiceServer) SetSwitchRequest(ctx context.Context, req *Switch) (*Empty, error) {
	return nil, status.Errorf(codes.Unimplemented, "method SetSwitchRequest not implemented")
}
func (*UnimplementedLocalWorkerServiceServer) SetDeviceDiscoveryRequest(ctx context.Context, req *DeviceDiscovery) (*Empty, error) {
	return nil, status.Errorf(codes.Unimplemented, "method SetDeviceDiscoveryRequest not implemented")
}

func RegisterLocalWorkerServiceServer(s *grpc.Server, srv LocalWorkerServiceServer) {
	s.RegisterService(&_LocalWorkerService_serviceDesc, srv)
}

func _LocalWorkerService_Reset_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(Empty)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(LocalWorkerServiceServer).Reset(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/binkynet.v1.LocalWorkerService/Reset",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(LocalWorkerServiceServer).Reset(ctx, req.(*Empty))
	}
	return interceptor(ctx, in, info, handler)
}

func _LocalWorkerService_SetLocRequest_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(Loc)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(LocalWorkerServiceServer).SetLocRequest(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/binkynet.v1.LocalWorkerService/SetLocRequest",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(LocalWorkerServiceServer).SetLocRequest(ctx, req.(*Loc))
	}
	return interceptor(ctx, in, info, handler)
}

func _LocalWorkerService_SetPowerRequest_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(PowerState)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(LocalWorkerServiceServer).SetPowerRequest(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/binkynet.v1.LocalWorkerService/SetPowerRequest",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(LocalWorkerServiceServer).SetPowerRequest(ctx, req.(*PowerState))
	}
	return interceptor(ctx, in, info, handler)
}

func _LocalWorkerService_SetOutputRequest_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(Output)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(LocalWorkerServiceServer).SetOutputRequest(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/binkynet.v1.LocalWorkerService/SetOutputRequest",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(LocalWorkerServiceServer).SetOutputRequest(ctx, req.(*Output))
	}
	return interceptor(ctx, in, info, handler)
}

func _LocalWorkerService_SetSwitchRequest_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(Switch)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(LocalWorkerServiceServer).SetSwitchRequest(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/binkynet.v1.LocalWorkerService/SetSwitchRequest",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(LocalWorkerServiceServer).SetSwitchRequest(ctx, req.(*Switch))
	}
	return interceptor(ctx, in, info, handler)
}

func _LocalWorkerService_SetDeviceDiscoveryRequest_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(DeviceDiscovery)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(LocalWorkerServiceServer).SetDeviceDiscoveryRequest(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/binkynet.v1.LocalWorkerService/SetDeviceDiscoveryRequest",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(LocalWorkerServiceServer).SetDeviceDiscoveryRequest(ctx, req.(*DeviceDiscovery))
	}
	return interceptor(ctx, in, info, handler)
}

var _LocalWorkerService_serviceDesc = grpc.ServiceDesc{
	ServiceName: "binkynet.v1.LocalWorkerService",
	HandlerType: (*LocalWorkerServiceServer)(nil),
	Methods: []grpc.MethodDesc{
		{
			MethodName: "Reset",
			Handler:    _LocalWorkerService_Reset_Handler,
		},
		{
			MethodName: "SetLocRequest",
			Handler:    _LocalWorkerService_SetLocRequest_Handler,
		},
		{
			MethodName: "SetPowerRequest",
			Handler:    _LocalWorkerService_SetPowerRequest_Handler,
		},
		{
			MethodName: "SetOutputRequest",
			Handler:    _LocalWorkerService_SetOutputRequest_Handler,
		},
		{
			MethodName: "SetSwitchRequest",
			Handler:    _LocalWorkerService_SetSwitchRequest_Handler,
		},
		{
			MethodName: "SetDeviceDiscoveryRequest",
			Handler:    _LocalWorkerService_SetDeviceDiscoveryRequest_Handler,
		},
	},
	Streams:  []grpc.StreamDesc{},
	Metadata: "localworker.proto",
}
