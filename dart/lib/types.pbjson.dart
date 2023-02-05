///
//  Generated code. Do not modify.
//  source: types.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use locDirectionDescriptor instead')
const LocDirection$json = const {
  '1': 'LocDirection',
  '2': const [
    const {'1': 'FORWARD', '2': 0},
    const {'1': 'REVERSE', '2': 1},
  ],
};

/// Descriptor for `LocDirection`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List locDirectionDescriptor = $convert.base64Decode('CgxMb2NEaXJlY3Rpb24SCwoHRk9SV0FSRBAAEgsKB1JFVkVSU0UQAQ==');
@$core.Deprecated('Use switchDirectionDescriptor instead')
const SwitchDirection$json = const {
  '1': 'SwitchDirection',
  '2': const [
    const {'1': 'STRAIGHT', '2': 0},
    const {'1': 'OFF', '2': 1},
  ],
};

/// Descriptor for `SwitchDirection`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List switchDirectionDescriptor = $convert.base64Decode('Cg9Td2l0Y2hEaXJlY3Rpb24SDAoIU1RSQUlHSFQQABIHCgNPRkYQAQ==');
@$core.Deprecated('Use timePeriodDescriptor instead')
const TimePeriod$json = const {
  '1': 'TimePeriod',
  '2': const [
    const {'1': 'MORNING', '2': 0},
    const {'1': 'AFTERNOON', '2': 1},
    const {'1': 'EVENING', '2': 2},
    const {'1': 'NIGHT', '2': 3},
  ],
};

/// Descriptor for `TimePeriod`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List timePeriodDescriptor = $convert.base64Decode('CgpUaW1lUGVyaW9kEgsKB01PUk5JTkcQABINCglBRlRFUk5PT04QARILCgdFVkVOSU5HEAISCQoFTklHSFQQAw==');
@$core.Deprecated('Use emptyDescriptor instead')
const Empty$json = const {
  '1': 'Empty',
};

/// Descriptor for `Empty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyDescriptor = $convert.base64Decode('CgVFbXB0eQ==');
@$core.Deprecated('Use commandStationInfoDescriptor instead')
const CommandStationInfo$json = const {
  '1': 'CommandStationInfo',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'version', '3': 3, '4': 1, '5': 9, '10': 'version'},
    const {'1': 'uptime', '3': 4, '4': 1, '5': 3, '10': 'uptime'},
  ],
};

/// Descriptor for `CommandStationInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commandStationInfoDescriptor = $convert.base64Decode('ChJDb21tYW5kU3RhdGlvbkluZm8SDgoCaWQYASABKAlSAmlkEiAKC2Rlc2NyaXB0aW9uGAIgASgJUgtkZXNjcmlwdGlvbhIYCgd2ZXJzaW9uGAMgASgJUgd2ZXJzaW9uEhYKBnVwdGltZRgEIAEoA1IGdXB0aW1l');
@$core.Deprecated('Use localWorkerInfoDescriptor instead')
const LocalWorkerInfo$json = const {
  '1': 'LocalWorkerInfo',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'version', '3': 3, '4': 1, '5': 9, '10': 'version'},
    const {'1': 'uptime', '3': 4, '4': 1, '5': 3, '10': 'uptime'},
    const {'1': 'config_hash', '3': 5, '4': 1, '5': 9, '10': 'configHash'},
    const {'1': 'configured_device_ids', '3': 6, '4': 3, '5': 9, '10': 'configuredDeviceIds'},
    const {'1': 'configured_object_ids', '3': 7, '4': 3, '5': 9, '10': 'configuredObjectIds'},
    const {'1': 'unconfigured_device_ids', '3': 8, '4': 3, '5': 9, '10': 'unconfiguredDeviceIds'},
    const {'1': 'unconfigured_object_ids', '3': 9, '4': 3, '5': 9, '10': 'unconfiguredObjectIds'},
    const {'1': 'metrics_port', '3': 10, '4': 1, '5': 5, '10': 'metricsPort'},
    const {'1': 'metrics_secure', '3': 11, '4': 1, '5': 8, '10': 'metricsSecure'},
  ],
};

