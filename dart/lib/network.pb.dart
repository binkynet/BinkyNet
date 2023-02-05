///
//  Generated code. Do not modify.
//  source: network.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class WatchOptions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WatchOptions', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'binkynet.v1'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'watchRequestChanges')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'watchActualChanges')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'moduleId')
    ..hasRequiredFields = false
  ;

  WatchOptions._() : super();
  factory WatchOptions({
    $core.bool? watchRequestChanges,
    $core.bool? watchActualChanges,
    $core.String? moduleId,
  }) {
    final _result = create();
    if (watchRequestChanges != null) {
      _result.watchRequestChanges = watchRequestChanges;
    }
    if (watchActualChanges != null) {
      _result.watchActualChanges = watchActualChanges;
    }
    if (moduleId != null) {
      _result.moduleId = moduleId;
    }
    return _result;
  }
  factory WatchOptions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WatchOptions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WatchOptions clone() => WatchOptions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WatchOptions copyWith(void Function(WatchOptions) updates) => super.copyWith((message) => updates(message as WatchOptions)) as WatchOptions; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WatchOptions create() => WatchOptions._();
  WatchOptions createEmptyInstance() => create();
  static $pb.PbList<WatchOptions> createRepeated() => $pb.PbList<WatchOptions>();
  @$core.pragma('dart2js:noInline')
  static WatchOptions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WatchOptions>(create);
  static WatchOptions? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get watchRequestChanges => $_getBF(0);
  @$pb.TagNumber(1)
  set watchRequestChanges($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasWatchRequestChanges() => $_has(0);
  @$pb.TagNumber(1)
  void clearWatchRequestChanges() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get watchActualChanges => $_getBF(1);
  @$pb.TagNumber(2)
  set watchActualChanges($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWatchActualChanges() => $_has(1);
  @$pb.TagNumber(2)
  void clearWatchActualChanges() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get moduleId => $_getSZ(2);
  @$pb.TagNumber(3)
  set moduleId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasModuleId() => $_has(2);
  @$pb.TagNumber(3)
  void clearModuleId() => clearField(3);
}

