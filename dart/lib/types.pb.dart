///
//  Generated code. Do not modify.
//  source: types.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'types.pbenum.dart';

export 'types.pbenum.dart';

class Empty extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Empty', package: const $pb.PackageName('binkynet.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  Empty._() : super();
  factory Empty() => create();
  factory Empty.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Empty.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Empty clone() => Empty()..mergeFromMessage(this);
  Empty copyWith(void Function(Empty) updates) => super.copyWith((message) => updates(message as Empty));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Empty create() => Empty._();
  Empty createEmptyInstance() => create();
  static $pb.PbList<Empty> createRepeated() => $pb.PbList<Empty>();
  @$core.pragma('dart2js:noInline')
  static Empty getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Empty>(create);
  static Empty _defaultInstance;
}

class CommandStationInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CommandStationInfo', package: const $pb.PackageName('binkynet.v1'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..aOS(2, 'description')
    ..aOS(3, 'version')
    ..aInt64(4, 'uptime')
    ..hasRequiredFields = false
  ;

  CommandStationInfo._() : super();
  factory CommandStationInfo() => create();
  factory CommandStationInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommandStationInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CommandStationInfo clone() => CommandStationInfo()..mergeFromMessage(this);
  CommandStationInfo copyWith(void Function(CommandStationInfo) updates) => super.copyWith((message) => updates(message as CommandStationInfo));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommandStationInfo create() => CommandStationInfo._();
  CommandStationInfo createEmptyInstance() => create();
  static $pb.PbList<CommandStationInfo> createRepeated() => $pb.PbList<CommandStationInfo>();
  @$core.pragma('dart2js:noInline')
  static CommandStationInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommandStationInfo>(create);
  static CommandStationInfo _defaultInstance;

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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LocalWorkerInfo', package: const $pb.PackageName('binkynet.v1'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..aOS(2, 'description')
    ..aOS(3, 'version')
    ..aInt64(4, 'uptime')
    ..hasRequiredFields = false
  ;

  LocalWorkerInfo._() : super();
  factory LocalWorkerInfo() => create();
  factory LocalWorkerInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LocalWorkerInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  LocalWorkerInfo clone() => LocalWorkerInfo()..mergeFromMessage(this);
  LocalWorkerInfo copyWith(void Function(LocalWorkerInfo) updates) => super.copyWith((message) => updates(message as LocalWorkerInfo));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LocalWorkerInfo create() => LocalWorkerInfo._();
  LocalWorkerInfo createEmptyInstance() => create();
  static $pb.PbList<LocalWorkerInfo> createRepeated() => $pb.PbList<LocalWorkerInfo>();
  @$core.pragma('dart2js:noInline')
  static LocalWorkerInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LocalWorkerInfo>(create);
  static LocalWorkerInfo _defaultInstance;

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