/// Descriptor for `LocalWorkerInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List localWorkerInfoDescriptor = $convert.base64Decode('Cg9Mb2NhbFdvcmtlckluZm8SDgoCaWQYASABKAlSAmlkEiAKC2Rlc2NyaXB0aW9uGAIgASgJUgtkZXNjcmlwdGlvbhIYCgd2ZXJzaW9uGAMgASgJUgd2ZXJzaW9uEhYKBnVwdGltZRgEIAEoA1IGdXB0aW1lEh8KC2NvbmZpZ19oYXNoGAUgASgJUgpjb25maWdIYXNoEjIKFWNvbmZpZ3VyZWRfZGV2aWNlX2lkcxgGIAMoCVITY29uZmlndXJlZERldmljZUlkcxIyChVjb25maWd1cmVkX29iamVjdF9pZHMYByADKAlSE2NvbmZpZ3VyZWRPYmplY3RJZHMSNgoXdW5jb25maWd1cmVkX2RldmljZV9pZHMYCCADKAlSFXVuY29uZmlndXJlZERldmljZUlkcxI2Chd1bmNvbmZpZ3VyZWRfb2JqZWN0X2lkcxgJIAMoCVIVdW5jb25maWd1cmVkT2JqZWN0SWRzEiEKDG1ldHJpY3NfcG9ydBgKIAEoBVILbWV0cmljc1BvcnQSJQoObWV0cmljc19zZWN1cmUYCyABKAhSDW1ldHJpY3NTZWN1cmU=');
@$core.Deprecated('Use powerRequestsOptionsDescriptor instead')
const PowerRequestsOptions$json = const {
  '1': 'PowerRequestsOptions',
  '2': const [
    const {'1': 'manual_confirm', '3': 1, '4': 1, '5': 8, '10': 'manualConfirm'},
  ],
};

/// Descriptor for `PowerRequestsOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List powerRequestsOptionsDescriptor = $convert.base64Decode('ChRQb3dlclJlcXVlc3RzT3B0aW9ucxIlCg5tYW51YWxfY29uZmlybRgBIAEoCFINbWFudWFsQ29uZmlybQ==');
@$core.Deprecated('Use powerDescriptor instead')
const Power$json = const {
  '1': 'Power',
  '2': const [
    const {'1': 'request', '3': 1, '4': 1, '5': 11, '6': '.binkynet.v1.PowerState', '10': 'request'},
    const {'1': 'actual', '3': 2, '4': 1, '5': 11, '6': '.binkynet.v1.PowerState', '10': 'actual'},
  ],
};

/// Descriptor for `Power`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List powerDescriptor = $convert.base64Decode('CgVQb3dlchIxCgdyZXF1ZXN0GAEgASgLMhcuYmlua3luZXQudjEuUG93ZXJTdGF0ZVIHcmVxdWVzdBIvCgZhY3R1YWwYAiABKAsyFy5iaW5reW5ldC52MS5Qb3dlclN0YXRlUgZhY3R1YWw=');
@$core.Deprecated('Use powerStateDescriptor instead')
const PowerState$json = const {
  '1': 'PowerState',
  '2': const [
    const {'1': 'enabled', '3': 1, '4': 1, '5': 8, '10': 'enabled'},
  ],
};

/// Descriptor for `PowerState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List powerStateDescriptor = $convert.base64Decode('CgpQb3dlclN0YXRlEhgKB2VuYWJsZWQYASABKAhSB2VuYWJsZWQ=');
@$core.Deprecated('Use locRequestsOptionsDescriptor instead')
const LocRequestsOptions$json = const {
  '1': 'LocRequestsOptions',
  '2': const [
    const {'1': 'manual_confirm', '3': 1, '4': 1, '5': 8, '10': 'manualConfirm'},
  ],
};

