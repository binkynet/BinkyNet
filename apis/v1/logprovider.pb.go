// Code generated by protoc-gen-gogo. DO NOT EDIT.
// source: logprovider.proto

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

// Log levels
type LogLevel int32

const (
	LogLevel_TRACE   LogLevel = 0
	LogLevel_DEBUG   LogLevel = 1
	LogLevel_INFO    LogLevel = 2
	LogLevel_WARNING LogLevel = 3
	LogLevel_ERROR   LogLevel = 4
	LogLevel_FATAL   LogLevel = 5
)

var LogLevel_name = map[int32]string{
	0: "TRACE",
	1: "DEBUG",
	2: "INFO",
	3: "WARNING",
	4: "ERROR",
	5: "FATAL",
}

var LogLevel_value = map[string]int32{
	"TRACE":   0,
	"DEBUG":   1,
	"INFO":    2,
	"WARNING": 3,
	"ERROR":   4,
	"FATAL":   5,
}

func (x LogLevel) String() string {
	return proto.EnumName(LogLevel_name, int32(x))
}

func (LogLevel) EnumDescriptor() ([]byte, []int) {
	return fileDescriptor_6a95e076f061a901, []int{0}
}

type GetLogsRequest struct {
	XXX_NoUnkeyedLiteral struct{} `json:"-"`
	XXX_unrecognized     []byte   `json:"-"`
	XXX_sizecache        int32    `json:"-"`
}

func (m *GetLogsRequest) Reset()         { *m = GetLogsRequest{} }
func (m *GetLogsRequest) String() string { return proto.CompactTextString(m) }
func (*GetLogsRequest) ProtoMessage()    {}
func (*GetLogsRequest) Descriptor() ([]byte, []int) {
	return fileDescriptor_6a95e076f061a901, []int{0}
}
func (m *GetLogsRequest) XXX_Unmarshal(b []byte) error {
	return m.Unmarshal(b)
}
func (m *GetLogsRequest) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	if deterministic {
		return xxx_messageInfo_GetLogsRequest.Marshal(b, m, deterministic)
	} else {
		b = b[:cap(b)]
		n, err := m.MarshalToSizedBuffer(b)
		if err != nil {
			return nil, err
		}
		return b[:n], nil
	}
}
func (m *GetLogsRequest) XXX_Merge(src proto.Message) {
	xxx_messageInfo_GetLogsRequest.Merge(m, src)
}
func (m *GetLogsRequest) XXX_Size() int {
	return m.Size()
}
func (m *GetLogsRequest) XXX_DiscardUnknown() {
	xxx_messageInfo_GetLogsRequest.DiscardUnknown(m)
}

var xxx_messageInfo_GetLogsRequest proto.InternalMessageInfo

type LogEntry struct {
	// Message of the log entry
	Message string `protobuf:"bytes,1,opt,name=message,proto3" json:"message,omitempty"`
	// Log level
	String_              LogLevel `protobuf:"varint,2,opt,name=string,proto3,enum=binkynet.v1.LogLevel" json:"string,omitempty"`
	XXX_NoUnkeyedLiteral struct{} `json:"-"`
	XXX_unrecognized     []byte   `json:"-"`
	XXX_sizecache        int32    `json:"-"`
}

func (m *LogEntry) Reset()         { *m = LogEntry{} }
func (m *LogEntry) String() string { return proto.CompactTextString(m) }
func (*LogEntry) ProtoMessage()    {}
func (*LogEntry) Descriptor() ([]byte, []int) {
	return fileDescriptor_6a95e076f061a901, []int{1}
}
func (m *LogEntry) XXX_Unmarshal(b []byte) error {
	return m.Unmarshal(b)
}
func (m *LogEntry) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	if deterministic {
		return xxx_messageInfo_LogEntry.Marshal(b, m, deterministic)
	} else {
		b = b[:cap(b)]
		n, err := m.MarshalToSizedBuffer(b)
		if err != nil {
			return nil, err
		}
		return b[:n], nil
	}
}
func (m *LogEntry) XXX_Merge(src proto.Message) {
	xxx_messageInfo_LogEntry.Merge(m, src)
}
func (m *LogEntry) XXX_Size() int {
	return m.Size()
}
func (m *LogEntry) XXX_DiscardUnknown() {
	xxx_messageInfo_LogEntry.DiscardUnknown(m)
}

