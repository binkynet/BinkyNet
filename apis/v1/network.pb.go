// Code generated by protoc-gen-gogo. DO NOT EDIT.
// source: network.proto

package v1

import (
	context "context"
	fmt "fmt"
	proto "github.com/golang/protobuf/proto"
	grpc "google.golang.org/grpc"
	codes "google.golang.org/grpc/codes"
	status "google.golang.org/grpc/status"
	io "io"
	math "math"
	math_bits "math/bits"
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

type WatchOptions struct {
	// If set, send changes in request state
	WatchRequestChanges bool `protobuf:"varint,1,opt,name=watch_request_changes,json=watchRequestChanges,proto3" json:"watch_request_changes,omitempty"`
	// If set, send changes in actual state
	WatchActualChanges bool `protobuf:"varint,2,opt,name=watch_actual_changes,json=watchActualChanges,proto3" json:"watch_actual_changes,omitempty"`
	// If set, send changes related to this and global module only
	ModuleId             string   `protobuf:"bytes,3,opt,name=module_id,json=moduleId,proto3" json:"module_id,omitempty"`
	XXX_NoUnkeyedLiteral struct{} `json:"-"`
	XXX_unrecognized     []byte   `json:"-"`
	XXX_sizecache        int32    `json:"-"`
}

func (m *WatchOptions) Reset()         { *m = WatchOptions{} }
func (m *WatchOptions) String() string { return proto.CompactTextString(m) }
func (*WatchOptions) ProtoMessage()    {}
func (*WatchOptions) Descriptor() ([]byte, []int) {
	return fileDescriptor_8571034d60397816, []int{0}
}
func (m *WatchOptions) XXX_Unmarshal(b []byte) error {
	return m.Unmarshal(b)
}
func (m *WatchOptions) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	if deterministic {
		return xxx_messageInfo_WatchOptions.Marshal(b, m, deterministic)
	} else {
		b = b[:cap(b)]
		n, err := m.MarshalToSizedBuffer(b)
		if err != nil {
			return nil, err
		}
		return b[:n], nil
	}
}
func (m *WatchOptions) XXX_Merge(src proto.Message) {
	xxx_messageInfo_WatchOptions.Merge(m, src)
}
func (m *WatchOptions) XXX_Size() int {
	return m.Size()
}
func (m *WatchOptions) XXX_DiscardUnknown() {
	xxx_messageInfo_WatchOptions.DiscardUnknown(m)
}

var xxx_messageInfo_WatchOptions proto.InternalMessageInfo

func (m *WatchOptions) GetWatchRequestChanges() bool {
	if m != nil {
		return m.WatchRequestChanges
	}
	return false
}

func (m *WatchOptions) GetWatchActualChanges() bool {
	if m != nil {
		return m.WatchActualChanges
	}
	return false
}

func (m *WatchOptions) GetModuleId() string {
	if m != nil {
		return m.ModuleId
	}
	return ""
}

func init() {
	proto.RegisterType((*WatchOptions)(nil), "binkynet.v1.WatchOptions")
}

func init() { proto.RegisterFile("network.proto", fileDescriptor_8571034d60397816) }

