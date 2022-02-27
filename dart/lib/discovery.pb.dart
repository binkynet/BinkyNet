///
//  Generated code. Do not modify.
//  source: discovery.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ServiceInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ServiceInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'binkynet.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'apiVersion')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'apiPort', $pb.PbFieldType.O3)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'apiAddress')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'secure')
    ..hasRequiredFields = false
  ;

  ServiceInfo._() : super();
  factory ServiceInfo({
    $core.String? apiVersion,
    $core.String? version,
    $core.int? apiPort,
    $core.String? apiAddress,
    $core.bool? secure,
  }) {
    final _result = create();
    if (apiVersion != null) {
      _result.apiVersion = apiVersion;
    }
    if (version != null) {
      _result.version = version;
    }
    if (apiPort != null) {
      _result.apiPort = apiPort;
    }
    if (apiAddress != null) {
      _result.apiAddress = apiAddress;
    }
    if (secure != null) {
      _result.secure = secure;
    }
    return _result;
  }
  factory ServiceInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServiceInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ServiceInfo clone() => ServiceInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ServiceInfo copyWith(void Function(ServiceInfo) updates) => super.copyWith((message) => updates(message as ServiceInfo)) as ServiceInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ServiceInfo create() => ServiceInfo._();
  ServiceInfo createEmptyInstance() => create();
  static $pb.PbList<ServiceInfo> createRepeated() => $pb.PbList<ServiceInfo>();
  @$core.pragma('dart2js:noInline')
  static ServiceInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServiceInfo>(create);
  static ServiceInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get apiVersion => $_getSZ(0);
  @$pb.TagNumber(1)
  set apiVersion($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasApiVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearApiVersion() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get version => $_getSZ(1);
  @$pb.TagNumber(2)
  set version($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersion() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get apiPort => $_getIZ(2);
  @$pb.TagNumber(3)
  set apiPort($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasApiPort() => $_has(2);
  @$pb.TagNumber(3)
  void clearApiPort() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get apiAddress => $_getSZ(3);
  @$pb.TagNumber(4)
  set apiAddress($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasApiAddress() => $_has(3);
  @$pb.TagNumber(4)
  void clearApiAddress() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get secure => $_getBF(4);
  @$pb.TagNumber(5)
  set secure($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSecure() => $_has(4);
  @$pb.TagNumber(5)
  void clearSecure() => clearField(5);
}