var xxx_messageInfo_LogEntry proto.InternalMessageInfo

func (m *LogEntry) GetMessage() string {
	if m != nil {
		return m.Message
	}
	return ""
}

func (m *LogEntry) GetString_() LogLevel {
	if m != nil {
		return m.String_
	}
	return LogLevel_TRACE
}

func init() {
	proto.RegisterEnum("binkynet.v1.LogLevel", LogLevel_name, LogLevel_value)
	proto.RegisterType((*GetLogsRequest)(nil), "binkynet.v1.GetLogsRequest")
	proto.RegisterType((*LogEntry)(nil), "binkynet.v1.LogEntry")
}

func init() { proto.RegisterFile("logprovider.proto", fileDescriptor_6a95e076f061a901) }

var fileDescriptor_6a95e076f061a901 = []byte{
	// 309 bytes of a gzipped FileDescriptorProto
	0x1f, 0x8b, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0xff, 0x64, 0x90, 0xdf, 0x4a, 0x3a, 0x41,
	0x1c, 0xc5, 0x1d, 0x7f, 0xfe, 0x1d, 0x41, 0xe6, 0x37, 0x10, 0x48, 0xc1, 0x22, 0xd2, 0x85, 0x04,
	0xcd, 0xa6, 0x3d, 0x40, 0xac, 0xb5, 0x8a, 0xb0, 0xad, 0x31, 0x6a, 0x41, 0x77, 0x6a, 0x5f, 0xa6,
	0x21, 0xdd, 0xd9, 0x66, 0xc6, 0x05, 0xdf, 0xa4, 0x67, 0xe8, 0x49, 0xba, 0xec, 0x11, 0xc2, 0x5e,
	0x24, 0x76, 0x51, 0x48, 0xba, 0x3b, 0x73, 0x38, 0x73, 0x38, 0x9f, 0x2f, 0xfe, 0xbf, 0x54, 0x22,
	0xd6, 0x2a, 0x91, 0x4f, 0xa0, 0x59, 0xac, 0x95, 0x55, 0xb4, 0x36, 0x97, 0xd1, 0xcb, 0x26, 0x02,
	0xcb, 0x92, 0x4e, 0x8b, 0xe0, 0xfa, 0x00, 0x6c, 0xa0, 0x84, 0xe1, 0xf0, 0xba, 0x06, 0x63, 0x5b,
	0x63, 0x5c, 0x09, 0x94, 0xf0, 0x23, 0xab, 0x37, 0xb4, 0x81, 0xcb, 0x2b, 0x30, 0x66, 0x26, 0xa0,
	0x81, 0x9a, 0xa8, 0x5d, 0xe5, 0xfb, 0x27, 0x3d, 0xc7, 0x25, 0x63, 0xb5, 0x8c, 0x44, 0x23, 0xdf,
	0x44, 0xed, 0x7a, 0xf7, 0x88, 0xfd, 0x6a, 0x65, 0x81, 0x12, 0x01, 0x24, 0xb0, 0xe4, 0xbb, 0xd0,
	0xd9, 0x6d, 0x56, 0x9a, 0x79, 0xb4, 0x8a, 0x8b, 0x13, 0xee, 0x5d, 0xfb, 0x24, 0x97, 0xca, 0x1b,
	0xbf, 0x37, 0x1d, 0x10, 0x44, 0x2b, 0xb8, 0x30, 0x0c, 0xfb, 0x23, 0x92, 0xa7, 0x35, 0x5c, 0x7e,
	0xf0, 0x78, 0x38, 0x0c, 0x07, 0xe4, 0x5f, 0x9a, 0xf0, 0x39, 0x1f, 0x71, 0x52, 0x48, 0x65, 0xdf,
	0x9b, 0x78, 0x01, 0x29, 0x76, 0xa7, 0x98, 0x06, 0x4a, 0xdc, 0xed, 0xb8, 0xc6, 0xa0, 0x13, 0xb9,
	0x00, 0x7a, 0x85, 0xcb, 0x3b, 0x16, 0x7a, 0x72, 0x30, 0xe7, 0x90, 0xf0, 0xf8, 0xcf, 0xd6, 0x0c,
	0xf6, 0x02, 0xf5, 0x86, 0x1f, 0x5b, 0x07, 0x7d, 0x6e, 0x1d, 0xf4, 0xb5, 0x75, 0xd0, 0xdb, 0xb7,
	0x93, 0x7b, 0x3c, 0x15, 0xd2, 0x3e, 0xaf, 0xe7, 0x6c, 0xa1, 0x56, 0xee, 0xfe, 0x93, 0xdb, 0x4b,
	0x45, 0x08, 0xd6, 0x9d, 0xc5, 0xd2, 0xb8, 0x49, 0xe7, 0x3d, 0x4f, 0xf6, 0x16, 0xf3, 0x62, 0x69,
	0xd8, 0x7d, 0x67, 0x5e, 0xca, 0x6e, 0x7d, 0xf9, 0x13, 0x00, 0x00, 0xff, 0xff, 0xfe, 0x86, 0x77,
	0x18, 0x80, 0x01, 0x00, 0x00,
}

