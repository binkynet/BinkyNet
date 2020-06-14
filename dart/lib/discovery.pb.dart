///
//  Generated code. Do not modify.
//  source: discovery.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ServiceInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ServiceInfo', package: const $pb.PackageName('binkynet.v1'), createEmptyInstance: create)
    ..aOS(1, 'apiVersion')
    ..aOS(2, 'version')
    ..a<$core.int>(3, 'apiPort', $pb.PbFieldType.O3)
    ..aOS(4, 'apiAddress')
    ..aOB(5, 'secure')
    ..hasRequiredFields = false
  ;

  ServiceInfo._() : super();
  factory ServiceInfo() => create();
  factory ServiceInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServiceInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ServiceInfo clone() => ServiceInfo()..mergeFromMessage(this);
  ServiceInfo copyWith(void Function(ServiceInfo) updates) => super.copyWith((message) => updates(message as ServiceInfo));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ServiceInfo create() => ServiceInfo._();
  ServiceInfo createEmptyInstance() => create();
  static $pb.PbList<ServiceInfo> createRepeated() => $pb.PbList<ServiceInfo>();
  @$core.pragma('dart2js:noInline')
  static ServiceInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServiceInfo>(create);
  static ServiceInfo _defaultInstance;

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