var fileDescriptor_8571034d60397816 = []byte{
	// 449 bytes of a gzipped FileDescriptorProto
	0x1f, 0x8b, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0xff, 0x94, 0x93, 0xc1, 0x6e, 0xd3, 0x30,
	0x18, 0xc7, 0xf1, 0x10, 0x68, 0xf3, 0x06, 0x0c, 0x6f, 0x15, 0xa5, 0xa0, 0x6a, 0x42, 0x1c, 0x76,
	0x4a, 0xda, 0xc1, 0x01, 0x21, 0x71, 0xd8, 0xda, 0x1d, 0x86, 0xa6, 0x0d, 0x35, 0x12, 0x93, 0xb8,
	0x54, 0xa9, 0xfb, 0x69, 0xb5, 0x92, 0xc6, 0xc1, 0xfe, 0x92, 0x28, 0x8f, 0xc1, 0x8d, 0x67, 0xe0,
	0x49, 0x38, 0xf2, 0x08, 0x53, 0x79, 0x11, 0x54, 0x3b, 0xa9, 0x92, 0x2a, 0xab, 0xc4, 0x2d, 0xf1,
	0xef, 0xff, 0xfb, 0xfc, 0xf9, 0x73, 0x42, 0x9f, 0x44, 0x80, 0x99, 0x54, 0x81, 0x13, 0x2b, 0x89,
	0x92, 0xed, 0x4e, 0x44, 0x14, 0xe4, 0x11, 0xa0, 0x93, 0xf6, 0x3b, 0xbb, 0x98, 0xc7, 0xa0, 0x2d,
	0x79, 0xf3, 0x83, 0xd0, 0xbd, 0x1b, 0x1f, 0xf9, 0xec, 0x3a, 0x46, 0x21, 0x23, 0xcd, 0x4e, 0x68,
	0x2b, 0x5b, 0xbe, 0x8f, 0x15, 0x7c, 0x4f, 0x40, 0xe3, 0x98, 0xcf, 0xfc, 0xe8, 0x16, 0x74, 0x9b,
	0x1c, 0x91, 0xe3, 0xed, 0xd1, 0x81, 0x81, 0x23, 0xcb, 0x06, 0x16, 0xb1, 0x1e, 0x3d, 0xb4, 0x8e,
	0xcf, 0x31, 0xf1, 0xc3, 0x95, 0xb2, 0x65, 0x14, 0x66, 0xd8, 0xa9, 0x41, 0xa5, 0xf1, 0x8a, 0xee,
	0xcc, 0xe5, 0x34, 0x09, 0x61, 0x2c, 0xa6, 0xed, 0x87, 0x47, 0xe4, 0x78, 0x67, 0xb4, 0x6d, 0x17,
	0x2e, 0xa6, 0x27, 0x77, 0x8f, 0x68, 0xeb, 0xca, 0xf6, 0x3f, 0x90, 0x11, 0x2a, 0x19, 0x7a, 0xa0,
	0x52, 0xc1, 0x81, 0x9d, 0xd3, 0x96, 0x07, 0x78, 0x29, 0xb9, 0x1f, 0xde, 0x48, 0x15, 0x80, 0x2a,
	0x1a, 0x61, 0x6d, 0xa7, 0x72, 0x42, 0xa7, 0x12, 0xe8, 0xb0, 0x1a, 0x39, 0x9f, 0xc7, 0x98, 0xb3,
	0x21, 0x3d, 0xac, 0x97, 0xb1, 0xcd, 0xfd, 0x67, 0x95, 0xcf, 0xf4, 0xb9, 0x99, 0x5c, 0x25, 0xa7,
	0xd9, 0xcb, 0x5a, 0xb0, 0x3a, 0xd9, 0xce, 0xbd, 0xd5, 0x7b, 0x84, 0x5d, 0xd2, 0xb6, 0x07, 0x38,
	0x84, 0xe5, 0x29, 0x87, 0x42, 0x73, 0x99, 0x82, 0xca, 0x8b, 0xae, 0x5e, 0xd7, 0xbc, 0xb5, 0x4c,
	0x63, 0x67, 0x9f, 0xe8, 0x53, 0x0f, 0xf0, 0x8b, 0xcc, 0x56, 0x27, 0x7b, 0x51, 0x4b, 0x19, 0xe2,
	0xa1, 0x8f, 0xd0, 0xa8, 0xbf, 0xa7, 0x7b, 0x76, 0x3c, 0x85, 0xbc, 0xbf, 0xde, 0x78, 0xa3, 0xf5,
	0x91, 0x3e, 0xf3, 0x00, 0x3d, 0x88, 0xb4, 0x2c, 0x77, 0x3d, 0xa8, 0xc5, 0x2c, 0xda, 0xe0, 0x5e,
	0x27, 0x18, 0x27, 0xd8, 0xe8, 0x5a, 0xb4, 0x69, 0xdf, 0x4c, 0xac, 0x3e, 0xb2, 0xf5, 0x7d, 0x0d,
	0x6a, 0x74, 0x3f, 0x98, 0x41, 0x0d, 0x42, 0xc9, 0x83, 0x42, 0xad, 0xa7, 0x0c, 0xb9, 0x67, 0xc4,
	0xd4, 0x5c, 0xae, 0x49, 0x6c, 0xba, 0xf5, 0x86, 0x82, 0x3d, 0x72, 0x76, 0xf1, 0x7b, 0xd1, 0x25,
	0x7f, 0x16, 0x5d, 0x72, 0xb7, 0xe8, 0x92, 0x9f, 0x7f, 0xbb, 0x0f, 0xbe, 0xbd, 0xbd, 0x15, 0x38,
	0x4b, 0x26, 0x0e, 0x97, 0x73, 0xb7, 0x34, 0xdc, 0xb3, 0xe5, 0xc3, 0x15, 0xa0, 0xeb, 0xc7, 0x42,
	0xbb, 0x69, 0xff, 0xd7, 0xd6, 0x7e, 0xb9, 0xe4, 0x9c, 0xc6, 0x42, 0x3b, 0x5f, 0xfb, 0x93, 0xc7,
	0xe6, 0x47, 0x7e, 0xf7, 0x2f, 0x00, 0x00, 0xff, 0xff, 0xec, 0xe9, 0x6d, 0x23, 0xf3, 0x03, 0x00,
	0x00,
}

