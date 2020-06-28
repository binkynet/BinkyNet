///
//  Generated code. Do not modify.
//  source: types.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class LocDirection extends $pb.ProtobufEnum {
  static const LocDirection FORWARD = LocDirection._(0, 'FORWARD');
  static const LocDirection REVERSE = LocDirection._(1, 'REVERSE');

  static const $core.List<LocDirection> values = <LocDirection> [
    FORWARD,
    REVERSE,
  ];

  static final $core.Map<$core.int, LocDirection> _byValue = $pb.ProtobufEnum.initByValue(values);
  static LocDirection valueOf($core.int value) => _byValue[value];

  const LocDirection._($core.int v, $core.String n) : super(v, n);
}

class SwitchDirection extends $pb.ProtobufEnum {
  static const SwitchDirection STRAIGHT = SwitchDirection._(0, 'STRAIGHT');
  static const SwitchDirection OFF = SwitchDirection._(1, 'OFF');

  static const $core.List<SwitchDirection> values = <SwitchDirection> [
    STRAIGHT,
    OFF,
  ];

  static final $core.Map<$core.int, SwitchDirection> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SwitchDirection valueOf($core.int value) => _byValue[value];

  const SwitchDirection._($core.int v, $core.String n) : super(v, n);
}

class TimePeriod extends $pb.ProtobufEnum {
  static const TimePeriod MORNING = TimePeriod._(0, 'MORNING');
  static const TimePeriod AFTERNOON = TimePeriod._(1, 'AFTERNOON');
  static const TimePeriod EVENING = TimePeriod._(2, 'EVENING');
  static const TimePeriod NIGHT = TimePeriod._(3, 'NIGHT');

  static const $core.List<TimePeriod> values = <TimePeriod> [
    MORNING,
    AFTERNOON,
    EVENING,
    NIGHT,
  ];

  static final $core.Map<$core.int, TimePeriod> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TimePeriod valueOf($core.int value) => _byValue[value];

  const TimePeriod._($core.int v, $core.String n) : super(v, n);
}

