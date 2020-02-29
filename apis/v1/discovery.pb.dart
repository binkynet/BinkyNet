///
//  Generated code. Do not modify.
//  source: discovery.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'discovery.pbenum.dart';

class NetworkMasterInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NetworkMasterInfo', package: const $pb.PackageName('binkynet.v1'), createEmptyInstance: create)
    ..aOS(1, 'apiVersion')
    ..aOS(2, 'version')
    ..a<$core.int>(3, 'apiPort', $pb.PbFieldType.O3)
    ..aOB(4, 'secure')
    ..hasRequiredFields = false
  ;

  NetworkMasterInfo._() : super();
  factory NetworkMasterInfo() => create();
  factory NetworkMasterInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NetworkMasterInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  NetworkMasterInfo clone() => NetworkMasterInfo()..mergeFromMessage(this);
  NetworkMasterInfo copyWith(void Function(NetworkMasterInfo) updates) => super.copyWith((message) => updates(message as NetworkMasterInfo));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NetworkMasterInfo create() => NetworkMasterInfo._();
  NetworkMasterInfo createEmptyInstance() => create();
  static $pb.PbList<NetworkMasterInfo> createRepeated() => $pb.PbList<NetworkMasterInfo>();
  @$core.pragma('dart2js:noInline')
  static NetworkMasterInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NetworkMasterInfo>(create);
  static NetworkMasterInfo _defaultInstance;

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
  $core.bool get secure => $_getBF(3);
  @$pb.TagNumber(4)
  set secure($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSecure() => $_has(3);
  @$pb.TagNumber(4)
  void clearSecure() => clearField(4);
}