// Reference imports to suppress errors if they are not otherwise used.
var _ context.Context
var _ grpc.ClientConn

// This is a compile-time assertion to ensure that this generated file
// is compatible with the grpc package it is being compiled against.
const _ = grpc.SupportPackageIsVersion4

// NetworkControlServiceClient is the client API for NetworkControlService service.
//
// For semantics around ctx use and closing/ending streaming RPCs, please refer to https://godoc.org/google.golang.org/grpc#ClientConn.NewStream.
type NetworkControlServiceClient interface {
	// Set the requested local worker state
	SetLocalWorkerRequest(ctx context.Context, in *LocalWorker, opts ...grpc.CallOption) (*Empty, error)
	// Set the actual local worker state
	SetLocalWorkerActual(ctx context.Context, in *LocalWorker, opts ...grpc.CallOption) (*Empty, error)
	// Watch local worker changes
	WatchLocalWorkers(ctx context.Context, in *WatchOptions, opts ...grpc.CallOption) (NetworkControlService_WatchLocalWorkersClient, error)
	// Set an actual device discovery state
	SetDeviceDiscoveryActual(ctx context.Context, in *DeviceDiscovery, opts ...grpc.CallOption) (*Empty, error)
	// Set the actual power state
	SetPowerActual(ctx context.Context, in *PowerState, opts ...grpc.CallOption) (*Empty, error)
	// Set an actual loc state
	SetLocActual(ctx context.Context, in *Loc, opts ...grpc.CallOption) (*Empty, error)
	// Set an actual sensor state
	SetSensorActual(ctx context.Context, in *Sensor, opts ...grpc.CallOption) (*Empty, error)
	// Set an actual output state
	SetOutputActual(ctx context.Context, in *Output, opts ...grpc.CallOption) (*Empty, error)
	// Set an actual switch state
	SetSwitchActual(ctx context.Context, in *Switch, opts ...grpc.CallOption) (*Empty, error)
	// Set an actual clock state
	SetClockActual(ctx context.Context, in *Clock, opts ...grpc.CallOption) (*Empty, error)
	// Watch clock changes
	WatchClock(ctx context.Context, in *WatchOptions, opts ...grpc.CallOption) (NetworkControlService_WatchClockClient, error)
}

type networkControlServiceClient struct {
	cc *grpc.ClientConn
}

func NewNetworkControlServiceClient(cc *grpc.ClientConn) NetworkControlServiceClient {
	return &networkControlServiceClient{cc}
}

