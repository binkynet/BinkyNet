///
//  Generated code. Do not modify.
//  source: types.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const LocDirection$json = const {
  '1': 'LocDirection',
  '2': const [
    const {'1': 'FORWARD', '2': 0},
    const {'1': 'REVERSE', '2': 1},
  ],
};

const Empty$json = const {
  '1': 'Empty',
};

const CommandStationInfo$json = const {
  '1': 'CommandStationInfo',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'version', '3': 3, '4': 1, '5': 9, '10': 'version'},
    const {'1': 'uptime', '3': 4, '4': 1, '5': 3, '10': 'uptime'},
  ],
};

const LocalWorkerInfo$json = const {
  '1': 'LocalWorkerInfo',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'version', '3': 3, '4': 1, '5': 9, '10': 'version'},
    const {'1': 'uptime', '3': 4, '4': 1, '5': 3, '10': 'uptime'},
  ],
};

const PowerRequestsOptions$json = const {
  '1': 'PowerRequestsOptions',
  '2': const [
    const {'1': 'manual_confirm', '3': 1, '4': 1, '5': 8, '10': 'manualConfirm'},
  ],
};

const Power$json = const {
  '1': 'Power',
  '2': const [
    const {'1': 'enabled', '3': 1, '4': 1, '5': 8, '10': 'enabled'},
  ],
};

const LocRequestsOptions$json = const {
  '1': 'LocRequestsOptions',
  '2': const [
    const {'1': 'manual_confirm', '3': 1, '4': 1, '5': 8, '10': 'manualConfirm'},
  ],
};

const Loc$json = const {
  '1': 'Loc',
  '2': const [
    const {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
    const {'1': 'speed', '3': 2, '4': 1, '5': 5, '10': 'speed'},
    const {'1': 'speed_steps', '3': 3, '4': 1, '5': 5, '10': 'speedSteps'},
    const {'1': 'direction', '3': 4, '4': 1, '5': 14, '6': '.binkynet.v1.LocDirection', '10': 'direction'},
    const {'1': 'functions', '3': 5, '4': 3, '5': 11, '6': '.binkynet.v1.Loc.FunctionsEntry', '10': 'functions'},
  ],
  '3': const [Loc_FunctionsEntry$json],
};

const Loc_FunctionsEntry$json = const {
  '1': 'FunctionsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 5, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 8, '10': 'value'},
  ],
  '7': const {'7': true},
};