class PowerRequestsOptions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PowerRequestsOptions', package: const $pb.PackageName('binkynet.v1'), createEmptyInstance: create)
    ..aOB(1, 'manualConfirm')
    ..hasRequiredFields = false
  ;

  PowerRequestsOptions._() : super();
  factory PowerRequestsOptions() => create();
  factory PowerRequestsOptions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PowerRequestsOptions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PowerRequestsOptions clone() => PowerRequestsOptions()..mergeFromMessage(this);
  PowerRequestsOptions copyWith(void Function(PowerRequestsOptions) updates) => super.copyWith((message) => updates(message as PowerRequestsOptions));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PowerRequestsOptions create() => PowerRequestsOptions._();
  PowerRequestsOptions createEmptyInstance() => create();
  static $pb.PbList<PowerRequestsOptions> createRepeated() => $pb.PbList<PowerRequestsOptions>();
  @$core.pragma('dart2js:noInline')
  static PowerRequestsOptions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PowerRequestsOptions>(create);
  static PowerRequestsOptions _defaultInstance;

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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Power', package: const $pb.PackageName('binkynet.v1'), createEmptyInstance: create)
    ..aOM<PowerState>(1, 'request', subBuilder: PowerState.create)
    ..aOM<PowerState>(2, 'actual', subBuilder: PowerState.create)
    ..hasRequiredFields = false
  ;

  Power._() : super();
  factory Power() => create();
  factory Power.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Power.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Power clone() => Power()..mergeFromMessage(this);
  Power copyWith(void Function(Power) updates) => super.copyWith((message) => updates(message as Power));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Power create() => Power._();
  Power createEmptyInstance() => create();
  static $pb.PbList<Power> createRepeated() => $pb.PbList<Power>();
  @$core.pragma('dart2js:noInline')
  static Power getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Power>(create);
  static Power _defaultInstance;

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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PowerState', package: const $pb.PackageName('binkynet.v1'), createEmptyInstance: create)
    ..aOB(1, 'enabled')
    ..hasRequiredFields = false
  ;

  PowerState._() : super();
  factory PowerState() => create();
  factory PowerState.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PowerState.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PowerState clone() => PowerState()..mergeFromMessage(this);
  PowerState copyWith(void Function(PowerState) updates) => super.copyWith((message) => updates(message as PowerState));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PowerState create() => PowerState._();
  PowerState createEmptyInstance() => create();
  static $pb.PbList<PowerState> createRepeated() => $pb.PbList<PowerState>();
  @$core.pragma('dart2js:noInline')
  static PowerState getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PowerState>(create);
  static PowerState _defaultInstance;

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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LocRequestsOptions', package: const $pb.PackageName('binkynet.v1'), createEmptyInstance: create)
    ..aOB(1, 'manualConfirm')
    ..hasRequiredFields = false
  ;

  LocRequestsOptions._() : super();
  factory LocRequestsOptions() => create();
  factory LocRequestsOptions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LocRequestsOptions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  LocRequestsOptions clone() => LocRequestsOptions()..mergeFromMessage(this);
  LocRequestsOptions copyWith(void Function(LocRequestsOptions) updates) => super.copyWith((message) => updates(message as LocRequestsOptions));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LocRequestsOptions create() => LocRequestsOptions._();
  LocRequestsOptions createEmptyInstance() => create();
  static $pb.PbList<LocRequestsOptions> createRepeated() => $pb.PbList<LocRequestsOptions>();
  @$core.pragma('dart2js:noInline')
  static LocRequestsOptions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LocRequestsOptions>(create);
  static LocRequestsOptions _defaultInstance;

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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Loc', package: const $pb.PackageName('binkynet.v1'), createEmptyInstance: create)
    ..aOS(1, 'address')
    ..aOM<LocState>(2, 'request', subBuilder: LocState.create)
    ..aOM<LocState>(3, 'actual', subBuilder: LocState.create)
    ..hasRequiredFields = false
  ;

  Loc._() : super();
  factory Loc() => create();
  factory Loc.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Loc.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Loc clone() => Loc()..mergeFromMessage(this);
  Loc copyWith(void Function(Loc) updates) => super.copyWith((message) => updates(message as Loc));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Loc create() => Loc._();
  Loc createEmptyInstance() => create();
  static $pb.PbList<Loc> createRepeated() => $pb.PbList<Loc>();
  @$core.pragma('dart2js:noInline')
  static Loc getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Loc>(create);
  static Loc _defaultInstance;

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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LocState', package: const $pb.PackageName('binkynet.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'speed', $pb.PbFieldType.O3)
    ..a<$core.int>(2, 'speedSteps', $pb.PbFieldType.O3)
    ..e<LocDirection>(3, 'direction', $pb.PbFieldType.OE, defaultOrMaker: LocDirection.FORWARD, valueOf: LocDirection.valueOf, enumValues: LocDirection.values)
    ..m<$core.int, $core.bool>(4, 'functions', entryClassName: 'LocState.FunctionsEntry', keyFieldType: $pb.PbFieldType.O3, valueFieldType: $pb.PbFieldType.OB, packageName: const $pb.PackageName('binkynet.v1'))
    ..hasRequiredFields = false
  ;

  LocState._() : super();
  factory LocState() => create();
  factory LocState.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LocState.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  LocState clone() => LocState()..mergeFromMessage(this);
  LocState copyWith(void Function(LocState) updates) => super.copyWith((message) => updates(message as LocState));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LocState create() => LocState._();
  LocState createEmptyInstance() => create();
  static $pb.PbList<LocState> createRepeated() => $pb.PbList<LocState>();
  @$core.pragma('dart2js:noInline')
  static LocState getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LocState>(create);
  static LocState _defaultInstance;

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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Sensor', package: const $pb.PackageName('binkynet.v1'), createEmptyInstance: create)
    ..aOS(1, 'address')
    ..aOM<SensorState>(2, 'actual', subBuilder: SensorState.create)
    ..hasRequiredFields = false
  ;

  Sensor._() : super();
  factory Sensor() => create();
  factory Sensor.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Sensor.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Sensor clone() => Sensor()..mergeFromMessage(this);
  Sensor copyWith(void Function(Sensor) updates) => super.copyWith((message) => updates(message as Sensor));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Sensor create() => Sensor._();
  Sensor createEmptyInstance() => create();
  static $pb.PbList<Sensor> createRepeated() => $pb.PbList<Sensor>();
  @$core.pragma('dart2js:noInline')
  static Sensor getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Sensor>(create);
  static Sensor _defaultInstance;

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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SensorState', package: const $pb.PackageName('binkynet.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'value', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  SensorState._() : super();
  factory SensorState() => create();
  factory SensorState.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SensorState.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SensorState clone() => SensorState()..mergeFromMessage(this);
  SensorState copyWith(void Function(SensorState) updates) => super.copyWith((message) => updates(message as SensorState));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SensorState create() => SensorState._();
  SensorState createEmptyInstance() => create();
  static $pb.PbList<SensorState> createRepeated() => $pb.PbList<SensorState>();
  @$core.pragma('dart2js:noInline')
  static SensorState getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SensorState>(create);
  static SensorState _defaultInstance;

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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('OutputRequestsOptions', package: const $pb.PackageName('binkynet.v1'), createEmptyInstance: create)
    ..aOB(1, 'manualConfirm')
    ..hasRequiredFields = false
  ;

  OutputRequestsOptions._() : super();
  factory OutputRequestsOptions() => create();
  factory OutputRequestsOptions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OutputRequestsOptions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  OutputRequestsOptions clone() => OutputRequestsOptions()..mergeFromMessage(this);
  OutputRequestsOptions copyWith(void Function(OutputRequestsOptions) updates) => super.copyWith((message) => updates(message as OutputRequestsOptions));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OutputRequestsOptions create() => OutputRequestsOptions._();
  OutputRequestsOptions createEmptyInstance() => create();
  static $pb.PbList<OutputRequestsOptions> createRepeated() => $pb.PbList<OutputRequestsOptions>();
  @$core.pragma('dart2js:noInline')
  static OutputRequestsOptions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OutputRequestsOptions>(create);
  static OutputRequestsOptions _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get manualConfirm => $_getBF(0);
  @$pb.TagNumber(1)
  set manualConfirm($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasManualConfirm() => $_has(0);
  @$pb.TagNumber(1)
  void clearManualConfirm() => clearField(1);
}