func (c *networkControlServiceClient) SetLocalWorkerRequest(ctx context.Context, in *LocalWorker, opts ...grpc.CallOption) (*Empty, error) {
	out := new(Empty)
	err := c.cc.Invoke(ctx, "/binkynet.v1.NetworkControlService/SetLocalWorkerRequest", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *networkControlServiceClient) SetLocalWorkerActual(ctx context.Context, in *LocalWorker, opts ...grpc.CallOption) (*Empty, error) {
	out := new(Empty)
	err := c.cc.Invoke(ctx, "/binkynet.v1.NetworkControlService/SetLocalWorkerActual", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *networkControlServiceClient) WatchLocalWorkers(ctx context.Context, in *WatchOptions, opts ...grpc.CallOption) (NetworkControlService_WatchLocalWorkersClient, error) {
	stream, err := c.cc.NewStream(ctx, &_NetworkControlService_serviceDesc.Streams[0], "/binkynet.v1.NetworkControlService/WatchLocalWorkers", opts...)
	if err != nil {
		return nil, err
	}
	x := &networkControlServiceWatchLocalWorkersClient{stream}
	if err := x.ClientStream.SendMsg(in); err != nil {
		return nil, err
	}
	if err := x.ClientStream.CloseSend(); err != nil {
		return nil, err
	}
	return x, nil
}

type NetworkControlService_WatchLocalWorkersClient interface {
	Recv() (*LocalWorker, error)
	grpc.ClientStream
}

type networkControlServiceWatchLocalWorkersClient struct {
	grpc.ClientStream
}

func (x *networkControlServiceWatchLocalWorkersClient) Recv() (*LocalWorker, error) {
	m := new(LocalWorker)
	if err := x.ClientStream.RecvMsg(m); err != nil {
		return nil, err
	}
	return m, nil
}

func (c *networkControlServiceClient) SetDeviceDiscoveryActual(ctx context.Context, in *DeviceDiscovery, opts ...grpc.CallOption) (*Empty, error) {
	out := new(Empty)
	err := c.cc.Invoke(ctx, "/binkynet.v1.NetworkControlService/SetDeviceDiscoveryActual", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *networkControlServiceClient) SetPowerActual(ctx context.Context, in *PowerState, opts ...grpc.CallOption) (*Empty, error) {
	out := new(Empty)
	err := c.cc.Invoke(ctx, "/binkynet.v1.NetworkControlService/SetPowerActual", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *networkControlServiceClient) SetLocActual(ctx context.Context, in *Loc, opts ...grpc.CallOption) (*Empty, error) {
	out := new(Empty)
	err := c.cc.Invoke(ctx, "/binkynet.v1.NetworkControlService/SetLocActual", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *networkControlServiceClient) SetSensorActual(ctx context.Context, in *Sensor, opts ...grpc.CallOption) (*Empty, error) {
	out := new(Empty)
	err := c.cc.Invoke(ctx, "/binkynet.v1.NetworkControlService/SetSensorActual", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *networkControlServiceClient) SetOutputActual(ctx context.Context, in *Output, opts ...grpc.CallOption) (*Empty, error) {
	out := new(Empty)
	err := c.cc.Invoke(ctx, "/binkynet.v1.NetworkControlService/SetOutputActual", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *networkControlServiceClient) SetSwitchActual(ctx context.Context, in *Switch, opts ...grpc.CallOption) (*Empty, error) {
	out := new(Empty)
	err := c.cc.Invoke(ctx, "/binkynet.v1.NetworkControlService/SetSwitchActual", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *networkControlServiceClient) SetClockActual(ctx context.Context, in *Clock, opts ...grpc.CallOption) (*Empty, error) {
	out := new(Empty)
	err := c.cc.Invoke(ctx, "/binkynet.v1.NetworkControlService/SetClockActual", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *networkControlServiceClient) WatchClock(ctx context.Context, in *WatchOptions, opts ...grpc.CallOption) (NetworkControlService_WatchClockClient, error) {
	stream, err := c.cc.NewStream(ctx, &_NetworkControlService_serviceDesc.Streams[1], "/binkynet.v1.NetworkControlService/WatchClock", opts...)
	if err != nil {
		return nil, err
	}
	x := &networkControlServiceWatchClockClient{stream}
	if err := x.ClientStream.SendMsg(in); err != nil {
		return nil, err
	}
	if err := x.ClientStream.CloseSend(); err != nil {
		return nil, err
	}
	return x, nil
}

type NetworkControlService_WatchClockClient interface {
	Recv() (*Clock, error)
	grpc.ClientStream
}

type networkControlServiceWatchClockClient struct {
	grpc.ClientStream
}

func (x *networkControlServiceWatchClockClient) Recv() (*Clock, error) {
	m := new(Clock)
	if err := x.ClientStream.RecvMsg(m); err != nil {
		return nil, err
	}
	return m, nil
}

// NetworkControlServiceServer is the server API for NetworkControlService service.
type NetworkControlServiceServer interface {
	// Set the requested local worker state
	SetLocalWorkerRequest(context.Context, *LocalWorker) (*Empty, error)
	// Set the actual local worker state
	SetLocalWorkerActual(context.Context, *LocalWorker) (*Empty, error)
	// Watch local worker changes
	WatchLocalWorkers(*WatchOptions, NetworkControlService_WatchLocalWorkersServer) error
	// Set an actual device discovery state
	SetDeviceDiscoveryActual(context.Context, *DeviceDiscovery) (*Empty, error)
	// Set the actual power state
	SetPowerActual(context.Context, *PowerState) (*Empty, error)
	// Set an actual loc state
	SetLocActual(context.Context, *Loc) (*Empty, error)
	// Set an actual sensor state
	SetSensorActual(context.Context, *Sensor) (*Empty, error)
	// Set an actual output state
	SetOutputActual(context.Context, *Output) (*Empty, error)
	// Set an actual switch state
	SetSwitchActual(context.Context, *Switch) (*Empty, error)
	// Set an actual clock state
	SetClockActual(context.Context, *Clock) (*Empty, error)
	// Watch clock changes
	WatchClock(*WatchOptions, NetworkControlService_WatchClockServer) error
}

// UnimplementedNetworkControlServiceServer can be embedded to have forward compatible implementations.
type UnimplementedNetworkControlServiceServer struct {
}

func (*UnimplementedNetworkControlServiceServer) SetLocalWorkerRequest(ctx context.Context, req *LocalWorker) (*Empty, error) {
	return nil, status.Errorf(codes.Unimplemented, "method SetLocalWorkerRequest not implemented")
}
func (*UnimplementedNetworkControlServiceServer) SetLocalWorkerActual(ctx context.Context, req *LocalWorker) (*Empty, error) {
	return nil, status.Errorf(codes.Unimplemented, "method SetLocalWorkerActual not implemented")
}
func (*UnimplementedNetworkControlServiceServer) WatchLocalWorkers(req *WatchOptions, srv NetworkControlService_WatchLocalWorkersServer) error {
	return status.Errorf(codes.Unimplemented, "method WatchLocalWorkers not implemented")
}
func (*UnimplementedNetworkControlServiceServer) SetDeviceDiscoveryActual(ctx context.Context, req *DeviceDiscovery) (*Empty, error) {
	return nil, status.Errorf(codes.Unimplemented, "method SetDeviceDiscoveryActual not implemented")
}
func (*UnimplementedNetworkControlServiceServer) SetPowerActual(ctx context.Context, req *PowerState) (*Empty, error) {
	return nil, status.Errorf(codes.Unimplemented, "method SetPowerActual not implemented")
}
func (*UnimplementedNetworkControlServiceServer) SetLocActual(ctx context.Context, req *Loc) (*Empty, error) {
	return nil, status.Errorf(codes.Unimplemented, "method SetLocActual not implemented")
}
func (*UnimplementedNetworkControlServiceServer) SetSensorActual(ctx context.Context, req *Sensor) (*Empty, error) {
	return nil, status.Errorf(codes.Unimplemented, "method SetSensorActual not implemented")
}
func (*UnimplementedNetworkControlServiceServer) SetOutputActual(ctx context.Context, req *Output) (*Empty, error) {
	return nil, status.Errorf(codes.Unimplemented, "method SetOutputActual not implemented")
}
func (*UnimplementedNetworkControlServiceServer) SetSwitchActual(ctx context.Context, req *Switch) (*Empty, error) {
	return nil, status.Errorf(codes.Unimplemented, "method SetSwitchActual not implemented")
}
func (*UnimplementedNetworkControlServiceServer) SetClockActual(ctx context.Context, req *Clock) (*Empty, error) {
	return nil, status.Errorf(codes.Unimplemented, "method SetClockActual not implemented")
}
func (*UnimplementedNetworkControlServiceServer) WatchClock(req *WatchOptions, srv NetworkControlService_WatchClockServer) error {
	return status.Errorf(codes.Unimplemented, "method WatchClock not implemented")
}

func RegisterNetworkControlServiceServer(s *grpc.Server, srv NetworkControlServiceServer) {
	s.RegisterService(&_NetworkControlService_serviceDesc, srv)
}

func _NetworkControlService_SetLocalWorkerRequest_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(LocalWorker)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(NetworkControlServiceServer).SetLocalWorkerRequest(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/binkynet.v1.NetworkControlService/SetLocalWorkerRequest",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(NetworkControlServiceServer).SetLocalWorkerRequest(ctx, req.(*LocalWorker))
	}
	return interceptor(ctx, in, info, handler)
}

func _NetworkControlService_SetLocalWorkerActual_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(LocalWorker)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(NetworkControlServiceServer).SetLocalWorkerActual(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/binkynet.v1.NetworkControlService/SetLocalWorkerActual",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(NetworkControlServiceServer).SetLocalWorkerActual(ctx, req.(*LocalWorker))
	}
	return interceptor(ctx, in, info, handler)
}

func _NetworkControlService_WatchLocalWorkers_Handler(srv interface{}, stream grpc.ServerStream) error {
	m := new(WatchOptions)
	if err := stream.RecvMsg(m); err != nil {
		return err
	}
	return srv.(NetworkControlServiceServer).WatchLocalWorkers(m, &networkControlServiceWatchLocalWorkersServer{stream})
}

type NetworkControlService_WatchLocalWorkersServer interface {
	Send(*LocalWorker) error
	grpc.ServerStream
}

type networkControlServiceWatchLocalWorkersServer struct {
	grpc.ServerStream
}

func (x *networkControlServiceWatchLocalWorkersServer) Send(m *LocalWorker) error {
	return x.ServerStream.SendMsg(m)
}

func _NetworkControlService_SetDeviceDiscoveryActual_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(DeviceDiscovery)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(NetworkControlServiceServer).SetDeviceDiscoveryActual(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/binkynet.v1.NetworkControlService/SetDeviceDiscoveryActual",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(NetworkControlServiceServer).SetDeviceDiscoveryActual(ctx, req.(*DeviceDiscovery))
	}
	return interceptor(ctx, in, info, handler)
}

func _NetworkControlService_SetPowerActual_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(PowerState)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(NetworkControlServiceServer).SetPowerActual(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/binkynet.v1.NetworkControlService/SetPowerActual",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(NetworkControlServiceServer).SetPowerActual(ctx, req.(*PowerState))
	}
	return interceptor(ctx, in, info, handler)
}

func _NetworkControlService_SetLocActual_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(Loc)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(NetworkControlServiceServer).SetLocActual(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/binkynet.v1.NetworkControlService/SetLocActual",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(NetworkControlServiceServer).SetLocActual(ctx, req.(*Loc))
	}
	return interceptor(ctx, in, info, handler)
}

func _NetworkControlService_SetSensorActual_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(Sensor)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(NetworkControlServiceServer).SetSensorActual(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/binkynet.v1.NetworkControlService/SetSensorActual",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(NetworkControlServiceServer).SetSensorActual(ctx, req.(*Sensor))
	}
	return interceptor(ctx, in, info, handler)
}

func _NetworkControlService_SetOutputActual_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(Output)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(NetworkControlServiceServer).SetOutputActual(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/binkynet.v1.NetworkControlService/SetOutputActual",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(NetworkControlServiceServer).SetOutputActual(ctx, req.(*Output))
	}
	return interceptor(ctx, in, info, handler)
}

func _NetworkControlService_SetSwitchActual_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(Switch)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(NetworkControlServiceServer).SetSwitchActual(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/binkynet.v1.NetworkControlService/SetSwitchActual",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(NetworkControlServiceServer).SetSwitchActual(ctx, req.(*Switch))
	}
	return interceptor(ctx, in, info, handler)
}

func _NetworkControlService_SetClockActual_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(Clock)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(NetworkControlServiceServer).SetClockActual(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/binkynet.v1.NetworkControlService/SetClockActual",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(NetworkControlServiceServer).SetClockActual(ctx, req.(*Clock))
	}
	return interceptor(ctx, in, info, handler)
}