/// Descriptor for `LocRequestsOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List locRequestsOptionsDescriptor = $convert.base64Decode('ChJMb2NSZXF1ZXN0c09wdGlvbnMSJQoObWFudWFsX2NvbmZpcm0YASABKAhSDW1hbnVhbENvbmZpcm0=');
@$core.Deprecated('Use locDescriptor instead')
const Loc$json = const {
  '1': 'Loc',
  '2': const [
    const {'1': 'address', '3': 1, '4': 1, '5': 9, '8': const {}, '10': 'address'},
    const {'1': 'request', '3': 2, '4': 1, '5': 11, '6': '.binkynet.v1.LocState', '10': 'request'},
    const {'1': 'actual', '3': 3, '4': 1, '5': 11, '6': '.binkynet.v1.LocState', '10': 'actual'},
  ],
};

/// Descriptor for `Loc`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List locDescriptor = $convert.base64Decode('CgNMb2MSLwoHYWRkcmVzcxgBIAEoCUIV2t4fDU9iamVjdEFkZHJlc3PI3h8AUgdhZGRyZXNzEi8KB3JlcXVlc3QYAiABKAsyFS5iaW5reW5ldC52MS5Mb2NTdGF0ZVIHcmVxdWVzdBItCgZhY3R1YWwYAyABKAsyFS5iaW5reW5ldC52MS5Mb2NTdGF0ZVIGYWN0dWFs');
@$core.Deprecated('Use locStateDescriptor instead')
const LocState$json = const {
  '1': 'LocState',
  '2': const [
    const {'1': 'speed', '3': 1, '4': 1, '5': 5, '10': 'speed'},
    const {'1': 'speed_steps', '3': 2, '4': 1, '5': 5, '10': 'speedSteps'},
    const {'1': 'direction', '3': 3, '4': 1, '5': 14, '6': '.binkynet.v1.LocDirection', '10': 'direction'},
    const {'1': 'functions', '3': 4, '4': 3, '5': 11, '6': '.binkynet.v1.LocState.FunctionsEntry', '10': 'functions'},
  ],
  '3': const [LocState_FunctionsEntry$json],
};

@$core.Deprecated('Use locStateDescriptor instead')
const LocState_FunctionsEntry$json = const {
  '1': 'FunctionsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 5, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 8, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `LocState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List locStateDescriptor = $convert.base64Decode('CghMb2NTdGF0ZRIUCgVzcGVlZBgBIAEoBVIFc3BlZWQSHwoLc3BlZWRfc3RlcHMYAiABKAVSCnNwZWVkU3RlcHMSNwoJZGlyZWN0aW9uGAMgASgOMhkuYmlua3luZXQudjEuTG9jRGlyZWN0aW9uUglkaXJlY3Rpb24SQgoJZnVuY3Rpb25zGAQgAygLMiQuYmlua3luZXQudjEuTG9jU3RhdGUuRnVuY3Rpb25zRW50cnlSCWZ1bmN0aW9ucxo8Cg5GdW5jdGlvbnNFbnRyeRIQCgNrZXkYASABKAVSA2tleRIUCgV2YWx1ZRgCIAEoCFIFdmFsdWU6AjgB');
@$core.Deprecated('Use sensorDescriptor instead')
const Sensor$json = const {
  '1': 'Sensor',
  '2': const [
    const {'1': 'address', '3': 1, '4': 1, '5': 9, '8': const {}, '10': 'address'},
    const {'1': 'actual', '3': 2, '4': 1, '5': 11, '6': '.binkynet.v1.SensorState', '10': 'actual'},
  ],
};

/// Descriptor for `Sensor`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sensorDescriptor = $convert.base64Decode('CgZTZW5zb3ISLwoHYWRkcmVzcxgBIAEoCUIV2t4fDU9iamVjdEFkZHJlc3PI3h8AUgdhZGRyZXNzEjAKBmFjdHVhbBgCIAEoCzIYLmJpbmt5bmV0LnYxLlNlbnNvclN0YXRlUgZhY3R1YWw=');
@$core.Deprecated('Use sensorStateDescriptor instead')
const SensorState$json = const {
  '1': 'SensorState',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 5, '10': 'value'},
  ],
};

