///
//  Generated code. Do not modify.
//  source: types.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class LocDirection extends $pb.ProtobufEnum {
  static const LocDirection FORWARD = LocDirection._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FORWARD');
  static const LocDirection REVERSE = LocDirection._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REVERSE');

  static const $core.List<LocDirection> values = <LocDirection> [
    FORWARD,
    REVERSE,
  ];

  static final $core.Map<$core.int, LocDirection> _byValue = $pb.ProtobufEnum.initByValue(values);
  static LocDirection? valueOf($core.int value) => _byValue[value];

  const LocDirection._($core.int v, $core.String n) : super(v, n);
}

class SwitchDirection extends $pb.ProtobufEnum {
  static const SwitchDirection STRAIGHT = SwitchDirection._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'STRAIGHT');
  static const SwitchDirection OFF = SwitchDirection._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'OFF');

  static const $core.List<SwitchDirection> values = <SwitchDirection> [
    STRAIGHT,
    OFF,
  ];

  static final $core.Map<$core.int, SwitchDirection> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SwitchDirection? valueOf($core.int value) => _byValue[value];

  const SwitchDirection._($core.int v, $core.String n) : super(v, n);
}

class TimePeriod extends $pb.ProtobufEnum {
  static const TimePeriod MORNING = TimePeriod._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MORNING');
  static const TimePeriod AFTERNOON = TimePeriod._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'AFTERNOON');
  static const TimePeriod EVENING = TimePeriod._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'EVENING');
  static const TimePeriod NIGHT = TimePeriod._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NIGHT');

  static const $core.List<TimePeriod> values = <TimePeriod> [
    MORNING,
    AFTERNOON,
    EVENING,
    NIGHT,
  ];

  static final $core.Map<$core.int, TimePeriod> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TimePeriod? valueOf($core.int value) => _byValue[value];

  const TimePeriod._($core.int v, $core.String n) : super(v, n);
}