// Reference imports to suppress errors if they are not otherwise used.
var _ context.Context
var _ grpc.ClientConn

// This is a compile-time assertion to ensure that this generated file
// is compatible with the grpc package it is being compiled against.
const _ = grpc.SupportPackageIsVersion4

// LogProviderServiceClient is the client API for LogProviderService service.
//
// For semantics around ctx use and closing/ending streaming RPCs, please refer to https://godoc.org/google.golang.org/grpc#ClientConn.NewStream.
type LogProviderServiceClient interface {
	// Record a log message.
	GetLogs(ctx context.Context, in *GetLogsRequest, opts ...grpc.CallOption) (LogProviderService_GetLogsClient, error)
}

type logProviderServiceClient struct {
	cc *grpc.ClientConn
}

func NewLogProviderServiceClient(cc *grpc.ClientConn) LogProviderServiceClient {
	return &logProviderServiceClient{cc}
}

func (c *logProviderServiceClient) GetLogs(ctx context.Context, in *GetLogsRequest, opts ...grpc.CallOption) (LogProviderService_GetLogsClient, error) {
	stream, err := c.cc.NewStream(ctx, &_LogProviderService_serviceDesc.Streams[0], "/binkynet.v1.LogProviderService/GetLogs", opts...)
	if err != nil {
		return nil, err
	}
	x := &logProviderServiceGetLogsClient{stream}
	if err := x.ClientStream.SendMsg(in); err != nil {
		return nil, err
	}
	if err := x.ClientStream.CloseSend(); err != nil {
		return nil, err
	}
	return x, nil
}

type LogProviderService_GetLogsClient interface {
	Recv() (*LogEntry, error)
	grpc.ClientStream
}

type logProviderServiceGetLogsClient struct {
	grpc.ClientStream
}

func (x *logProviderServiceGetLogsClient) Recv() (*LogEntry, error) {
	m := new(LogEntry)
	if err := x.ClientStream.RecvMsg(m); err != nil {
		return nil, err
	}
	return m, nil
}

// LogProviderServiceServer is the server API for LogProviderService service.
type LogProviderServiceServer interface {
	// Record a log message.
	GetLogs(*GetLogsRequest, LogProviderService_GetLogsServer) error
}

// UnimplementedLogProviderServiceServer can be embedded to have forward compatible implementations.
type UnimplementedLogProviderServiceServer struct {
}

func (*UnimplementedLogProviderServiceServer) GetLogs(req *GetLogsRequest, srv LogProviderService_GetLogsServer) error {
	return status.Errorf(codes.Unimplemented, "method GetLogs not implemented")
}

func RegisterLogProviderServiceServer(s *grpc.Server, srv LogProviderServiceServer) {
	s.RegisterService(&_LogProviderService_serviceDesc, srv)
}

func _LogProviderService_GetLogs_Handler(srv interface{}, stream grpc.ServerStream) error {
	m := new(GetLogsRequest)
	if err := stream.RecvMsg(m); err != nil {
		return err
	}
	return srv.(LogProviderServiceServer).GetLogs(m, &logProviderServiceGetLogsServer{stream})
}

type LogProviderService_GetLogsServer interface {
	Send(*LogEntry) error
	grpc.ServerStream
}

