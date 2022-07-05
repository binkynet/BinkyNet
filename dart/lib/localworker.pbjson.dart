///
//  Generated code. Do not modify.
//  source: localworker.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use getFeaturesRequestDescriptor instead')
const GetFeaturesRequest$json = const {
  '1': 'GetFeaturesRequest',
};

/// Descriptor for `GetFeaturesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getFeaturesRequestDescriptor = $convert.base64Decode('ChJHZXRGZWF0dXJlc1JlcXVlc3Q=');
@$core.Deprecated('Use featuresDescriptor instead')
const Features$json = const {
  '1': 'Features',
  '2': const [
    const {'1': 'power', '3': 1, '4': 1, '5': 8, '10': 'power'},
    const {'1': 'locs', '3': 2, '4': 1, '5': 8, '10': 'locs'},
    const {'1': 'outputs', '3': 3, '4': 1, '5': 8, '10': 'outputs'},
    const {'1': 'sensors', '3': 4, '4': 1, '5': 8, '10': 'sensors'},
    const {'1': 'switches', '3': 5, '4': 1, '5': 8, '10': 'switches'},
    const {'1': 'clock', '3': 6, '4': 1, '5': 8, '10': 'clock'},
  ],
};

/// Descriptor for `Features`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List featuresDescriptor = $convert.base64Decode('CghGZWF0dXJlcxIUCgVwb3dlchgBIAEoCFIFcG93ZXISEgoEbG9jcxgCIAEoCFIEbG9jcxIYCgdvdXRwdXRzGAMgASgIUgdvdXRwdXRzEhgKB3NlbnNvcnMYBCABKAhSB3NlbnNvcnMSGgoIc3dpdGNoZXMYBSABKAhSCHN3aXRjaGVzEhQKBWNsb2NrGAYgASgIUgVjbG9jaw==');
@$core.Deprecated('Use describeRequestDescriptor instead')
const DescribeRequest$json = const {
  '1': 'DescribeRequest',
};

/// Descriptor for `DescribeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List describeRequestDescriptor = $convert.base64Decode('Cg9EZXNjcmliZVJlcXVlc3Q=');
@$core.Deprecated('Use discoverDevicesRequestDescriptor instead')
const DiscoverDevicesRequest$json = const {
  '1': 'DiscoverDevicesRequest',
};

/// Descriptor for `DiscoverDevicesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List discoverDevicesRequestDescriptor = $convert.base64Decode('ChZEaXNjb3ZlckRldmljZXNSZXF1ZXN0');
@$core.Deprecated('Use discoverDevicesResultDescriptor instead')
const DiscoverDevicesResult$json = const {
  '1': 'DiscoverDevicesResult',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'addresses', '3': 2, '4': 3, '5': 9, '10': 'addresses'},
  ],
};

/// Descriptor for `DiscoverDevicesResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List discoverDevicesResultDescriptor = $convert.base64Decode('ChVEaXNjb3ZlckRldmljZXNSZXN1bHQSDgoCaWQYASABKAlSAmlkEhwKCWFkZHJlc3NlcxgCIAMoCVIJYWRkcmVzc2Vz');
@$core.Deprecated('Use getPowerActualsRequestDescriptor instead')
const GetPowerActualsRequest$json = const {
  '1': 'GetPowerActualsRequest',
};

/// Descriptor for `GetPowerActualsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPowerActualsRequestDescriptor = $convert.base64Decode('ChZHZXRQb3dlckFjdHVhbHNSZXF1ZXN0');
@$core.Deprecated('Use getLocActualsRequestDescriptor instead')
const GetLocActualsRequest$json = const {
  '1': 'GetLocActualsRequest',
};

/// Descriptor for `GetLocActualsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getLocActualsRequestDescriptor = $convert.base64Decode('ChRHZXRMb2NBY3R1YWxzUmVxdWVzdA==');
@$core.Deprecated('Use getSensorActualsRequestDescriptor instead')
const GetSensorActualsRequest$json = const {
  '1': 'GetSensorActualsRequest',
};

/// Descriptor for `GetSensorActualsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSensorActualsRequestDescriptor = $convert.base64Decode('ChdHZXRTZW5zb3JBY3R1YWxzUmVxdWVzdA==');
@$core.Deprecated('Use getOutputActualsRequestDescriptor instead')
const GetOutputActualsRequest$json = const {
  '1': 'GetOutputActualsRequest',
};

/// Descriptor for `GetOutputActualsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOutputActualsRequestDescriptor = $convert.base64Decode('ChdHZXRPdXRwdXRBY3R1YWxzUmVxdWVzdA==');
@$core.Deprecated('Use getSwitchActualsRequestDescriptor instead')
const GetSwitchActualsRequest$json = const {
  '1': 'GetSwitchActualsRequest',
};

/// Descriptor for `GetSwitchActualsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSwitchActualsRequestDescriptor = $convert.base64Decode('ChdHZXRTd2l0Y2hBY3R1YWxzUmVxdWVzdA==');