/// Descriptor for `SensorState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sensorStateDescriptor = $convert.base64Decode('CgtTZW5zb3JTdGF0ZRIUCgV2YWx1ZRgBIAEoBVIFdmFsdWU=');
@$core.Deprecated('Use outputRequestsOptionsDescriptor instead')
const OutputRequestsOptions$json = const {
  '1': 'OutputRequestsOptions',
  '2': const [
    const {'1': 'manual_confirm', '3': 1, '4': 1, '5': 8, '10': 'manualConfirm'},
    const {'1': 'module_id', '3': 2, '4': 1, '5': 9, '10': 'moduleId'},
  ],
};

/// Descriptor for `OutputRequestsOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List outputRequestsOptionsDescriptor = $convert.base64Decode('ChVPdXRwdXRSZXF1ZXN0c09wdGlvbnMSJQoObWFudWFsX2NvbmZpcm0YASABKAhSDW1hbnVhbENvbmZpcm0SGwoJbW9kdWxlX2lkGAIgASgJUghtb2R1bGVJZA==');
@$core.Deprecated('Use outputDescriptor instead')
const Output$json = const {
  '1': 'Output',
  '2': const [
    const {'1': 'address', '3': 1, '4': 1, '5': 9, '8': const {}, '10': 'address'},
    const {'1': 'request', '3': 2, '4': 1, '5': 11, '6': '.binkynet.v1.OutputState', '10': 'request'},
    const {'1': 'actual', '3': 3, '4': 1, '5': 11, '6': '.binkynet.v1.OutputState', '10': 'actual'},
  ],
};

/// Descriptor for `Output`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List outputDescriptor = $convert.base64Decode('CgZPdXRwdXQSLwoHYWRkcmVzcxgBIAEoCUIV2t4fDU9iamVjdEFkZHJlc3PI3h8AUgdhZGRyZXNzEjIKB3JlcXVlc3QYAiABKAsyGC5iaW5reW5ldC52MS5PdXRwdXRTdGF0ZVIHcmVxdWVzdBIwCgZhY3R1YWwYAyABKAsyGC5iaW5reW5ldC52MS5PdXRwdXRTdGF0ZVIGYWN0dWFs');
@$core.Deprecated('Use outputStateDescriptor instead')
const OutputState$json = const {
  '1': 'OutputState',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 5, '10': 'value'},
  ],
};

/// Descriptor for `OutputState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List outputStateDescriptor = $convert.base64Decode('CgtPdXRwdXRTdGF0ZRIUCgV2YWx1ZRgBIAEoBVIFdmFsdWU=');
@$core.Deprecated('Use switchRequestsOptionsDescriptor instead')
const SwitchRequestsOptions$json = const {
  '1': 'SwitchRequestsOptions',
  '2': const [
    const {'1': 'manual_confirm', '3': 1, '4': 1, '5': 8, '10': 'manualConfirm'},
    const {'1': 'module_id', '3': 2, '4': 1, '5': 9, '10': 'moduleId'},
  ],
};