type logProviderServiceGetLogsServer struct {
	grpc.ServerStream
}

func (x *logProviderServiceGetLogsServer) Send(m *LogEntry) error {
	return x.ServerStream.SendMsg(m)
}

var _LogProviderService_serviceDesc = grpc.ServiceDesc{
	ServiceName: "binkynet.v1.LogProviderService",
	HandlerType: (*LogProviderServiceServer)(nil),
	Methods:     []grpc.MethodDesc{},
	Streams: []grpc.StreamDesc{
		{
			StreamName:    "GetLogs",
			Handler:       _LogProviderService_GetLogs_Handler,
			ServerStreams: true,
		},
	},
	Metadata: "logprovider.proto",
}

func (m *GetLogsRequest) Marshal() (dAtA []byte, err error) {
	size := m.Size()
	dAtA = make([]byte, size)
	n, err := m.MarshalToSizedBuffer(dAtA[:size])
	if err != nil {
		return nil, err
	}
	return dAtA[:n], nil
}

func (m *GetLogsRequest) MarshalTo(dAtA []byte) (int, error) {
	size := m.Size()
	return m.MarshalToSizedBuffer(dAtA[:size])
}

func (m *GetLogsRequest) MarshalToSizedBuffer(dAtA []byte) (int, error) {
	i := len(dAtA)
	_ = i
	var l int
	_ = l
	if m.XXX_unrecognized != nil {
		i -= len(m.XXX_unrecognized)
		copy(dAtA[i:], m.XXX_unrecognized)
	}
	return len(dAtA) - i, nil
}

func (m *LogEntry) Marshal() (dAtA []byte, err error) {
	size := m.Size()
	dAtA = make([]byte, size)
	n, err := m.MarshalToSizedBuffer(dAtA[:size])
	if err != nil {
		return nil, err
	}
	return dAtA[:n], nil
}

func (m *LogEntry) MarshalTo(dAtA []byte) (int, error) {
	size := m.Size()
	return m.MarshalToSizedBuffer(dAtA[:size])
}

func (m *LogEntry) MarshalToSizedBuffer(dAtA []byte) (int, error) {
	i := len(dAtA)
	_ = i
	var l int
	_ = l
	if m.XXX_unrecognized != nil {
		i -= len(m.XXX_unrecognized)
		copy(dAtA[i:], m.XXX_unrecognized)
	}
	if m.String_ != 0 {
		i = encodeVarintLogprovider(dAtA, i, uint64(m.String_))
		i--
		dAtA[i] = 0x10
	}
	if len(m.Message) > 0 {
		i -= len(m.Message)
		copy(dAtA[i:], m.Message)
		i = encodeVarintLogprovider(dAtA, i, uint64(len(m.Message)))
		i--
		dAtA[i] = 0xa
	}
	return len(dAtA) - i, nil
}

func encodeVarintLogprovider(dAtA []byte, offset int, v uint64) int {
	offset -= sovLogprovider(v)
	base := offset
	for v >= 1<<7 {
		dAtA[offset] = uint8(v&0x7f | 0x80)
		v >>= 7
		offset++
	}
	dAtA[offset] = uint8(v)
	return base
}
func (m *GetLogsRequest) Size() (n int) {
	if m == nil {
		return 0
	}
	var l int
	_ = l
	if m.XXX_unrecognized != nil {
		n += len(m.XXX_unrecognized)
	}
	return n
}

func (m *LogEntry) Size() (n int) {
	if m == nil {
		return 0
	}
	var l int
	_ = l
	l = len(m.Message)
	if l > 0 {
		n += 1 + l + sovLogprovider(uint64(l))
	}
	if m.String_ != 0 {
		n += 1 + sovLogprovider(uint64(m.String_))
	}
	if m.XXX_unrecognized != nil {
		n += len(m.XXX_unrecognized)
	}
	return n
}

