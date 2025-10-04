///
//  Generated code. Do not modify.
//  source: types.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'types.pbenum.dart';

export 'types.pbenum.dart';

class Empty extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Empty', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'binkynet.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  Empty._() : super();
  factory Empty() => create();
  factory Empty.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Empty.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Empty clone() => Empty()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Empty copyWith(void Function(Empty) updates) => super.copyWith((message) => updates(message as Empty)) as Empty; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Empty create() => Empty._();
  Empty createEmptyInstance() => create();
  static $pb.PbList<Empty> createRepeated() => $pb.PbList<Empty>();
  @$core.pragma('dart2js:noInline')
  static Empty getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Empty>(create);
  static Empty? _defaultInstance;
}

class CommandStationInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CommandStationInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'binkynet.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version')
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uptime')
    ..hasRequiredFields = false
  ;

  CommandStationInfo._() : super();
  factory CommandStationInfo({
    $core.String? id,
    $core.String? description,
    $core.String? version,
    $fixnum.Int64? uptime,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (description != null) {
      _result.description = description;
    }
    if (version != null) {
      _result.version = version;
    }
    if (uptime != null) {
      _result.uptime = uptime;
    }
    return _result;
  }
  factory CommandStationInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommandStationInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommandStationInfo clone() => CommandStationInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommandStationInfo copyWith(void Function(CommandStationInfo) updates) => super.copyWith((message) => updates(message as CommandStationInfo)) as CommandStationInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommandStationInfo create() => CommandStationInfo._();
  CommandStationInfo createEmptyInstance() => create();
  static $pb.PbList<CommandStationInfo> createRepeated() => $pb.PbList<CommandStationInfo>();
  @$core.pragma('dart2js:noInline')
  static CommandStationInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommandStationInfo>(create);
  static CommandStationInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get version => $_getSZ(2);
  @$pb.TagNumber(3)
  set version($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearVersion() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get uptime => $_getI64(3);
  @$pb.TagNumber(4)
  set uptime($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUptime() => $_has(3);
  @$pb.TagNumber(4)
  void clearUptime() => clearField(4);
}

class LocalWorkerInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LocalWorkerInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'binkynet.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version')
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uptime')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'configHash')
    ..pPS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'configuredDeviceIds')
    ..pPS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'configuredObjectIds')
    ..pPS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'unconfiguredDeviceIds')
    ..pPS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'unconfiguredObjectIds')
    ..a<$core.int>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'metricsPort', $pb.PbFieldType.O3)
    ..aOB(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'metricsSecure')
    ..a<$core.int>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'localWorkerServicePort', $pb.PbFieldType.O3)
    ..aOB(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'localWorkerServiceSecure')
    ..a<$core.int>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sshPort', $pb.PbFieldType.O3)
    ..aOB(101, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'supportsReset')
    ..aOB(102, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'supportsSetLocRequest')
    ..aOB(103, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'supportsSetPowerRequest')
    ..aOB(104, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'supportsSetOutputRequest')
    ..aOB(105, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'supportsSetSwitchRequest')
    ..aOB(106, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'supportsSetDeviceDiscoveryRequest')
    ..pc<RouterInfo>(201, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'onlineRouters', $pb.PbFieldType.PM, subBuilder: RouterInfo.create)
    ..pc<RouterInfo>(202, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'offlineRouters', $pb.PbFieldType.PM, subBuilder: RouterInfo.create)
    ..hasRequiredFields = false
  ;

  LocalWorkerInfo._() : super();
  factory LocalWorkerInfo({
    $core.String? id,
    $core.String? description,
    $core.String? version,
    $fixnum.Int64? uptime,
    $core.String? configHash,
    $core.Iterable<$core.String>? configuredDeviceIds,
    $core.Iterable<$core.String>? configuredObjectIds,
    $core.Iterable<$core.String>? unconfiguredDeviceIds,
    $core.Iterable<$core.String>? unconfiguredObjectIds,
    $core.int? metricsPort,
    $core.bool? metricsSecure,
    $core.int? localWorkerServicePort,
    $core.bool? localWorkerServiceSecure,
    $core.int? sshPort,
    $core.bool? supportsReset,
    $core.bool? supportsSetLocRequest,
    $core.bool? supportsSetPowerRequest,
    $core.bool? supportsSetOutputRequest,
    $core.bool? supportsSetSwitchRequest,
    $core.bool? supportsSetDeviceDiscoveryRequest,
    $core.Iterable<RouterInfo>? onlineRouters,
    $core.Iterable<RouterInfo>? offlineRouters,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (description != null) {
      _result.description = description;
    }
    if (version != null) {
      _result.version = version;
    }
    if (uptime != null) {
      _result.uptime = uptime;
    }
    if (configHash != null) {
      _result.configHash = configHash;
    }
    if (configuredDeviceIds != null) {
      _result.configuredDeviceIds.addAll(configuredDeviceIds);
    }
    if (configuredObjectIds != null) {
      _result.configuredObjectIds.addAll(configuredObjectIds);
    }
    if (unconfiguredDeviceIds != null) {
      _result.unconfiguredDeviceIds.addAll(unconfiguredDeviceIds);
    }
    if (unconfiguredObjectIds != null) {
      _result.unconfiguredObjectIds.addAll(unconfiguredObjectIds);
    }
    if (metricsPort != null) {
      _result.metricsPort = metricsPort;
    }
    if (metricsSecure != null) {
      _result.metricsSecure = metricsSecure;
    }
    if (localWorkerServicePort != null) {
      _result.localWorkerServicePort = localWorkerServicePort;
    }
    if (localWorkerServiceSecure != null) {
      _result.localWorkerServiceSecure = localWorkerServiceSecure;
    }
    if (sshPort != null) {
      _result.sshPort = sshPort;
    }
    if (supportsReset != null) {
      _result.supportsReset = supportsReset;
    }
    if (supportsSetLocRequest != null) {
      _result.supportsSetLocRequest = supportsSetLocRequest;
    }
    if (supportsSetPowerRequest != null) {
      _result.supportsSetPowerRequest = supportsSetPowerRequest;
    }
    if (supportsSetOutputRequest != null) {
      _result.supportsSetOutputRequest = supportsSetOutputRequest;
    }
    if (supportsSetSwitchRequest != null) {
      _result.supportsSetSwitchRequest = supportsSetSwitchRequest;
    }
    if (supportsSetDeviceDiscoveryRequest != null) {
      _result.supportsSetDeviceDiscoveryRequest = supportsSetDeviceDiscoveryRequest;
    }
    if (onlineRouters != null) {
      _result.onlineRouters.addAll(onlineRouters);
    }
    if (offlineRouters != null) {
      _result.offlineRouters.addAll(offlineRouters);
    }
    return _result;
  }
  factory LocalWorkerInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LocalWorkerInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LocalWorkerInfo clone() => LocalWorkerInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LocalWorkerInfo copyWith(void Function(LocalWorkerInfo) updates) => super.copyWith((message) => updates(message as LocalWorkerInfo)) as LocalWorkerInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LocalWorkerInfo create() => LocalWorkerInfo._();
  LocalWorkerInfo createEmptyInstance() => create();
  static $pb.PbList<LocalWorkerInfo> createRepeated() => $pb.PbList<LocalWorkerInfo>();
  @$core.pragma('dart2js:noInline')
  static LocalWorkerInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LocalWorkerInfo>(create);
  static LocalWorkerInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get version => $_getSZ(2);
  @$pb.TagNumber(3)
  set version($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearVersion() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get uptime => $_getI64(3);
  @$pb.TagNumber(4)
  set uptime($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUptime() => $_has(3);
  @$pb.TagNumber(4)
  void clearUptime() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get configHash => $_getSZ(4);
  @$pb.TagNumber(5)
  set configHash($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasConfigHash() => $_has(4);
  @$pb.TagNumber(5)
  void clearConfigHash() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.String> get configuredDeviceIds => $_getList(5);

  @$pb.TagNumber(7)
  $core.List<$core.String> get configuredObjectIds => $_getList(6);

  @$pb.TagNumber(8)
  $core.List<$core.String> get unconfiguredDeviceIds => $_getList(7);

  @$pb.TagNumber(9)
  $core.List<$core.String> get unconfiguredObjectIds => $_getList(8);

  @$pb.TagNumber(10)
  $core.int get metricsPort => $_getIZ(9);
  @$pb.TagNumber(10)
  set metricsPort($core.int v) { $_setSignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasMetricsPort() => $_has(9);
  @$pb.TagNumber(10)
  void clearMetricsPort() => clearField(10);

  @$pb.TagNumber(11)
  $core.bool get metricsSecure => $_getBF(10);
  @$pb.TagNumber(11)
  set metricsSecure($core.bool v) { $_setBool(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasMetricsSecure() => $_has(10);
  @$pb.TagNumber(11)
  void clearMetricsSecure() => clearField(11);

  @$pb.TagNumber(12)
  $core.int get localWorkerServicePort => $_getIZ(11);
  @$pb.TagNumber(12)
  set localWorkerServicePort($core.int v) { $_setSignedInt32(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasLocalWorkerServicePort() => $_has(11);
  @$pb.TagNumber(12)
  void clearLocalWorkerServicePort() => clearField(12);

  @$pb.TagNumber(13)
  $core.bool get localWorkerServiceSecure => $_getBF(12);
  @$pb.TagNumber(13)
  set localWorkerServiceSecure($core.bool v) { $_setBool(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasLocalWorkerServiceSecure() => $_has(12);
  @$pb.TagNumber(13)
  void clearLocalWorkerServiceSecure() => clearField(13);

  @$pb.TagNumber(14)
  $core.int get sshPort => $_getIZ(13);
  @$pb.TagNumber(14)
  set sshPort($core.int v) { $_setSignedInt32(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasSshPort() => $_has(13);
  @$pb.TagNumber(14)
  void clearSshPort() => clearField(14);

  @$pb.TagNumber(101)
  $core.bool get supportsReset => $_getBF(14);
  @$pb.TagNumber(101)
  set supportsReset($core.bool v) { $_setBool(14, v); }
  @$pb.TagNumber(101)
  $core.bool hasSupportsReset() => $_has(14);
  @$pb.TagNumber(101)
  void clearSupportsReset() => clearField(101);

  @$pb.TagNumber(102)
  $core.bool get supportsSetLocRequest => $_getBF(15);
  @$pb.TagNumber(102)
  set supportsSetLocRequest($core.bool v) { $_setBool(15, v); }
  @$pb.TagNumber(102)
  $core.bool hasSupportsSetLocRequest() => $_has(15);
  @$pb.TagNumber(102)
  void clearSupportsSetLocRequest() => clearField(102);

  @$pb.TagNumber(103)
  $core.bool get supportsSetPowerRequest => $_getBF(16);
  @$pb.TagNumber(103)
  set supportsSetPowerRequest($core.bool v) { $_setBool(16, v); }
  @$pb.TagNumber(103)
  $core.bool hasSupportsSetPowerRequest() => $_has(16);
  @$pb.TagNumber(103)
  void clearSupportsSetPowerRequest() => clearField(103);

  @$pb.TagNumber(104)
  $core.bool get supportsSetOutputRequest => $_getBF(17);
  @$pb.TagNumber(104)
  set supportsSetOutputRequest($core.bool v) { $_setBool(17, v); }
  @$pb.TagNumber(104)
  $core.bool hasSupportsSetOutputRequest() => $_has(17);
  @$pb.TagNumber(104)
  void clearSupportsSetOutputRequest() => clearField(104);

  @$pb.TagNumber(105)
  $core.bool get supportsSetSwitchRequest => $_getBF(18);
  @$pb.TagNumber(105)
  set supportsSetSwitchRequest($core.bool v) { $_setBool(18, v); }
  @$pb.TagNumber(105)
  $core.bool hasSupportsSetSwitchRequest() => $_has(18);
  @$pb.TagNumber(105)
  void clearSupportsSetSwitchRequest() => clearField(105);

  @$pb.TagNumber(106)
  $core.bool get supportsSetDeviceDiscoveryRequest => $_getBF(19);
  @$pb.TagNumber(106)
  set supportsSetDeviceDiscoveryRequest($core.bool v) { $_setBool(19, v); }
  @$pb.TagNumber(106)
  $core.bool hasSupportsSetDeviceDiscoveryRequest() => $_has(19);
  @$pb.TagNumber(106)
  void clearSupportsSetDeviceDiscoveryRequest() => clearField(106);

  @$pb.TagNumber(201)
  $core.List<RouterInfo> get onlineRouters => $_getList(20);

  @$pb.TagNumber(202)
  $core.List<RouterInfo> get offlineRouters => $_getList(21);
}

class RouterInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RouterInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'binkynet.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version')
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uptime')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ipAddress')
    ..a<$core.int>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'metricsPort', $pb.PbFieldType.O3)
    ..aOB(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'metricsSecure')
    ..aOB(101, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'supportsReset')
    ..hasRequiredFields = false
  ;

  RouterInfo._() : super();
  factory RouterInfo({
    $core.String? id,
    $core.String? description,
    $core.String? version,
    $fixnum.Int64? uptime,
    $core.String? ipAddress,
    $core.int? metricsPort,
    $core.bool? metricsSecure,
    $core.bool? supportsReset,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (description != null) {
      _result.description = description;
    }
    if (version != null) {
      _result.version = version;
    }
    if (uptime != null) {
      _result.uptime = uptime;
    }
    if (ipAddress != null) {
      _result.ipAddress = ipAddress;
    }
    if (metricsPort != null) {
      _result.metricsPort = metricsPort;
    }
    if (metricsSecure != null) {
      _result.metricsSecure = metricsSecure;
    }
    if (supportsReset != null) {
      _result.supportsReset = supportsReset;
    }
    return _result;
  }
  factory RouterInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RouterInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RouterInfo clone() => RouterInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RouterInfo copyWith(void Function(RouterInfo) updates) => super.copyWith((message) => updates(message as RouterInfo)) as RouterInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RouterInfo create() => RouterInfo._();
  RouterInfo createEmptyInstance() => create();
  static $pb.PbList<RouterInfo> createRepeated() => $pb.PbList<RouterInfo>();
  @$core.pragma('dart2js:noInline')
  static RouterInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RouterInfo>(create);
  static RouterInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get version => $_getSZ(2);
  @$pb.TagNumber(3)
  set version($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearVersion() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get uptime => $_getI64(3);
  @$pb.TagNumber(4)
  set uptime($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUptime() => $_has(3);
  @$pb.TagNumber(4)
  void clearUptime() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get ipAddress => $_getSZ(4);
  @$pb.TagNumber(5)
  set ipAddress($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasIpAddress() => $_has(4);
  @$pb.TagNumber(5)
  void clearIpAddress() => clearField(5);

  @$pb.TagNumber(10)
  $core.int get metricsPort => $_getIZ(5);
  @$pb.TagNumber(10)
  set metricsPort($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(10)
  $core.bool hasMetricsPort() => $_has(5);
  @$pb.TagNumber(10)
  void clearMetricsPort() => clearField(10);

  @$pb.TagNumber(11)
  $core.bool get metricsSecure => $_getBF(6);
  @$pb.TagNumber(11)
  set metricsSecure($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(11)
  $core.bool hasMetricsSecure() => $_has(6);
  @$pb.TagNumber(11)
  void clearMetricsSecure() => clearField(11);

  @$pb.TagNumber(101)
  $core.bool get supportsReset => $_getBF(7);
  @$pb.TagNumber(101)
  set supportsReset($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(101)
  $core.bool hasSupportsReset() => $_has(7);
  @$pb.TagNumber(101)
  void clearSupportsReset() => clearField(101);
}

class PowerRequestsOptions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PowerRequestsOptions', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'binkynet.v1'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'manualConfirm')
    ..hasRequiredFields = false
  ;

  PowerRequestsOptions._() : super();
  factory PowerRequestsOptions({
    $core.bool? manualConfirm,
  }) {
    final _result = create();
    if (manualConfirm != null) {
      _result.manualConfirm = manualConfirm;
    }
    return _result;
  }
  factory PowerRequestsOptions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PowerRequestsOptions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PowerRequestsOptions clone() => PowerRequestsOptions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PowerRequestsOptions copyWith(void Function(PowerRequestsOptions) updates) => super.copyWith((message) => updates(message as PowerRequestsOptions)) as PowerRequestsOptions; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PowerRequestsOptions create() => PowerRequestsOptions._();
  PowerRequestsOptions createEmptyInstance() => create();
  static $pb.PbList<PowerRequestsOptions> createRepeated() => $pb.PbList<PowerRequestsOptions>();
  @$core.pragma('dart2js:noInline')
  static PowerRequestsOptions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PowerRequestsOptions>(create);
  static PowerRequestsOptions? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get manualConfirm => $_getBF(0);
  @$pb.TagNumber(1)
  set manualConfirm($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasManualConfirm() => $_has(0);
  @$pb.TagNumber(1)
  void clearManualConfirm() => clearField(1);
}

class Power extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Power', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'binkynet.v1'), createEmptyInstance: create)
    ..aOM<PowerState>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'request', subBuilder: PowerState.create)
    ..aOM<PowerState>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'actual', subBuilder: PowerState.create)
    ..hasRequiredFields = false
  ;

  Power._() : super();
  factory Power({
    PowerState? request,
    PowerState? actual,
  }) {
    final _result = create();
    if (request != null) {
      _result.request = request;
    }
    if (actual != null) {
      _result.actual = actual;
    }
    return _result;
  }
  factory Power.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Power.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Power clone() => Power()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Power copyWith(void Function(Power) updates) => super.copyWith((message) => updates(message as Power)) as Power; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Power create() => Power._();
  Power createEmptyInstance() => create();
  static $pb.PbList<Power> createRepeated() => $pb.PbList<Power>();
  @$core.pragma('dart2js:noInline')
  static Power getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Power>(create);
  static Power? _defaultInstance;

  @$pb.TagNumber(1)
  PowerState get request => $_getN(0);
  @$pb.TagNumber(1)
  set request(PowerState v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequest() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequest() => clearField(1);
  @$pb.TagNumber(1)
  PowerState ensureRequest() => $_ensure(0);

  @$pb.TagNumber(2)
  PowerState get actual => $_getN(1);
  @$pb.TagNumber(2)
  set actual(PowerState v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasActual() => $_has(1);
  @$pb.TagNumber(2)
  void clearActual() => clearField(2);
  @$pb.TagNumber(2)
  PowerState ensureActual() => $_ensure(1);
}

class PowerState extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PowerState', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'binkynet.v1'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'enabled')
    ..hasRequiredFields = false
  ;

  PowerState._() : super();
  factory PowerState({
    $core.bool? enabled,
  }) {
    final _result = create();
    if (enabled != null) {
      _result.enabled = enabled;
    }
    return _result;
  }
  factory PowerState.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PowerState.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PowerState clone() => PowerState()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PowerState copyWith(void Function(PowerState) updates) => super.copyWith((message) => updates(message as PowerState)) as PowerState; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PowerState create() => PowerState._();
  PowerState createEmptyInstance() => create();
  static $pb.PbList<PowerState> createRepeated() => $pb.PbList<PowerState>();
  @$core.pragma('dart2js:noInline')
  static PowerState getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PowerState>(create);
  static PowerState? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get enabled => $_getBF(0);
  @$pb.TagNumber(1)
  set enabled($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEnabled() => $_has(0);
  @$pb.TagNumber(1)
  void clearEnabled() => clearField(1);
}

class LocRequestsOptions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LocRequestsOptions', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'binkynet.v1'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'manualConfirm')
    ..hasRequiredFields = false
  ;

  LocRequestsOptions._() : super();
  factory LocRequestsOptions({
    $core.bool? manualConfirm,
  }) {
    final _result = create();
    if (manualConfirm != null) {
      _result.manualConfirm = manualConfirm;
    }
    return _result;
  }
  factory LocRequestsOptions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LocRequestsOptions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LocRequestsOptions clone() => LocRequestsOptions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LocRequestsOptions copyWith(void Function(LocRequestsOptions) updates) => super.copyWith((message) => updates(message as LocRequestsOptions)) as LocRequestsOptions; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LocRequestsOptions create() => LocRequestsOptions._();
  LocRequestsOptions createEmptyInstance() => create();
  static $pb.PbList<LocRequestsOptions> createRepeated() => $pb.PbList<LocRequestsOptions>();
  @$core.pragma('dart2js:noInline')
  static LocRequestsOptions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LocRequestsOptions>(create);
  static LocRequestsOptions? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get manualConfirm => $_getBF(0);
  @$pb.TagNumber(1)
  set manualConfirm($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasManualConfirm() => $_has(0);
  @$pb.TagNumber(1)
  void clearManualConfirm() => clearField(1);
}

class Loc extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Loc', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'binkynet.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address')
    ..aOM<LocState>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'request', subBuilder: LocState.create)
    ..aOM<LocState>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'actual', subBuilder: LocState.create)
    ..hasRequiredFields = false
  ;

  Loc._() : super();
  factory Loc({
    $core.String? address,
    LocState? request,
    LocState? actual,
  }) {
    final _result = create();
    if (address != null) {
      _result.address = address;
    }
    if (request != null) {
      _result.request = request;
    }
    if (actual != null) {
      _result.actual = actual;
    }
    return _result;
  }
  factory Loc.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Loc.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Loc clone() => Loc()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Loc copyWith(void Function(Loc) updates) => super.copyWith((message) => updates(message as Loc)) as Loc; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Loc create() => Loc._();
  Loc createEmptyInstance() => create();
  static $pb.PbList<Loc> createRepeated() => $pb.PbList<Loc>();
  @$core.pragma('dart2js:noInline')
  static Loc getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Loc>(create);
  static Loc? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  @$pb.TagNumber(2)
  LocState get request => $_getN(1);
  @$pb.TagNumber(2)
  set request(LocState v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRequest() => $_has(1);
  @$pb.TagNumber(2)
  void clearRequest() => clearField(2);
  @$pb.TagNumber(2)
  LocState ensureRequest() => $_ensure(1);

  @$pb.TagNumber(3)
  LocState get actual => $_getN(2);
  @$pb.TagNumber(3)
  set actual(LocState v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasActual() => $_has(2);
  @$pb.TagNumber(3)
  void clearActual() => clearField(3);
  @$pb.TagNumber(3)
  LocState ensureActual() => $_ensure(2);
}

class LocState extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LocState', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'binkynet.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'speed', $pb.PbFieldType.O3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'speedSteps', $pb.PbFieldType.O3)
    ..e<LocDirection>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'direction', $pb.PbFieldType.OE, defaultOrMaker: LocDirection.FORWARD, valueOf: LocDirection.valueOf, enumValues: LocDirection.values)
    ..m<$core.int, $core.bool>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'functions', entryClassName: 'LocState.FunctionsEntry', keyFieldType: $pb.PbFieldType.O3, valueFieldType: $pb.PbFieldType.OB, packageName: const $pb.PackageName('binkynet.v1'))
    ..hasRequiredFields = false
  ;

  LocState._() : super();
  factory LocState({
    $core.int? speed,
    $core.int? speedSteps,
    LocDirection? direction,
    $core.Map<$core.int, $core.bool>? functions,
  }) {
    final _result = create();
    if (speed != null) {
      _result.speed = speed;
    }
    if (speedSteps != null) {
      _result.speedSteps = speedSteps;
    }
    if (direction != null) {
      _result.direction = direction;
    }
    if (functions != null) {
      _result.functions.addAll(functions);
    }
    return _result;
  }
  factory LocState.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LocState.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LocState clone() => LocState()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LocState copyWith(void Function(LocState) updates) => super.copyWith((message) => updates(message as LocState)) as LocState; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LocState create() => LocState._();
  LocState createEmptyInstance() => create();
  static $pb.PbList<LocState> createRepeated() => $pb.PbList<LocState>();
  @$core.pragma('dart2js:noInline')
  static LocState getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LocState>(create);
  static LocState? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get speed => $_getIZ(0);
  @$pb.TagNumber(1)
  set speed($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSpeed() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpeed() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get speedSteps => $_getIZ(1);
  @$pb.TagNumber(2)
  set speedSteps($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpeedSteps() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpeedSteps() => clearField(2);

  @$pb.TagNumber(3)
  LocDirection get direction => $_getN(2);
  @$pb.TagNumber(3)
  set direction(LocDirection v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasDirection() => $_has(2);
  @$pb.TagNumber(3)
  void clearDirection() => clearField(3);

  @$pb.TagNumber(4)
  $core.Map<$core.int, $core.bool> get functions => $_getMap(3);
}

class Sensor extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Sensor', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'binkynet.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address')
    ..aOM<SensorState>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'actual', subBuilder: SensorState.create)
    ..hasRequiredFields = false
  ;

  Sensor._() : super();
  factory Sensor({
    $core.String? address,
    SensorState? actual,
  }) {
    final _result = create();
    if (address != null) {
      _result.address = address;
    }
    if (actual != null) {
      _result.actual = actual;
    }
    return _result;
  }
  factory Sensor.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Sensor.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Sensor clone() => Sensor()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Sensor copyWith(void Function(Sensor) updates) => super.copyWith((message) => updates(message as Sensor)) as Sensor; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Sensor create() => Sensor._();
  Sensor createEmptyInstance() => create();
  static $pb.PbList<Sensor> createRepeated() => $pb.PbList<Sensor>();
  @$core.pragma('dart2js:noInline')
  static Sensor getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Sensor>(create);
  static Sensor? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  @$pb.TagNumber(2)
  SensorState get actual => $_getN(1);
  @$pb.TagNumber(2)
  set actual(SensorState v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasActual() => $_has(1);
  @$pb.TagNumber(2)
  void clearActual() => clearField(2);
  @$pb.TagNumber(2)
  SensorState ensureActual() => $_ensure(1);
}

class SensorState extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SensorState', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'binkynet.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  SensorState._() : super();
  factory SensorState({
    $core.int? value,
  }) {
    final _result = create();
    if (value != null) {
      _result.value = value;
    }
    return _result;
  }
  factory SensorState.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SensorState.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SensorState clone() => SensorState()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SensorState copyWith(void Function(SensorState) updates) => super.copyWith((message) => updates(message as SensorState)) as SensorState; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SensorState create() => SensorState._();
  SensorState createEmptyInstance() => create();
  static $pb.PbList<SensorState> createRepeated() => $pb.PbList<SensorState>();
  @$core.pragma('dart2js:noInline')
  static SensorState getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SensorState>(create);
  static SensorState? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get value => $_getIZ(0);
  @$pb.TagNumber(1)
  set value($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class OutputRequestsOptions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OutputRequestsOptions', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'binkynet.v1'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'manualConfirm')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'moduleId')
    ..hasRequiredFields = false
  ;

  OutputRequestsOptions._() : super();
  factory OutputRequestsOptions({
    $core.bool? manualConfirm,
    $core.String? moduleId,
  }) {
    final _result = create();
    if (manualConfirm != null) {
      _result.manualConfirm = manualConfirm;
    }
    if (moduleId != null) {
      _result.moduleId = moduleId;
    }
    return _result;
  }
  factory OutputRequestsOptions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OutputRequestsOptions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OutputRequestsOptions clone() => OutputRequestsOptions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OutputRequestsOptions copyWith(void Function(OutputRequestsOptions) updates) => super.copyWith((message) => updates(message as OutputRequestsOptions)) as OutputRequestsOptions; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OutputRequestsOptions create() => OutputRequestsOptions._();
  OutputRequestsOptions createEmptyInstance() => create();
  static $pb.PbList<OutputRequestsOptions> createRepeated() => $pb.PbList<OutputRequestsOptions>();
  @$core.pragma('dart2js:noInline')
  static OutputRequestsOptions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OutputRequestsOptions>(create);
  static OutputRequestsOptions? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get manualConfirm => $_getBF(0);
  @$pb.TagNumber(1)
  set manualConfirm($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasManualConfirm() => $_has(0);
  @$pb.TagNumber(1)
  void clearManualConfirm() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get moduleId => $_getSZ(1);
  @$pb.TagNumber(2)
  set moduleId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasModuleId() => $_has(1);
  @$pb.TagNumber(2)
  void clearModuleId() => clearField(2);
}

class Output extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Output', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'binkynet.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address')
    ..aOM<OutputState>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'request', subBuilder: OutputState.create)
    ..aOM<OutputState>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'actual', subBuilder: OutputState.create)
    ..hasRequiredFields = false
  ;

  Output._() : super();
  factory Output({
    $core.String? address,
    OutputState? request,
    OutputState? actual,
  }) {
    final _result = create();
    if (address != null) {
      _result.address = address;
    }
    if (request != null) {
      _result.request = request;
    }
    if (actual != null) {
      _result.actual = actual;
    }
    return _result;
  }
  factory Output.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Output.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Output clone() => Output()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Output copyWith(void Function(Output) updates) => super.copyWith((message) => updates(message as Output)) as Output; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Output create() => Output._();
  Output createEmptyInstance() => create();
  static $pb.PbList<Output> createRepeated() => $pb.PbList<Output>();
  @$core.pragma('dart2js:noInline')
  static Output getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Output>(create);
  static Output? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  @$pb.TagNumber(2)
  OutputState get request => $_getN(1);
  @$pb.TagNumber(2)
  set request(OutputState v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRequest() => $_has(1);
  @$pb.TagNumber(2)
  void clearRequest() => clearField(2);
  @$pb.TagNumber(2)
  OutputState ensureRequest() => $_ensure(1);

  @$pb.TagNumber(3)
  OutputState get actual => $_getN(2);
  @$pb.TagNumber(3)
  set actual(OutputState v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasActual() => $_has(2);
  @$pb.TagNumber(3)
  void clearActual() => clearField(3);
  @$pb.TagNumber(3)
  OutputState ensureActual() => $_ensure(2);
}

class OutputState extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OutputState', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'binkynet.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  OutputState._() : super();
  factory OutputState({
    $core.int? value,
  }) {
    final _result = create();
    if (value != null) {
      _result.value = value;
    }
    return _result;
  }
  factory OutputState.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OutputState.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OutputState clone() => OutputState()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OutputState copyWith(void Function(OutputState) updates) => super.copyWith((message) => updates(message as OutputState)) as OutputState; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OutputState create() => OutputState._();
  OutputState createEmptyInstance() => create();
  static $pb.PbList<OutputState> createRepeated() => $pb.PbList<OutputState>();
  @$core.pragma('dart2js:noInline')
  static OutputState getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OutputState>(create);
  static OutputState? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get value => $_getIZ(0);
  @$pb.TagNumber(1)
  set value($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class SwitchRequestsOptions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SwitchRequestsOptions', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'binkynet.v1'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'manualConfirm')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'moduleId')
    ..hasRequiredFields = false
  ;

  SwitchRequestsOptions._() : super();
  factory SwitchRequestsOptions({
    $core.bool? manualConfirm,
    $core.String? moduleId,
  }) {
    final _result = create();
    if (manualConfirm != null) {
      _result.manualConfirm = manualConfirm;
    }
    if (moduleId != null) {
      _result.moduleId = moduleId;
    }
    return _result;
  }
  factory SwitchRequestsOptions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SwitchRequestsOptions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SwitchRequestsOptions clone() => SwitchRequestsOptions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SwitchRequestsOptions copyWith(void Function(SwitchRequestsOptions) updates) => super.copyWith((message) => updates(message as SwitchRequestsOptions)) as SwitchRequestsOptions; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwitchRequestsOptions create() => SwitchRequestsOptions._();
  SwitchRequestsOptions createEmptyInstance() => create();
  static $pb.PbList<SwitchRequestsOptions> createRepeated() => $pb.PbList<SwitchRequestsOptions>();
  @$core.pragma('dart2js:noInline')
  static SwitchRequestsOptions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SwitchRequestsOptions>(create);
  static SwitchRequestsOptions? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get manualConfirm => $_getBF(0);
  @$pb.TagNumber(1)
  set manualConfirm($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasManualConfirm() => $_has(0);
  @$pb.TagNumber(1)
  void clearManualConfirm() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get moduleId => $_getSZ(1);
  @$pb.TagNumber(2)
  set moduleId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasModuleId() => $_has(1);
  @$pb.TagNumber(2)
  void clearModuleId() => clearField(2);
}

class Switch extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Switch', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'binkynet.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address')
    ..aOM<SwitchState>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'request', subBuilder: SwitchState.create)
    ..aOM<SwitchState>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'actual', subBuilder: SwitchState.create)
    ..hasRequiredFields = false
  ;

  Switch._() : super();
  factory Switch({
    $core.String? address,
    SwitchState? request,
    SwitchState? actual,
  }) {
    final _result = create();
    if (address != null) {
      _result.address = address;
    }
    if (request != null) {
      _result.request = request;
    }
    if (actual != null) {
      _result.actual = actual;
    }
    return _result;
  }
  factory Switch.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Switch.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Switch clone() => Switch()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Switch copyWith(void Function(Switch) updates) => super.copyWith((message) => updates(message as Switch)) as Switch; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Switch create() => Switch._();
  Switch createEmptyInstance() => create();
  static $pb.PbList<Switch> createRepeated() => $pb.PbList<Switch>();
  @$core.pragma('dart2js:noInline')
  static Switch getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Switch>(create);
  static Switch? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  @$pb.TagNumber(2)
  SwitchState get request => $_getN(1);
  @$pb.TagNumber(2)
  set request(SwitchState v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRequest() => $_has(1);
  @$pb.TagNumber(2)
  void clearRequest() => clearField(2);
  @$pb.TagNumber(2)
  SwitchState ensureRequest() => $_ensure(1);

  @$pb.TagNumber(3)
  SwitchState get actual => $_getN(2);
  @$pb.TagNumber(3)
  set actual(SwitchState v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasActual() => $_has(2);
  @$pb.TagNumber(3)
  void clearActual() => clearField(3);
  @$pb.TagNumber(3)
  SwitchState ensureActual() => $_ensure(2);
}

class SwitchState extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SwitchState', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'binkynet.v1'), createEmptyInstance: create)
    ..e<SwitchDirection>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'direction', $pb.PbFieldType.OE, defaultOrMaker: SwitchDirection.STRAIGHT, valueOf: SwitchDirection.valueOf, enumValues: SwitchDirection.values)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isUsed')
    ..hasRequiredFields = false
  ;

  SwitchState._() : super();
  factory SwitchState({
    SwitchDirection? direction,
    $core.bool? isUsed,
  }) {
    final _result = create();
    if (direction != null) {
      _result.direction = direction;
    }
    if (isUsed != null) {
      _result.isUsed = isUsed;
    }
    return _result;
  }
  factory SwitchState.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SwitchState.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SwitchState clone() => SwitchState()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SwitchState copyWith(void Function(SwitchState) updates) => super.copyWith((message) => updates(message as SwitchState)) as SwitchState; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwitchState create() => SwitchState._();
  SwitchState createEmptyInstance() => create();
  static $pb.PbList<SwitchState> createRepeated() => $pb.PbList<SwitchState>();
  @$core.pragma('dart2js:noInline')
  static SwitchState getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SwitchState>(create);
  static SwitchState? _defaultInstance;

  @$pb.TagNumber(1)
  SwitchDirection get direction => $_getN(0);
  @$pb.TagNumber(1)
  set direction(SwitchDirection v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDirection() => $_has(0);
  @$pb.TagNumber(1)
  void clearDirection() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get isUsed => $_getBF(1);
  @$pb.TagNumber(2)
  set isUsed($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsUsed() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsUsed() => clearField(2);
}

class Clock extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Clock', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'binkynet.v1'), createEmptyInstance: create)
    ..e<TimePeriod>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'period', $pb.PbFieldType.OE, defaultOrMaker: TimePeriod.MORNING, valueOf: TimePeriod.valueOf, enumValues: TimePeriod.values)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hours', $pb.PbFieldType.O3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'minutes', $pb.PbFieldType.O3)
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'unixtime')
    ..hasRequiredFields = false
  ;

  Clock._() : super();
  factory Clock({
    TimePeriod? period,
    $core.int? hours,
    $core.int? minutes,
    $fixnum.Int64? unixtime,
  }) {
    final _result = create();
    if (period != null) {
      _result.period = period;
    }
    if (hours != null) {
      _result.hours = hours;
    }
    if (minutes != null) {
      _result.minutes = minutes;
    }
    if (unixtime != null) {
      _result.unixtime = unixtime;
    }
    return _result;
  }
  factory Clock.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Clock.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Clock clone() => Clock()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Clock copyWith(void Function(Clock) updates) => super.copyWith((message) => updates(message as Clock)) as Clock; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Clock create() => Clock._();
  Clock createEmptyInstance() => create();
  static $pb.PbList<Clock> createRepeated() => $pb.PbList<Clock>();
  @$core.pragma('dart2js:noInline')
  static Clock getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Clock>(create);
  static Clock? _defaultInstance;

  @$pb.TagNumber(1)
  TimePeriod get period => $_getN(0);
  @$pb.TagNumber(1)
  set period(TimePeriod v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPeriod() => $_has(0);
  @$pb.TagNumber(1)
  void clearPeriod() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get hours => $_getIZ(1);
  @$pb.TagNumber(2)
  set hours($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHours() => $_has(1);
  @$pb.TagNumber(2)
  void clearHours() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get minutes => $_getIZ(2);
  @$pb.TagNumber(3)
  set minutes($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMinutes() => $_has(2);
  @$pb.TagNumber(3)
  void clearMinutes() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get unixtime => $_getI64(3);
  @$pb.TagNumber(4)
  set unixtime($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUnixtime() => $_has(3);
  @$pb.TagNumber(4)
  void clearUnixtime() => clearField(4);
}

class Device extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Device', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'binkynet.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address')
    ..hasRequiredFields = false
  ;

  Device._() : super();
  factory Device({
    $core.String? id,
    $core.String? type,
    $core.String? address,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (type != null) {
      _result.type = type;
    }
    if (address != null) {
      _result.address = address;
    }
    return _result;
  }
  factory Device.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Device.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Device clone() => Device()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Device copyWith(void Function(Device) updates) => super.copyWith((message) => updates(message as Device)) as Device; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Device create() => Device._();
  Device createEmptyInstance() => create();
  static $pb.PbList<Device> createRepeated() => $pb.PbList<Device>();
  @$core.pragma('dart2js:noInline')
  static Device getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Device>(create);
  static Device? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get type => $_getSZ(1);
  @$pb.TagNumber(2)
  set type($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get address => $_getSZ(2);
  @$pb.TagNumber(3)
  set address($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAddress() => $_has(2);
  @$pb.TagNumber(3)
  void clearAddress() => clearField(3);
}

class Object extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Object', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'binkynet.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type')
    ..pc<Connection>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connections', $pb.PbFieldType.PM, subBuilder: Connection.create)
    ..m<$core.String, $core.String>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'configuration', entryClassName: 'Object.ConfigurationEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('binkynet.v1'))
    ..hasRequiredFields = false
  ;

  Object._() : super();
  factory Object({
    $core.String? id,
    $core.String? type,
    $core.Iterable<Connection>? connections,
    $core.Map<$core.String, $core.String>? configuration,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (type != null) {
      _result.type = type;
    }
    if (connections != null) {
      _result.connections.addAll(connections);
    }
    if (configuration != null) {
      _result.configuration.addAll(configuration);
    }
    return _result;
  }
  factory Object.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Object.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Object clone() => Object()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Object copyWith(void Function(Object) updates) => super.copyWith((message) => updates(message as Object)) as Object; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Object create() => Object._();
  Object createEmptyInstance() => create();
  static $pb.PbList<Object> createRepeated() => $pb.PbList<Object>();
  @$core.pragma('dart2js:noInline')
  static Object getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Object>(create);
  static Object? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get type => $_getSZ(1);
  @$pb.TagNumber(2)
  set type($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<Connection> get connections => $_getList(2);

  @$pb.TagNumber(4)
  $core.Map<$core.String, $core.String> get configuration => $_getMap(3);
}

class Connection extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Connection', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'binkynet.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'key')
    ..pc<DevicePin>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pins', $pb.PbFieldType.PM, subBuilder: DevicePin.create)
    ..m<$core.String, $core.String>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'configuration', entryClassName: 'Connection.ConfigurationEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('binkynet.v1'))
    ..hasRequiredFields = false
  ;

  Connection._() : super();
  factory Connection({
    $core.String? key,
    $core.Iterable<DevicePin>? pins,
    $core.Map<$core.String, $core.String>? configuration,
  }) {
    final _result = create();
    if (key != null) {
      _result.key = key;
    }
    if (pins != null) {
      _result.pins.addAll(pins);
    }
    if (configuration != null) {
      _result.configuration.addAll(configuration);
    }
    return _result;
  }
  factory Connection.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Connection.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Connection clone() => Connection()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Connection copyWith(void Function(Connection) updates) => super.copyWith((message) => updates(message as Connection)) as Connection; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Connection create() => Connection._();
  Connection createEmptyInstance() => create();
  static $pb.PbList<Connection> createRepeated() => $pb.PbList<Connection>();
  @$core.pragma('dart2js:noInline')
  static Connection getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Connection>(create);
  static Connection? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<DevicePin> get pins => $_getList(1);

  @$pb.TagNumber(3)
  $core.Map<$core.String, $core.String> get configuration => $_getMap(2);
}

class DevicePin extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DevicePin', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'binkynet.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceId')
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'index', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  DevicePin._() : super();
  factory DevicePin({
    $core.String? deviceId,
    $fixnum.Int64? index,
  }) {
    final _result = create();
    if (deviceId != null) {
      _result.deviceId = deviceId;
    }
    if (index != null) {
      _result.index = index;
    }
    return _result;
  }
  factory DevicePin.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DevicePin.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DevicePin clone() => DevicePin()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DevicePin copyWith(void Function(DevicePin) updates) => super.copyWith((message) => updates(message as DevicePin)) as DevicePin; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DevicePin create() => DevicePin._();
  DevicePin createEmptyInstance() => create();
  static $pb.PbList<DevicePin> createRepeated() => $pb.PbList<DevicePin>();
  @$core.pragma('dart2js:noInline')
  static DevicePin getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DevicePin>(create);
  static DevicePin? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get deviceId => $_getSZ(0);
  @$pb.TagNumber(1)
  set deviceId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDeviceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get index => $_getI64(1);
  @$pb.TagNumber(2)
  set index($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIndex() => $_has(1);
  @$pb.TagNumber(2)
  void clearIndex() => clearField(2);
}

class LocalWorkerConfig extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LocalWorkerConfig', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'binkynet.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'alias')
    ..pc<Device>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'devices', $pb.PbFieldType.PM, subBuilder: Device.create)
    ..pc<Object>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'objects', $pb.PbFieldType.PM, subBuilder: Object.create)
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'unixtime')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hash')
    ..hasRequiredFields = false
  ;

  LocalWorkerConfig._() : super();
  factory LocalWorkerConfig({
    $core.String? alias,
    $core.Iterable<Device>? devices,
    $core.Iterable<Object>? objects,
    $fixnum.Int64? unixtime,
    $core.String? hash,
  }) {
    final _result = create();
    if (alias != null) {
      _result.alias = alias;
    }
    if (devices != null) {
      _result.devices.addAll(devices);
    }
    if (objects != null) {
      _result.objects.addAll(objects);
    }
    if (unixtime != null) {
      _result.unixtime = unixtime;
    }
    if (hash != null) {
      _result.hash = hash;
    }
    return _result;
  }
  factory LocalWorkerConfig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LocalWorkerConfig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LocalWorkerConfig clone() => LocalWorkerConfig()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LocalWorkerConfig copyWith(void Function(LocalWorkerConfig) updates) => super.copyWith((message) => updates(message as LocalWorkerConfig)) as LocalWorkerConfig; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LocalWorkerConfig create() => LocalWorkerConfig._();
  LocalWorkerConfig createEmptyInstance() => create();
  static $pb.PbList<LocalWorkerConfig> createRepeated() => $pb.PbList<LocalWorkerConfig>();
  @$core.pragma('dart2js:noInline')
  static LocalWorkerConfig getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LocalWorkerConfig>(create);
  static LocalWorkerConfig? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get alias => $_getSZ(0);
  @$pb.TagNumber(1)
  set alias($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAlias() => $_has(0);
  @$pb.TagNumber(1)
  void clearAlias() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<Device> get devices => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<Object> get objects => $_getList(2);

  @$pb.TagNumber(4)
  $fixnum.Int64 get unixtime => $_getI64(3);
  @$pb.TagNumber(4)
  set unixtime($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUnixtime() => $_has(3);
  @$pb.TagNumber(4)
  void clearUnixtime() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get hash => $_getSZ(4);
  @$pb.TagNumber(5)
  set hash($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasHash() => $_has(4);
  @$pb.TagNumber(5)
  void clearHash() => clearField(5);
}

class LocalWorker extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LocalWorker', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'binkynet.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOM<LocalWorkerConfig>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'request', subBuilder: LocalWorkerConfig.create)
    ..aOM<LocalWorkerInfo>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'actual', subBuilder: LocalWorkerInfo.create)
    ..hasRequiredFields = false
  ;

  LocalWorker._() : super();
  factory LocalWorker({
    $core.String? id,
    LocalWorkerConfig? request,
    LocalWorkerInfo? actual,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (request != null) {
      _result.request = request;
    }
    if (actual != null) {
      _result.actual = actual;
    }
    return _result;
  }
  factory LocalWorker.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LocalWorker.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LocalWorker clone() => LocalWorker()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LocalWorker copyWith(void Function(LocalWorker) updates) => super.copyWith((message) => updates(message as LocalWorker)) as LocalWorker; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LocalWorker create() => LocalWorker._();
  LocalWorker createEmptyInstance() => create();
  static $pb.PbList<LocalWorker> createRepeated() => $pb.PbList<LocalWorker>();
  @$core.pragma('dart2js:noInline')
  static LocalWorker getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LocalWorker>(create);
  static LocalWorker? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  LocalWorkerConfig get request => $_getN(1);
  @$pb.TagNumber(2)
  set request(LocalWorkerConfig v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRequest() => $_has(1);
  @$pb.TagNumber(2)
  void clearRequest() => clearField(2);
  @$pb.TagNumber(2)
  LocalWorkerConfig ensureRequest() => $_ensure(1);

  @$pb.TagNumber(3)
  LocalWorkerInfo get actual => $_getN(2);
  @$pb.TagNumber(3)
  set actual(LocalWorkerInfo v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasActual() => $_has(2);
  @$pb.TagNumber(3)
  void clearActual() => clearField(3);
  @$pb.TagNumber(3)
  LocalWorkerInfo ensureActual() => $_ensure(2);
}

class DeviceDiscovery extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeviceDiscovery', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'binkynet.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOM<DiscoverRequest>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'request', subBuilder: DiscoverRequest.create)
    ..aOM<DiscoverResult>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'actual', subBuilder: DiscoverResult.create)
    ..hasRequiredFields = false
  ;

  DeviceDiscovery._() : super();
  factory DeviceDiscovery({
    $core.String? id,
    DiscoverRequest? request,
    DiscoverResult? actual,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (request != null) {
      _result.request = request;
    }
    if (actual != null) {
      _result.actual = actual;
    }
    return _result;
  }
  factory DeviceDiscovery.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeviceDiscovery.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeviceDiscovery clone() => DeviceDiscovery()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeviceDiscovery copyWith(void Function(DeviceDiscovery) updates) => super.copyWith((message) => updates(message as DeviceDiscovery)) as DeviceDiscovery; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeviceDiscovery create() => DeviceDiscovery._();
  DeviceDiscovery createEmptyInstance() => create();
  static $pb.PbList<DeviceDiscovery> createRepeated() => $pb.PbList<DeviceDiscovery>();
  @$core.pragma('dart2js:noInline')
  static DeviceDiscovery getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeviceDiscovery>(create);
  static DeviceDiscovery? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  DiscoverRequest get request => $_getN(1);
  @$pb.TagNumber(2)
  set request(DiscoverRequest v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRequest() => $_has(1);
  @$pb.TagNumber(2)
  void clearRequest() => clearField(2);
  @$pb.TagNumber(2)
  DiscoverRequest ensureRequest() => $_ensure(1);

  @$pb.TagNumber(3)
  DiscoverResult get actual => $_getN(2);
  @$pb.TagNumber(3)
  set actual(DiscoverResult v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasActual() => $_has(2);
  @$pb.TagNumber(3)
  void clearActual() => clearField(3);
  @$pb.TagNumber(3)
  DiscoverResult ensureActual() => $_ensure(2);
}

class DiscoverRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DiscoverRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'binkynet.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  DiscoverRequest._() : super();
  factory DiscoverRequest({
    $core.int? requestId,
  }) {
    final _result = create();
    if (requestId != null) {
      _result.requestId = requestId;
    }
    return _result;
  }
  factory DiscoverRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DiscoverRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DiscoverRequest clone() => DiscoverRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DiscoverRequest copyWith(void Function(DiscoverRequest) updates) => super.copyWith((message) => updates(message as DiscoverRequest)) as DiscoverRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DiscoverRequest create() => DiscoverRequest._();
  DiscoverRequest createEmptyInstance() => create();
  static $pb.PbList<DiscoverRequest> createRepeated() => $pb.PbList<DiscoverRequest>();
  @$core.pragma('dart2js:noInline')
  static DiscoverRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DiscoverRequest>(create);
  static DiscoverRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get requestId => $_getIZ(0);
  @$pb.TagNumber(1)
  set requestId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => clearField(1);
}

class DiscoverResult extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DiscoverResult', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'binkynet.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..pPS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addresses')
    ..hasRequiredFields = false
  ;

  DiscoverResult._() : super();
  factory DiscoverResult({
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
  factory DiscoverResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DiscoverResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DiscoverResult clone() => DiscoverResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DiscoverResult copyWith(void Function(DiscoverResult) updates) => super.copyWith((message) => updates(message as DiscoverResult)) as DiscoverResult; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DiscoverResult create() => DiscoverResult._();
  DiscoverResult createEmptyInstance() => create();
  static $pb.PbList<DiscoverResult> createRepeated() => $pb.PbList<DiscoverResult>();
  @$core.pragma('dart2js:noInline')
  static DiscoverResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DiscoverResult>(create);
  static DiscoverResult? _defaultInstance;

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

