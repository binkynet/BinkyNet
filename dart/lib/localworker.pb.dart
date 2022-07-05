///
//  Generated code. Do not modify.
//  source: localworker.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class GetFeaturesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetFeaturesRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'binkynet.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetFeaturesRequest._() : super();
  factory GetFeaturesRequest() => create();
  factory GetFeaturesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetFeaturesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetFeaturesRequest clone() => GetFeaturesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetFeaturesRequest copyWith(void Function(GetFeaturesRequest) updates) => super.copyWith((message) => updates(message as GetFeaturesRequest)) as GetFeaturesRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetFeaturesRequest create() => GetFeaturesRequest._();
  GetFeaturesRequest createEmptyInstance() => create();
  static $pb.PbList<GetFeaturesRequest> createRepeated() => $pb.PbList<GetFeaturesRequest>();
  @$core.pragma('dart2js:noInline')
  static GetFeaturesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetFeaturesRequest>(create);
  static GetFeaturesRequest? _defaultInstance;
}

class Features extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Features', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'binkynet.v1'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'power')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'locs')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'outputs')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sensors')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'switches')
    ..aOB(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'clock')
    ..hasRequiredFields = false
  ;

  Features._() : super();
  factory Features({
    $core.bool? power,
    $core.bool? locs,
    $core.bool? outputs,
    $core.bool? sensors,
    $core.bool? switches,
    $core.bool? clock,
  }) {
    final _result = create();
    if (power != null) {
      _result.power = power;
    }
    if (locs != null) {
      _result.locs = locs;
    }
    if (outputs != null) {
      _result.outputs = outputs;
    }
    if (sensors != null) {
      _result.sensors = sensors;
    }
    if (switches != null) {
      _result.switches = switches;
    }
    if (clock != null) {
      _result.clock = clock;
    }
    return _result;
  }
  factory Features.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Features.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Features clone() => Features()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Features copyWith(void Function(Features) updates) => super.copyWith((message) => updates(message as Features)) as Features; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Features create() => Features._();
  Features createEmptyInstance() => create();
  static $pb.PbList<Features> createRepeated() => $pb.PbList<Features>();
  @$core.pragma('dart2js:noInline')
  static Features getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Features>(create);
  static Features? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get power => $_getBF(0);
  @$pb.TagNumber(1)
  set power($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPower() => $_has(0);
  @$pb.TagNumber(1)
  void clearPower() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get locs => $_getBF(1);
  @$pb.TagNumber(2)
  set locs($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLocs() => $_has(1);
  @$pb.TagNumber(2)
  void clearLocs() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get outputs => $_getBF(2);
  @$pb.TagNumber(3)
  set outputs($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOutputs() => $_has(2);
  @$pb.TagNumber(3)
  void clearOutputs() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get sensors => $_getBF(3);
  @$pb.TagNumber(4)
  set sensors($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSensors() => $_has(3);
  @$pb.TagNumber(4)
  void clearSensors() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get switches => $_getBF(4);
  @$pb.TagNumber(5)
  set switches($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSwitches() => $_has(4);
  @$pb.TagNumber(5)
  void clearSwitches() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get clock => $_getBF(5);
  @$pb.TagNumber(6)
  set clock($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasClock() => $_has(5);
  @$pb.TagNumber(6)
  void clearClock() => clearField(6);
}

class DescribeRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DescribeRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'binkynet.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  DescribeRequest._() : super();
  factory DescribeRequest() => create();
  factory DescribeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DescribeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DescribeRequest clone() => DescribeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DescribeRequest copyWith(void Function(DescribeRequest) updates) => super.copyWith((message) => updates(message as DescribeRequest)) as DescribeRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DescribeRequest create() => DescribeRequest._();
  DescribeRequest createEmptyInstance() => create();
  static $pb.PbList<DescribeRequest> createRepeated() => $pb.PbList<DescribeRequest>();
  @$core.pragma('dart2js:noInline')
  static DescribeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DescribeRequest>(create);
  static DescribeRequest? _defaultInstance;
}

class DiscoverDevicesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DiscoverDevicesRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'binkynet.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  DiscoverDevicesRequest._() : super();
  factory DiscoverDevicesRequest() => create();
  factory DiscoverDevicesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DiscoverDevicesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DiscoverDevicesRequest clone() => DiscoverDevicesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DiscoverDevicesRequest copyWith(void Function(DiscoverDevicesRequest) updates) => super.copyWith((message) => updates(message as DiscoverDevicesRequest)) as DiscoverDevicesRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DiscoverDevicesRequest create() => DiscoverDevicesRequest._();
  DiscoverDevicesRequest createEmptyInstance() => create();
  static $pb.PbList<DiscoverDevicesRequest> createRepeated() => $pb.PbList<DiscoverDevicesRequest>();
  @$core.pragma('dart2js:noInline')
  static DiscoverDevicesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DiscoverDevicesRequest>(create);
  static DiscoverDevicesRequest? _defaultInstance;
}

class DiscoverDevicesResult extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DiscoverDevicesResult', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'binkynet.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..pPS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addresses')
    ..hasRequiredFields = false
  ;

  DiscoverDevicesResult._() : super();
  factory DiscoverDevicesResult({
    $core.String? id,
    $core.Iterable<$core.String>? addresses,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (addresses != null) {
      _result.addresses.addAll(addresses);
    }
    return _result;
  }
  factory DiscoverDevicesResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DiscoverDevicesResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DiscoverDevicesResult clone() => DiscoverDevicesResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DiscoverDevicesResult copyWith(void Function(DiscoverDevicesResult) updates) => super.copyWith((message) => updates(message as DiscoverDevicesResult)) as DiscoverDevicesResult; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DiscoverDevicesResult create() => DiscoverDevicesResult._();
  DiscoverDevicesResult createEmptyInstance() => create();
  static $pb.PbList<DiscoverDevicesResult> createRepeated() => $pb.PbList<DiscoverDevicesResult>();
  @$core.pragma('dart2js:noInline')
  static DiscoverDevicesResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DiscoverDevicesResult>(create);
  static DiscoverDevicesResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get addresses => $_getList(1);
}

class GetPowerActualsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetPowerActualsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'binkynet.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetPowerActualsRequest._() : super();
  factory GetPowerActualsRequest() => create();
  factory GetPowerActualsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPowerActualsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPowerActualsRequest clone() => GetPowerActualsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPowerActualsRequest copyWith(void Function(GetPowerActualsRequest) updates) => super.copyWith((message) => updates(message as GetPowerActualsRequest)) as GetPowerActualsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetPowerActualsRequest create() => GetPowerActualsRequest._();
  GetPowerActualsRequest createEmptyInstance() => create();
  static $pb.PbList<GetPowerActualsRequest> createRepeated() => $pb.PbList<GetPowerActualsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetPowerActualsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPowerActualsRequest>(create);
  static GetPowerActualsRequest? _defaultInstance;
}

class GetLocActualsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetLocActualsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'binkynet.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetLocActualsRequest._() : super();
  factory GetLocActualsRequest() => create();
  factory GetLocActualsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetLocActualsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetLocActualsRequest clone() => GetLocActualsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetLocActualsRequest copyWith(void Function(GetLocActualsRequest) updates) => super.copyWith((message) => updates(message as GetLocActualsRequest)) as GetLocActualsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetLocActualsRequest create() => GetLocActualsRequest._();
  GetLocActualsRequest createEmptyInstance() => create();
  static $pb.PbList<GetLocActualsRequest> createRepeated() => $pb.PbList<GetLocActualsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetLocActualsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetLocActualsRequest>(create);
  static GetLocActualsRequest? _defaultInstance;
}

class GetSensorActualsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetSensorActualsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'binkynet.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetSensorActualsRequest._() : super();
  factory GetSensorActualsRequest() => create();
  factory GetSensorActualsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSensorActualsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSensorActualsRequest clone() => GetSensorActualsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSensorActualsRequest copyWith(void Function(GetSensorActualsRequest) updates) => super.copyWith((message) => updates(message as GetSensorActualsRequest)) as GetSensorActualsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetSensorActualsRequest create() => GetSensorActualsRequest._();
  GetSensorActualsRequest createEmptyInstance() => create();
  static $pb.PbList<GetSensorActualsRequest> createRepeated() => $pb.PbList<GetSensorActualsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetSensorActualsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSensorActualsRequest>(create);
  static GetSensorActualsRequest? _defaultInstance;
}

class GetOutputActualsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetOutputActualsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'binkynet.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetOutputActualsRequest._() : super();
  factory GetOutputActualsRequest() => create();
  factory GetOutputActualsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetOutputActualsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetOutputActualsRequest clone() => GetOutputActualsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetOutputActualsRequest copyWith(void Function(GetOutputActualsRequest) updates) => super.copyWith((message) => updates(message as GetOutputActualsRequest)) as GetOutputActualsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetOutputActualsRequest create() => GetOutputActualsRequest._();
  GetOutputActualsRequest createEmptyInstance() => create();
  static $pb.PbList<GetOutputActualsRequest> createRepeated() => $pb.PbList<GetOutputActualsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetOutputActualsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetOutputActualsRequest>(create);
  static GetOutputActualsRequest? _defaultInstance;
}

class GetSwitchActualsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetSwitchActualsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'binkynet.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetSwitchActualsRequest._() : super();
  factory GetSwitchActualsRequest() => create();
  factory GetSwitchActualsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSwitchActualsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSwitchActualsRequest clone() => GetSwitchActualsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSwitchActualsRequest copyWith(void Function(GetSwitchActualsRequest) updates) => super.copyWith((message) => updates(message as GetSwitchActualsRequest)) as GetSwitchActualsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetSwitchActualsRequest create() => GetSwitchActualsRequest._();
  GetSwitchActualsRequest createEmptyInstance() => create();
  static $pb.PbList<GetSwitchActualsRequest> createRepeated() => $pb.PbList<GetSwitchActualsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetSwitchActualsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSwitchActualsRequest>(create);
  static GetSwitchActualsRequest? _defaultInstance;
}

