///
//  Generated code. Do not modify.
//  source: logprovider.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use logLevelDescriptor instead')
const LogLevel$json = const {
  '1': 'LogLevel',
  '2': const [
    const {'1': 'TRACE', '2': 0},
    const {'1': 'DEBUG', '2': 1},
    const {'1': 'INFO', '2': 2},
    const {'1': 'WARNING', '2': 3},
    const {'1': 'ERROR', '2': 4},
    const {'1': 'FATAL', '2': 5},
  ],
};

/// Descriptor for `LogLevel`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List logLevelDescriptor = $convert.base64Decode('CghMb2dMZXZlbBIJCgVUUkFDRRAAEgkKBURFQlVHEAESCAoESU5GTxACEgsKB1dBUk5JTkcQAxIJCgVFUlJPUhAEEgkKBUZBVEFMEAU=');
@$core.Deprecated('Use getLogsRequestDescriptor instead')
const GetLogsRequest$json = const {
  '1': 'GetLogsRequest',
};

/// Descriptor for `GetLogsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getLogsRequestDescriptor = $convert.base64Decode('Cg5HZXRMb2dzUmVxdWVzdA==');
@$core.Deprecated('Use logEntryDescriptor instead')
const LogEntry$json = const {
  '1': 'LogEntry',
  '2': const [
    const {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'level', '3': 2, '4': 1, '5': 14, '6': '.binkynet.v1.LogLevel', '10': 'level'},
  ],
};

/// Descriptor for `LogEntry`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List logEntryDescriptor = $convert.base64Decode('CghMb2dFbnRyeRIYCgdtZXNzYWdlGAEgASgJUgdtZXNzYWdlEisKBWxldmVsGAIgASgOMhUuYmlua3luZXQudjEuTG9nTGV2ZWxSBWxldmVs');
