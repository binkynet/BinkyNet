///
//  Generated code. Do not modify.
//  source: localworker.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class DiscoverRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DiscoverRequest', package: const $pb.PackageName('binkynet.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  DiscoverRequest._() : super();
  factory DiscoverRequest() => create();
  factory DiscoverRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DiscoverRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DiscoverRequest clone() => DiscoverRequest()..mergeFromMessage(this);
  DiscoverRequest copyWith(void Function(DiscoverRequest) updates) => super.copyWith((message) => updates(message as DiscoverRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DiscoverRequest create() => DiscoverRequest._();
  DiscoverRequest createEmptyInstance() => create();
  static $pb.PbList<DiscoverRequest> createRepeated() => $pb.PbList<DiscoverRequest>();
  @$core.pragma('dart2js:noInline')
  static DiscoverRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DiscoverRequest>(create);
  static DiscoverRequest _defaultInstance;
}

class DiscoverResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DiscoverResponse', package: const $pb.PackageName('binkynet.v1'), createEmptyInstance: create)
    ..pPS(1, 'addresses')
    ..hasRequiredFields = false
  ;

  DiscoverResponse._() : super();
  factory DiscoverResponse() => create();
  factory DiscoverResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DiscoverResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DiscoverResponse clone() => DiscoverResponse()..mergeFromMessage(this);
  DiscoverResponse copyWith(void Function(DiscoverResponse) updates) => super.copyWith((message) => updates(message as DiscoverResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DiscoverResponse create() => DiscoverResponse._();
  DiscoverResponse createEmptyInstance() => create();
  static $pb.PbList<DiscoverResponse> createRepeated() => $pb.PbList<DiscoverResponse>();
  @$core.pragma('dart2js:noInline')
  static DiscoverResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DiscoverResponse>(create);
  static DiscoverResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get addresses => $_getList(0);
}