func _NetworkControlService_WatchClock_Handler(srv interface{}, stream grpc.ServerStream) error {
	m := new(WatchOptions)
	if err := stream.RecvMsg(m); err != nil {
		return err
	}
	return srv.(NetworkControlServiceServer).WatchClock(m, &networkControlServiceWatchClockServer{stream})
}

type NetworkControlService_WatchClockServer interface {
	Send(*Clock) error
	grpc.ServerStream
}

type networkControlServiceWatchClockServer struct {
	grpc.ServerStream
}

func (x *networkControlServiceWatchClockServer) Send(m *Clock) error {
	return x.ServerStream.SendMsg(m)
}

var _NetworkControlService_serviceDesc = grpc.ServiceDesc{
	ServiceName: "binkynet.v1.NetworkControlService",
	HandlerType: (*NetworkControlServiceServer)(nil),
	Methods: []grpc.MethodDesc{
		{
			MethodName: "SetLocalWorkerRequest",
			Handler:    _NetworkControlService_SetLocalWorkerRequest_Handler,
		},
		{
			MethodName: "SetLocalWorkerActual",
			Handler:    _NetworkControlService_SetLocalWorkerActual_Handler,
		},
		{
			MethodName: "SetDeviceDiscoveryActual",
			Handler:    _NetworkControlService_SetDeviceDiscoveryActual_Handler,
		},
		{
			MethodName: "SetPowerActual",
			Handler:    _NetworkControlService_SetPowerActual_Handler,
		},
		{
			MethodName: "SetLocActual",
			Handler:    _NetworkControlService_SetLocActual_Handler,
		},
		{
			MethodName: "SetSensorActual",
			Handler:    _NetworkControlService_SetSensorActual_Handler,
		},
		{
			MethodName: "SetOutputActual",
			Handler:    _NetworkControlService_SetOutputActual_Handler,
		},
		{
			MethodName: "SetSwitchActual",
			Handler:    _NetworkControlService_SetSwitchActual_Handler,
		},
		{
			MethodName: "SetClockActual",
			Handler:    _NetworkControlService_SetClockActual_Handler,
		},
	},
	Streams: []grpc.StreamDesc{
		{
			StreamName:    "WatchLocalWorkers",
			Handler:       _NetworkControlService_WatchLocalWorkers_Handler,
			ServerStreams: true,
		},
		{
			StreamName:    "WatchClock",
			Handler:       _NetworkControlService_WatchClock_Handler,
			ServerStreams: true,
		},
	},
	Metadata: "network.proto",
}

