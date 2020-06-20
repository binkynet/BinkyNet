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
    ..aOB(1, 'enabled')
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
    ..a<$core.int>(2, 'speed', $pb.PbFieldType.O3)
    ..a<$core.int>(3, 'speedSteps', $pb.PbFieldType.O3)
    ..e<LocDirection>(4, 'direction', $pb.PbFieldType.OE, defaultOrMaker: LocDirection.FORWARD, valueOf: LocDirection.valueOf, enumValues: LocDirection.values)
    ..m<$core.int, $core.bool>(5, 'functions', entryClassName: 'Loc.FunctionsEntry', keyFieldType: $pb.PbFieldType.O3, valueFieldType: $pb.PbFieldType.OB, packageName: const $pb.PackageName('binkynet.v1'))
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
  $core.int get speed => $_getIZ(1);
  @$pb.TagNumber(2)
  set speed($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpeed() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpeed() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get speedSteps => $_getIZ(2);
  @$pb.TagNumber(3)
  set speedSteps($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSpeedSteps() => $_has(2);
  @$pb.TagNumber(3)
  void clearSpeedSteps() => clearField(3);

  @$pb.TagNumber(4)
  LocDirection get direction => $_getN(3);
  @$pb.TagNumber(4)
  set direction(LocDirection v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasDirection() => $_has(3);
  @$pb.TagNumber(4)
  void clearDirection() => clearField(4);

  @$pb.TagNumber(5)
  $core.Map<$core.int, $core.bool> get functions => $_getMap(4);
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
    ..a<$fixnum.Int64>(2, 'deviceIndex', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
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
  $fixnum.Int64 get deviceIndex => $_getI64(1);
  @$pb.TagNumber(2)
  set deviceIndex($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDeviceIndex() => $_has(1);
  @$pb.TagNumber(2)
  void clearDeviceIndex() => clearField(2);
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