func sovLogprovider(x uint64) (n int) {
	return (math_bits.Len64(x|1) + 6) / 7
}
func sozLogprovider(x uint64) (n int) {
	return sovLogprovider(uint64((x << 1) ^ uint64((int64(x) >> 63))))
}
func (m *GetLogsRequest) Unmarshal(dAtA []byte) error {
	l := len(dAtA)
	iNdEx := 0
	for iNdEx < l {
		preIndex := iNdEx
		var wire uint64
		for shift := uint(0); ; shift += 7 {
			if shift >= 64 {
				return ErrIntOverflowLogprovider
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
			return fmt.Errorf("proto: GetLogsRequest: wiretype end group for non-group")
		}
		if fieldNum <= 0 {
			return fmt.Errorf("proto: GetLogsRequest: illegal tag %d (wire type %d)", fieldNum, wire)
		}
		switch fieldNum {
		default:
			iNdEx = preIndex
			skippy, err := skipLogprovider(dAtA[iNdEx:])
			if err != nil {
				return err
			}
			if skippy < 0 {
				return ErrInvalidLengthLogprovider
			}
			if (iNdEx + skippy) < 0 {
				return ErrInvalidLengthLogprovider
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
func (m *LogEntry) Unmarshal(dAtA []byte) error {
	l := len(dAtA)
	iNdEx := 0
	for iNdEx < l {
		preIndex := iNdEx
		var wire uint64
		for shift := uint(0); ; shift += 7 {
			if shift >= 64 {
				return ErrIntOverflowLogprovider
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
			return fmt.Errorf("proto: LogEntry: wiretype end group for non-group")
		}
		if fieldNum <= 0 {
			return fmt.Errorf("proto: LogEntry: illegal tag %d (wire type %d)", fieldNum, wire)
		}
		switch fieldNum {
		case 1:
			if wireType != 2 {
				return fmt.Errorf("proto: wrong wireType = %d for field Message", wireType)
			}
			var stringLen uint64
			for shift := uint(0); ; shift += 7 {
				if shift >= 64 {
					return ErrIntOverflowLogprovider
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
				return ErrInvalidLengthLogprovider
			}
			postIndex := iNdEx + intStringLen
			if postIndex < 0 {
				return ErrInvalidLengthLogprovider
			}
			if postIndex > l {
				return io.ErrUnexpectedEOF
			}
			m.Message = string(dAtA[iNdEx:postIndex])
			iNdEx = postIndex
		case 2:
			if wireType != 0 {
				return fmt.Errorf("proto: wrong wireType = %d for field String_", wireType)
			}
			m.String_ = 0
			for shift := uint(0); ; shift += 7 {
				if shift >= 64 {
					return ErrIntOverflowLogprovider
				}
				if iNdEx >= l {
					return io.ErrUnexpectedEOF
				}
				b := dAtA[iNdEx]
				iNdEx++
				m.String_ |= LogLevel(b&0x7F) << shift
				if b < 0x80 {
					break
				}
			}
		default:
			iNdEx = preIndex
			skippy, err := skipLogprovider(dAtA[iNdEx:])
			if err != nil {
				return err
			}
			if skippy < 0 {
				return ErrInvalidLengthLogprovider
			}
			if (iNdEx + skippy) < 0 {
				return ErrInvalidLengthLogprovider
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
func skipLogprovider(dAtA []byte) (n int, err error) {
	l := len(dAtA)
	iNdEx := 0
	depth := 0
	for iNdEx < l {
		var wire uint64
		for shift := uint(0); ; shift += 7 {
			if shift >= 64 {
				return 0, ErrIntOverflowLogprovider
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
					return 0, ErrIntOverflowLogprovider
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
					return 0, ErrIntOverflowLogprovider
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
				return 0, ErrInvalidLengthLogprovider
			}
			iNdEx += length
		case 3:
			depth++
		case 4:
			if depth == 0 {
				return 0, ErrUnexpectedEndOfGroupLogprovider
			}
			depth--
		case 5:
			iNdEx += 4
		default:
			return 0, fmt.Errorf("proto: illegal wireType %d", wireType)
		}
		if iNdEx < 0 {
			return 0, ErrInvalidLengthLogprovider
		}
		if depth == 0 {
			return iNdEx, nil
		}
	}
	return 0, io.ErrUnexpectedEOF
}

var (
	ErrInvalidLengthLogprovider        = fmt.Errorf("proto: negative length found during unmarshaling")
	ErrIntOverflowLogprovider          = fmt.Errorf("proto: integer overflow")
	ErrUnexpectedEndOfGroupLogprovider = fmt.Errorf("proto: unexpected end of group")
)