class Output extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Output', package: const $pb.PackageName('binkynet.v1'), createEmptyInstance: create)
    ..aOS(1, 'address')
    ..aOM<OutputState>(2, 'request', subBuilder: OutputState.create)
    ..aOM<OutputState>(3, 'actual', subBuilder: OutputState.create)
    ..hasRequiredFields = false
  ;

  Output._() : super();
  factory Output() => create();
  factory Output.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Output.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Output clone() => Output()..mergeFromMessage(this);
  Output copyWith(void Function(Output) updates) => super.copyWith((message) => updates(message as Output));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Output create() => Output._();
  Output createEmptyInstance() => create();
  static $pb.PbList<Output> createRepeated() => $pb.PbList<Output>();
  @$core.pragma('dart2js:noInline')
  static Output getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Output>(create);
  static Output _defaultInstance;

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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('OutputState', package: const $pb.PackageName('binkynet.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, 'value', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  OutputState._() : super();
  factory OutputState() => create();
  factory OutputState.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OutputState.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  OutputState clone() => OutputState()..mergeFromMessage(this);
  OutputState copyWith(void Function(OutputState) updates) => super.copyWith((message) => updates(message as OutputState));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OutputState create() => OutputState._();
  OutputState createEmptyInstance() => create();
  static $pb.PbList<OutputState> createRepeated() => $pb.PbList<OutputState>();
  @$core.pragma('dart2js:noInline')
  static OutputState getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OutputState>(create);
  static OutputState _defaultInstance;

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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SwitchRequestsOptions', package: const $pb.PackageName('binkynet.v1'), createEmptyInstance: create)
    ..aOB(1, 'manualConfirm')
    ..hasRequiredFields = false
  ;

  SwitchRequestsOptions._() : super();
  factory SwitchRequestsOptions() => create();
  factory SwitchRequestsOptions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SwitchRequestsOptions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SwitchRequestsOptions clone() => SwitchRequestsOptions()..mergeFromMessage(this);
  SwitchRequestsOptions copyWith(void Function(SwitchRequestsOptions) updates) => super.copyWith((message) => updates(message as SwitchRequestsOptions));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwitchRequestsOptions create() => SwitchRequestsOptions._();
  SwitchRequestsOptions createEmptyInstance() => create();
  static $pb.PbList<SwitchRequestsOptions> createRepeated() => $pb.PbList<SwitchRequestsOptions>();
  @$core.pragma('dart2js:noInline')
  static SwitchRequestsOptions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SwitchRequestsOptions>(create);
  static SwitchRequestsOptions _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get manualConfirm => $_getBF(0);
  @$pb.TagNumber(1)
  set manualConfirm($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasManualConfirm() => $_has(0);
  @$pb.TagNumber(1)
  void clearManualConfirm() => clearField(1);
}

class Switch extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Switch', package: const $pb.PackageName('binkynet.v1'), createEmptyInstance: create)
    ..aOS(1, 'address')
    ..aOM<SwitchState>(2, 'request', subBuilder: SwitchState.create)
    ..aOM<SwitchState>(3, 'actual', subBuilder: SwitchState.create)
    ..hasRequiredFields = false
  ;

  Switch._() : super();
  factory Switch() => create();
  factory Switch.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Switch.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Switch clone() => Switch()..mergeFromMessage(this);
  Switch copyWith(void Function(Switch) updates) => super.copyWith((message) => updates(message as Switch));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Switch create() => Switch._();
  Switch createEmptyInstance() => create();
  static $pb.PbList<Switch> createRepeated() => $pb.PbList<Switch>();
  @$core.pragma('dart2js:noInline')
  static Switch getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Switch>(create);
  static Switch _defaultInstance;

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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SwitchState', package: const $pb.PackageName('binkynet.v1'), createEmptyInstance: create)
    ..e<SwitchDirection>(1, 'direction', $pb.PbFieldType.OE, defaultOrMaker: SwitchDirection.STRAIGHT, valueOf: SwitchDirection.valueOf, enumValues: SwitchDirection.values)
    ..hasRequiredFields = false
  ;

  SwitchState._() : super();
  factory SwitchState() => create();
  factory SwitchState.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SwitchState.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SwitchState clone() => SwitchState()..mergeFromMessage(this);
  SwitchState copyWith(void Function(SwitchState) updates) => super.copyWith((message) => updates(message as SwitchState));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SwitchState create() => SwitchState._();
  SwitchState createEmptyInstance() => create();
  static $pb.PbList<SwitchState> createRepeated() => $pb.PbList<SwitchState>();
  @$core.pragma('dart2js:noInline')
  static SwitchState getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SwitchState>(create);
  static SwitchState _defaultInstance;

  @$pb.TagNumber(1)
  SwitchDirection get direction => $_getN(0);
  @$pb.TagNumber(1)
  set direction(SwitchDirection v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDirection() => $_has(0);
  @$pb.TagNumber(1)
  void clearDirection() => clearField(1);
}

class Clock extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Clock', package: const $pb.PackageName('binkynet.v1'), createEmptyInstance: create)
    ..e<TimePeriod>(1, 'period', $pb.PbFieldType.OE, defaultOrMaker: TimePeriod.MORNING, valueOf: TimePeriod.valueOf, enumValues: TimePeriod.values)
    ..a<$core.int>(2, 'hours', $pb.PbFieldType.O3)
    ..a<$core.int>(3, 'minutes', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  Clock._() : super();
  factory Clock() => create();
  factory Clock.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Clock.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Clock clone() => Clock()..mergeFromMessage(this);
  Clock copyWith(void Function(Clock) updates) => super.copyWith((message) => updates(message as Clock));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Clock create() => Clock._();
  Clock createEmptyInstance() => create();
  static $pb.PbList<Clock> createRepeated() => $pb.PbList<Clock>();
  @$core.pragma('dart2js:noInline')
  static Clock getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Clock>(create);
  static Clock _defaultInstance;

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
}

class Device extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Device', package: const $pb.PackageName('binkynet.v1'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..aOS(2, 'type')
    ..aOS(3, 'address')
    ..hasRequiredFields = false
  ;

  Device._() : super();
  factory Device() => create();
  factory Device.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Device.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Device clone() => Device()..mergeFromMessage(this);
  Device copyWith(void Function(Device) updates) => super.copyWith((message) => updates(message as Device));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Device create() => Device._();
  Device createEmptyInstance() => create();
  static $pb.PbList<Device> createRepeated() => $pb.PbList<Device>();
  @$core.pragma('dart2js:noInline')
  static Device getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Device>(create);
  static Device _defaultInstance;

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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Object', package: const $pb.PackageName('binkynet.v1'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..aOS(2, 'type')
    ..pc<Connection>(3, 'connections', $pb.PbFieldType.PM, subBuilder: Connection.create)
    ..hasRequiredFields = false
  ;

  Object._() : super();
  factory Object() => create();
  factory Object.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Object.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Object clone() => Object()..mergeFromMessage(this);
  Object copyWith(void Function(Object) updates) => super.copyWith((message) => updates(message as Object));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Object create() => Object._();
  Object createEmptyInstance() => create();
  static $pb.PbList<Object> createRepeated() => $pb.PbList<Object>();
  @$core.pragma('dart2js:noInline')
  static Object getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Object>(create);
  static Object _defaultInstance;

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
}

class Connection extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Connection', package: const $pb.PackageName('binkynet.v1'), createEmptyInstance: create)
    ..aOS(1, 'key')
    ..pc<DevicePin>(2, 'pins', $pb.PbFieldType.PM, subBuilder: DevicePin.create)
    ..m<$core.String, $core.String>(3, 'configuration', entryClassName: 'Connection.ConfigurationEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('binkynet.v1'))
    ..hasRequiredFields = false
  ;

  Connection._() : super();
  factory Connection() => create();
  factory Connection.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Connection.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Connection clone() => Connection()..mergeFromMessage(this);
  Connection copyWith(void Function(Connection) updates) => super.copyWith((message) => updates(message as Connection));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Connection create() => Connection._();
  Connection createEmptyInstance() => create();
  static $pb.PbList<Connection> createRepeated() => $pb.PbList<Connection>();
  @$core.pragma('dart2js:noInline')
  static Connection getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Connection>(create);
  static Connection _defaultInstance;

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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DevicePin', package: const $pb.PackageName('binkynet.v1'), createEmptyInstance: create)
    ..aOS(1, 'deviceId')
    ..a<$fixnum.Int64>(2, 'index', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  DevicePin._() : super();
  factory DevicePin() => create();
  factory DevicePin.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DevicePin.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DevicePin clone() => DevicePin()..mergeFromMessage(this);
  DevicePin copyWith(void Function(DevicePin) updates) => super.copyWith((message) => updates(message as DevicePin));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DevicePin create() => DevicePin._();
  DevicePin createEmptyInstance() => create();
  static $pb.PbList<DevicePin> createRepeated() => $pb.PbList<DevicePin>();
  @$core.pragma('dart2js:noInline')
  static DevicePin getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DevicePin>(create);
  static DevicePin _defaultInstance;

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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LocalWorkerConfig', package: const $pb.PackageName('binkynet.v1'), createEmptyInstance: create)
    ..aOS(1, 'alias')
    ..pc<Device>(2, 'devices', $pb.PbFieldType.PM, subBuilder: Device.create)
    ..pc<Object>(3, 'objects', $pb.PbFieldType.PM, subBuilder: Object.create)
    ..hasRequiredFields = false
  ;

  LocalWorkerConfig._() : super();
  factory LocalWorkerConfig() => create();
  factory LocalWorkerConfig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LocalWorkerConfig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  LocalWorkerConfig clone() => LocalWorkerConfig()..mergeFromMessage(this);
  LocalWorkerConfig copyWith(void Function(LocalWorkerConfig) updates) => super.copyWith((message) => updates(message as LocalWorkerConfig));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LocalWorkerConfig create() => LocalWorkerConfig._();
  LocalWorkerConfig createEmptyInstance() => create();
  static $pb.PbList<LocalWorkerConfig> createRepeated() => $pb.PbList<LocalWorkerConfig>();
  @$core.pragma('dart2js:noInline')
  static LocalWorkerConfig getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LocalWorkerConfig>(create);
  static LocalWorkerConfig _defaultInstance;

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
}