/// Descriptor for `SwitchRequestsOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List switchRequestsOptionsDescriptor = $convert.base64Decode('ChVTd2l0Y2hSZXF1ZXN0c09wdGlvbnMSJQoObWFudWFsX2NvbmZpcm0YASABKAhSDW1hbnVhbENvbmZpcm0SGwoJbW9kdWxlX2lkGAIgASgJUghtb2R1bGVJZA==');
@$core.Deprecated('Use switchDescriptor instead')
const Switch$json = const {
  '1': 'Switch',
  '2': const [
    const {'1': 'address', '3': 1, '4': 1, '5': 9, '8': const {}, '10': 'address'},
    const {'1': 'request', '3': 2, '4': 1, '5': 11, '6': '.binkynet.v1.SwitchState', '10': 'request'},
    const {'1': 'actual', '3': 3, '4': 1, '5': 11, '6': '.binkynet.v1.SwitchState', '10': 'actual'},
  ],
};

/// Descriptor for `Switch`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List switchDescriptor = $convert.base64Decode('CgZTd2l0Y2gSLwoHYWRkcmVzcxgBIAEoCUIV2t4fDU9iamVjdEFkZHJlc3PI3h8AUgdhZGRyZXNzEjIKB3JlcXVlc3QYAiABKAsyGC5iaW5reW5ldC52MS5Td2l0Y2hTdGF0ZVIHcmVxdWVzdBIwCgZhY3R1YWwYAyABKAsyGC5iaW5reW5ldC52MS5Td2l0Y2hTdGF0ZVIGYWN0dWFs');
@$core.Deprecated('Use switchStateDescriptor instead')
const SwitchState$json = const {
  '1': 'SwitchState',
  '2': const [
    const {'1': 'direction', '3': 1, '4': 1, '5': 14, '6': '.binkynet.v1.SwitchDirection', '10': 'direction'},
  ],
};

/// Descriptor for `SwitchState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List switchStateDescriptor = $convert.base64Decode('CgtTd2l0Y2hTdGF0ZRI6CglkaXJlY3Rpb24YASABKA4yHC5iaW5reW5ldC52MS5Td2l0Y2hEaXJlY3Rpb25SCWRpcmVjdGlvbg==');
@$core.Deprecated('Use clockDescriptor instead')
const Clock$json = const {
  '1': 'Clock',
  '2': const [
    const {'1': 'period', '3': 1, '4': 1, '5': 14, '6': '.binkynet.v1.TimePeriod', '10': 'period'},
    const {'1': 'hours', '3': 2, '4': 1, '5': 5, '10': 'hours'},
    const {'1': 'minutes', '3': 3, '4': 1, '5': 5, '10': 'minutes'},
    const {'1': 'unixtime', '3': 4, '4': 1, '5': 3, '10': 'unixtime'},
  ],
};

/// Descriptor for `Clock`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clockDescriptor = $convert.base64Decode('CgVDbG9jaxIvCgZwZXJpb2QYASABKA4yFy5iaW5reW5ldC52MS5UaW1lUGVyaW9kUgZwZXJpb2QSFAoFaG91cnMYAiABKAVSBWhvdXJzEhgKB21pbnV0ZXMYAyABKAVSB21pbnV0ZXMSGgoIdW5peHRpbWUYBCABKANSCHVuaXh0aW1l');
@$core.Deprecated('Use deviceDescriptor instead')
const Device$json = const {
  '1': 'Device',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '8': const {}, '10': 'id'},
    const {'1': 'type', '3': 2, '4': 1, '5': 9, '8': const {}, '10': 'type'},
    const {'1': 'address', '3': 3, '4': 1, '5': 9, '10': 'address'},
  ],
};

/// Descriptor for `Device`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deviceDescriptor = $convert.base64Decode('CgZEZXZpY2USIAoCaWQYASABKAlCENreHwhEZXZpY2VJRMjeHwBSAmlkEiYKBHR5cGUYAiABKAlCEtreHwpEZXZpY2VUeXBlyN4fAFIEdHlwZRIYCgdhZGRyZXNzGAMgASgJUgdhZGRyZXNz');
@$core.Deprecated('Use objectDescriptor instead')
const Object$json = const {
  '1': 'Object',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '8': const {}, '10': 'id'},
    const {'1': 'type', '3': 2, '4': 1, '5': 9, '8': const {}, '10': 'type'},
    const {'1': 'connections', '3': 3, '4': 3, '5': 11, '6': '.binkynet.v1.Connection', '10': 'connections'},
  ],
};

