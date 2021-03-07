///
//  Generated code. Do not modify.
//  source: logprovider.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const LogLevel$json = const {
  '1': 'LogLevel',
  '2': const [
    const {'1': 'TRACE', '2': 0},
    const {'1': 'DEBUG', '2': 1},
    const {'1': 'INFO', '2': 2},
    const {'1': 'WARNING', '2': 3},
    const {'1': 'ERROR', '2': 4},
    const {'1': 'FATAL', '2': 5},
  ],
};

const GetLogsRequest$json = const {
  '1': 'GetLogsRequest',
};

const LogEntry$json = const {
  '1': 'LogEntry',
  '2': const [
    const {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'level', '3': 2, '4': 1, '5': 14, '6': '.binkynet.v1.LogLevel', '10': 'level'},
  ],
};

