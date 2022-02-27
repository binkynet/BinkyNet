///
//  Generated code. Do not modify.
//  source: logprovider.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class LogLevel extends $pb.ProtobufEnum {
  static const LogLevel TRACE = LogLevel._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TRACE');
  static const LogLevel DEBUG = LogLevel._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DEBUG');
  static const LogLevel INFO = LogLevel._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'INFO');
  static const LogLevel WARNING = LogLevel._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'WARNING');
  static const LogLevel ERROR = LogLevel._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ERROR');
  static const LogLevel FATAL = LogLevel._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FATAL');

  static const $core.List<LogLevel> values = <LogLevel> [
    TRACE,
    DEBUG,
    INFO,
    WARNING,
    ERROR,
    FATAL,
  ];

  static final $core.Map<$core.int, LogLevel> _byValue = $pb.ProtobufEnum.initByValue(values);
  static LogLevel? valueOf($core.int value) => _byValue[value];

  const LogLevel._($core.int v, $core.String n) : super(v, n);
}