/// Descriptor for `Object`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List objectDescriptor = $convert.base64Decode('CgZPYmplY3QSIAoCaWQYASABKAlCENreHwhPYmplY3RJRMjeHwBSAmlkEiYKBHR5cGUYAiABKAlCEtreHwpPYmplY3RUeXBlyN4fAFIEdHlwZRI5Cgtjb25uZWN0aW9ucxgDIAMoCzIXLmJpbmt5bmV0LnYxLkNvbm5lY3Rpb25SC2Nvbm5lY3Rpb25z');
@$core.Deprecated('Use connectionDescriptor instead')
const Connection$json = const {
  '1': 'Connection',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '8': const {}, '10': 'key'},
    const {'1': 'pins', '3': 2, '4': 3, '5': 11, '6': '.binkynet.v1.DevicePin', '10': 'pins'},
    const {'1': 'configuration', '3': 3, '4': 3, '5': 11, '6': '.binkynet.v1.Connection.ConfigurationEntry', '8': const {}, '10': 'configuration'},
  ],
  '3': const [Connection_ConfigurationEntry$json],
};

@$core.Deprecated('Use connectionDescriptor instead')
const Connection_ConfigurationEntry$json = const {
  '1': 'ConfigurationEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `Connection`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List connectionDescriptor = $convert.base64Decode('CgpDb25uZWN0aW9uEigKA2tleRgBIAEoCUIW2t4fDkNvbm5lY3Rpb25OYW1lyN4fAFIDa2V5EioKBHBpbnMYAiADKAsyFi5iaW5reW5ldC52MS5EZXZpY2VQaW5SBHBpbnMSXwoNY29uZmlndXJhdGlvbhgDIAMoCzIqLmJpbmt5bmV0LnYxLkNvbm5lY3Rpb24uQ29uZmlndXJhdGlvbkVudHJ5Qg2C3x8JQ29uZmlnS2V5Ug1jb25maWd1cmF0aW9uGkAKEkNvbmZpZ3VyYXRpb25FbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgB');
@$core.Deprecated('Use devicePinDescriptor instead')
const DevicePin$json = const {
  '1': 'DevicePin',
  '2': const [
    const {'1': 'device_id', '3': 1, '4': 1, '5': 9, '8': const {}, '10': 'deviceId'},
    const {'1': 'index', '3': 2, '4': 1, '5': 4, '8': const {}, '10': 'index'},
  ],
};

/// Descriptor for `DevicePin`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List devicePinDescriptor = $convert.base64Decode('CglEZXZpY2VQaW4SNwoJZGV2aWNlX2lkGAEgASgJQhra3h8IRGV2aWNlSUTI3h8A6t4fBmRldmljZVIIZGV2aWNlSWQSKQoFaW5kZXgYAiABKARCE9reHwtEZXZpY2VJbmRleMjeHwBSBWluZGV4');
@$core.Deprecated('Use localWorkerConfigDescriptor instead')
const LocalWorkerConfig$json = const {
  '1': 'LocalWorkerConfig',
  '2': const [
    const {'1': 'alias', '3': 1, '4': 1, '5': 9, '10': 'alias'},
    const {'1': 'devices', '3': 2, '4': 3, '5': 11, '6': '.binkynet.v1.Device', '10': 'devices'},
    const {'1': 'objects', '3': 3, '4': 3, '5': 11, '6': '.binkynet.v1.Object', '10': 'objects'},
    const {'1': 'unixtime', '3': 4, '4': 1, '5': 3, '10': 'unixtime'},
    const {'1': 'hash', '3': 5, '4': 1, '5': 9, '10': 'hash'},
  ],
};

/// Descriptor for `LocalWorkerConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List localWorkerConfigDescriptor = $convert.base64Decode('ChFMb2NhbFdvcmtlckNvbmZpZxIUCgVhbGlhcxgBIAEoCVIFYWxpYXMSLQoHZGV2aWNlcxgCIAMoCzITLmJpbmt5bmV0LnYxLkRldmljZVIHZGV2aWNlcxItCgdvYmplY3RzGAMgAygLMhMuYmlua3luZXQudjEuT2JqZWN0UgdvYmplY3RzEhoKCHVuaXh0aW1lGAQgASgDUgh1bml4dGltZRISCgRoYXNoGAUgASgJUgRoYXNo');
@$core.Deprecated('Use localWorkerDescriptor instead')
const LocalWorker$json = const {
  '1': 'LocalWorker',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'request', '3': 2, '4': 1, '5': 11, '6': '.binkynet.v1.LocalWorkerConfig', '10': 'request'},
    const {'1': 'actual', '3': 3, '4': 1, '5': 11, '6': '.binkynet.v1.LocalWorkerInfo', '10': 'actual'},
  ],
};

