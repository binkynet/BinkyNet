///
//  Generated code. Do not modify.
//  source: discovery.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class Ports extends $pb.ProtobufEnum {
  static const Ports NOTUSED = Ports._(0, 'NOTUSED');
  static const Ports DISCOVERY = Ports._(9243, 'DISCOVERY');

  static const $core.List<Ports> values = <Ports> [
    NOTUSED,
    DISCOVERY,
  ];

  static final $core.Map<$core.int, Ports> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Ports valueOf($core.int value) => _byValue[value];

  const Ports._($core.int v, $core.String n) : super(v, n);
}