func (m *WatchOptions) Marshal() (dAtA []byte, err error) {
	size := m.Size()
	dAtA = make([]byte, size)
	n, err := m.MarshalToSizedBuffer(dAtA[:size])
	if err != nil {
		return nil, err
	}
	return dAtA[:n], nil
}

func (m *WatchOptions) MarshalTo(dAtA []byte) (int, error) {
	size := m.Size()
	return m.MarshalToSizedBuffer(dAtA[:size])
}

func (m *WatchOptions) MarshalToSizedBuffer(dAtA []byte) (int, error) {
	i := len(dAtA)
	_ = i
	var l int
	_ = l
	if m.XXX_unrecognized != nil {
		i -= len(m.XXX_unrecognized)
		copy(dAtA[i:], m.XXX_unrecognized)
	}
	if len(m.ModuleId) > 0 {
		i -= len(m.ModuleId)
		copy(dAtA[i:], m.ModuleId)
		i = encodeVarintNetwork(dAtA, i, uint64(len(m.ModuleId)))
		i--
		dAtA[i] = 0x1a
	}
	if m.WatchActualChanges {
		i--
		if m.WatchActualChanges {
			dAtA[i] = 1
		} else {
			dAtA[i] = 0
		}
		i--
		dAtA[i] = 0x10
	}
	if m.WatchRequestChanges {
		i--
		if m.WatchRequestChanges {
			dAtA[i] = 1
		} else {
			dAtA[i] = 0
		}
		i--
		dAtA[i] = 0x8
	}
	return len(dAtA) - i, nil
}