/// Descriptor for `LocalWorker`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List localWorkerDescriptor = $convert.base64Decode('CgtMb2NhbFdvcmtlchIOCgJpZBgBIAEoCVICaWQSOAoHcmVxdWVzdBgCIAEoCzIeLmJpbmt5bmV0LnYxLkxvY2FsV29ya2VyQ29uZmlnUgdyZXF1ZXN0EjQKBmFjdHVhbBgDIAEoCzIcLmJpbmt5bmV0LnYxLkxvY2FsV29ya2VySW5mb1IGYWN0dWFs');
@$core.Deprecated('Use deviceDiscoveryDescriptor instead')
const DeviceDiscovery$json = const {
  '1': 'DeviceDiscovery',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'request', '3': 2, '4': 1, '5': 11, '6': '.binkynet.v1.DiscoverRequest', '10': 'request'},
    const {'1': 'actual', '3': 3, '4': 1, '5': 11, '6': '.binkynet.v1.DiscoverResult', '10': 'actual'},
  ],
};

/// Descriptor for `DeviceDiscovery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deviceDiscoveryDescriptor = $convert.base64Decode('Cg9EZXZpY2VEaXNjb3ZlcnkSDgoCaWQYASABKAlSAmlkEjYKB3JlcXVlc3QYAiABKAsyHC5iaW5reW5ldC52MS5EaXNjb3ZlclJlcXVlc3RSB3JlcXVlc3QSMwoGYWN0dWFsGAMgASgLMhsuYmlua3luZXQudjEuRGlzY292ZXJSZXN1bHRSBmFjdHVhbA==');
@$core.Deprecated('Use discoverRequestDescriptor instead')
const DiscoverRequest$json = const {
  '1': 'DiscoverRequest',
  '2': const [
    const {'1': 'request_id', '3': 1, '4': 1, '5': 5, '10': 'requestId'},
  ],
};

/// Descriptor for `DiscoverRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List discoverRequestDescriptor = $convert.base64Decode('Cg9EaXNjb3ZlclJlcXVlc3QSHQoKcmVxdWVzdF9pZBgBIAEoBVIJcmVxdWVzdElk');
@$core.Deprecated('Use discoverResultDescriptor instead')
const DiscoverResult$json = const {
  '1': 'DiscoverResult',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'addresses', '3': 2, '4': 3, '5': 9, '10': 'addresses'},
  ],
};

/// Descriptor for `DiscoverResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List discoverResultDescriptor = $convert.base64Decode('Cg5EaXNjb3ZlclJlc3VsdBIOCgJpZBgBIAEoCVICaWQSHAoJYWRkcmVzc2VzGAIgAygJUglhZGRyZXNzZXM=');
