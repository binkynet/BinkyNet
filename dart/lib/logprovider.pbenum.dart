///
//  Generated code. Do not modify.
//  source: logprovider.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class LogLevel extends $pb.ProtobufEnum {
  static const LogLevel TRACE = LogLevel._(0, 'TRACE');
  static const LogLevel DEBUG = LogLevel._(1, 'DEBUG');
  static const LogLevel INFO = LogLevel._(2, 'INFO');
  static const LogLevel WARNING = LogLevel._(3, 'WARNING');
  static const LogLevel ERROR = LogLevel._(4, 'ERROR');
  static const LogLevel FATAL = LogLevel._(5, 'FATAL');

  static const $core.List<LogLevel> values = <LogLevel> [
    TRACE,
    DEBUG,
    INFO,
    WARNING,
    ERROR,
    FATAL,
  ];

  static final $core.Map<$core.int, LogLevel> _byValue = $pb.ProtobufEnum.initByValue(values);
  static LogLevel valueOf($core.int value) => _byValue[value];

  const LogLevel._($core.int v, $core.String n) : super(v, n);
}