func encodeVarintNetwork(dAtA []byte, offset int, v uint64) int {
	offset -= sovNetwork(v)
	base := offset
	for v >= 1<<7 {
		dAtA[offset] = uint8(v&0x7f | 0x80)
		v >>= 7
		offset++
	}
	dAtA[offset] = uint8(v)
	return base
}
func (m *WatchOptions) Size() (n int) {
	if m == nil {
		return 0
	}
	var l int
	_ = l
	if m.WatchRequestChanges {
		n += 2
	}
	if m.WatchActualChanges {
		n += 2
	}
	l = len(m.ModuleId)
	if l > 0 {
		n += 1 + l + sovNetwork(uint64(l))
	}
	if m.XXX_unrecognized != nil {
		n += len(m.XXX_unrecognized)
	}
	return n
}

func sovNetwork(x uint64) (n int) {
	return (math_bits.Len64(x|1) + 6) / 7
}
func sozNetwork(x uint64) (n int) {
	return sovNetwork(uint64((x << 1) ^ uint64((int64(x) >> 63))))
}
func (m *WatchOptions) Unmarshal(dAtA []byte) error {
	l := len(dAtA)
	iNdEx := 0
	for iNdEx < l {
		preIndex := iNdEx
		var wire uint64
		for shift := uint(0); ; shift += 7 {
			if shift >= 64 {
				return ErrIntOverflowNetwork
			}
			if iNdEx >= l {
				return io.ErrUnexpectedEOF
			}
			b := dAtA[iNdEx]
			iNdEx++
			wire |= uint64(b&0x7F) << shift
			if b < 0x80 {
				break
			}
		}
		fieldNum := int32(wire >> 3)
		wireType := int(wire & 0x7)
		if wireType == 4 {
			return fmt.Errorf("proto: WatchOptions: wiretype end group for non-group")
		}
		if fieldNum <= 0 {
			return fmt.Errorf("proto: WatchOptions: illegal tag %d (wire type %d)", fieldNum, wire)
		}
		switch fieldNum {
		case 1:
			if wireType != 0 {
				return fmt.Errorf("proto: wrong wireType = %d for field WatchRequestChanges", wireType)
			}
			var v int
			for shift := uint(0); ; shift += 7 {
				if shift >= 64 {
					return ErrIntOverflowNetwork
				}
				if iNdEx >= l {
					return io.ErrUnexpectedEOF
				}
				b := dAtA[iNdEx]
				iNdEx++
				v |= int(b&0x7F) << shift
				if b < 0x80 {
					break
				}
			}
			m.WatchRequestChanges = bool(v != 0)
		case 2:
			if wireType != 0 {
				return fmt.Errorf("proto: wrong wireType = %d for field WatchActualChanges", wireType)
			}
			var v int
			for shift := uint(0); ; shift += 7 {
				if shift >= 64 {
					return ErrIntOverflowNetwork
				}
				if iNdEx >= l {
					return io.ErrUnexpectedEOF
				}
				b := dAtA[iNdEx]
				iNdEx++
				v |= int(b&0x7F) << shift
				if b < 0x80 {
					break
				}
			}
			m.WatchActualChanges = bool(v != 0)
		case 3:
			if wireType != 2 {
				return fmt.Errorf("proto: wrong wireType = %d for field ModuleId", wireType)
			}
			var stringLen uint64
			for shift := uint(0); ; shift += 7 {
				if shift >= 64 {
					return ErrIntOverflowNetwork
				}
				if iNdEx >= l {
					return io.ErrUnexpectedEOF
				}
				b := dAtA[iNdEx]
				iNdEx++
				stringLen |= uint64(b&0x7F) << shift
				if b < 0x80 {
					break
				}
			}
			intStringLen := int(stringLen)
			if intStringLen < 0 {
				return ErrInvalidLengthNetwork
			}
			postIndex := iNdEx + intStringLen
			if postIndex < 0 {
				return ErrInvalidLengthNetwork
			}
			if postIndex > l {
				return io.ErrUnexpectedEOF
			}
			m.ModuleId = string(dAtA[iNdEx:postIndex])
			iNdEx = postIndex
		default:
			iNdEx = preIndex
			skippy, err := skipNetwork(dAtA[iNdEx:])
			if err != nil {
				return err
			}
			if (skippy < 0) || (iNdEx+skippy) < 0 {
				return ErrInvalidLengthNetwork
			}
			if (iNdEx + skippy) > l {
				return io.ErrUnexpectedEOF
			}
			m.XXX_unrecognized = append(m.XXX_unrecognized, dAtA[iNdEx:iNdEx+skippy]...)
			iNdEx += skippy
		}
	}

	if iNdEx > l {
		return io.ErrUnexpectedEOF
	}
	return nil
}
func skipNetwork(dAtA []byte) (n int, err error) {
	l := len(dAtA)
	iNdEx := 0
	depth := 0
	for iNdEx < l {
		var wire uint64
		for shift := uint(0); ; shift += 7 {
			if shift >= 64 {
				return 0, ErrIntOverflowNetwork
			}
			if iNdEx >= l {
				return 0, io.ErrUnexpectedEOF
			}
			b := dAtA[iNdEx]
			iNdEx++
			wire |= (uint64(b) & 0x7F) << shift
			if b < 0x80 {
				break
			}
		}
		wireType := int(wire & 0x7)
		switch wireType {
		case 0:
			for shift := uint(0); ; shift += 7 {
				if shift >= 64 {
					return 0, ErrIntOverflowNetwork
				}
				if iNdEx >= l {
					return 0, io.ErrUnexpectedEOF
				}
				iNdEx++
				if dAtA[iNdEx-1] < 0x80 {
					break
				}
			}
		case 1:
			iNdEx += 8
		case 2:
			var length int
			for shift := uint(0); ; shift += 7 {
				if shift >= 64 {
					return 0, ErrIntOverflowNetwork
				}
				if iNdEx >= l {
					return 0, io.ErrUnexpectedEOF
				}
				b := dAtA[iNdEx]
				iNdEx++
				length |= (int(b) & 0x7F) << shift
				if b < 0x80 {
					break
				}
			}
			if length < 0 {
				return 0, ErrInvalidLengthNetwork
			}
			iNdEx += length
		case 3:
			depth++
		case 4:
			if depth == 0 {
				return 0, ErrUnexpectedEndOfGroupNetwork
			}
			depth--
		case 5:
			iNdEx += 4
		default:
			return 0, fmt.Errorf("proto: illegal wireType %d", wireType)
		}
		if iNdEx < 0 {
			return 0, ErrInvalidLengthNetwork
		}
		if depth == 0 {
			return iNdEx, nil
		}
	}
	return 0, io.ErrUnexpectedEOF
}

var (
	ErrInvalidLengthNetwork        = fmt.Errorf("proto: negative length found during unmarshaling")
	ErrIntOverflowNetwork          = fmt.Errorf("proto: integer overflow")
	ErrUnexpectedEndOfGroupNetwork = fmt.Errorf("proto: unexpected end of group")
)
