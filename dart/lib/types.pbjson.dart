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

const SwitchDirection$json = const {
  '1': 'SwitchDirection',
  '2': const [
    const {'1': 'STRAIGHT', '2': 0},
    const {'1': 'OFF', '2': 1},
  ],
};

const TimePeriod$json = const {
  '1': 'TimePeriod',
  '2': const [
    const {'1': 'MORNING', '2': 0},
    const {'1': 'AFTERNOON', '2': 1},
    const {'1': 'EVENING', '2': 2},
    const {'1': 'NIGHT', '2': 3},
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

const Sensor$json = const {
  '1': 'Sensor',
  '2': const [
    const {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
    const {'1': 'value', '3': 2, '4': 1, '5': 5, '10': 'value'},
  ],
};

const OutputRequestsOptions$json = const {
  '1': 'OutputRequestsOptions',
  '2': const [
    const {'1': 'manual_confirm', '3': 1, '4': 1, '5': 8, '10': 'manualConfirm'},
  ],
};

const Output$json = const {
  '1': 'Output',
  '2': const [
    const {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
    const {'1': 'value', '3': 2, '4': 1, '5': 5, '10': 'value'},
  ],
};

const SwitchRequestsOptions$json = const {
  '1': 'SwitchRequestsOptions',
  '2': const [
    const {'1': 'manual_confirm', '3': 1, '4': 1, '5': 8, '10': 'manualConfirm'},
  ],
};

const Switch$json = const {
  '1': 'Switch',
  '2': const [
    const {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
    const {'1': 'direction', '3': 2, '4': 1, '5': 14, '6': '.binkynet.v1.SwitchDirection', '10': 'direction'},
  ],
};

const Clock$json = const {
  '1': 'Clock',
  '2': const [
    const {'1': 'period', '3': 1, '4': 1, '5': 14, '6': '.binkynet.v1.TimePeriod', '10': 'period'},
    const {'1': 'hours', '3': 2, '4': 1, '5': 5, '10': 'hours'},
    const {'1': 'minutes', '3': 3, '4': 1, '5': 5, '10': 'minutes'},
  ],
};

const Device$json = const {
  '1': 'Device',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '8': const {}, '10': 'id'},
    const {'1': 'type', '3': 2, '4': 1, '5': 9, '8': const {}, '10': 'type'},
    const {'1': 'address', '3': 3, '4': 1, '5': 9, '10': 'address'},
  ],
};

const Object$json = const {
  '1': 'Object',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '8': const {}, '10': 'id'},
    const {'1': 'type', '3': 2, '4': 1, '5': 9, '8': const {}, '10': 'type'},
    const {'1': 'connections', '3': 3, '4': 3, '5': 11, '6': '.binkynet.v1.Connection', '10': 'connections'},
  ],
};

const Connection$json = const {
  '1': 'Connection',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '8': const {}, '10': 'key'},
    const {'1': 'pins', '3': 2, '4': 3, '5': 11, '6': '.binkynet.v1.DevicePin', '10': 'pins'},
    const {'1': 'configuration', '3': 3, '4': 3, '5': 11, '6': '.binkynet.v1.Connection.ConfigurationEntry', '10': 'configuration'},
  ],
  '3': const [Connection_ConfigurationEntry$json],
};

const Connection_ConfigurationEntry$json = const {
  '1': 'ConfigurationEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

const DevicePin$json = const {
  '1': 'DevicePin',
  '2': const [
    const {'1': 'device_id', '3': 1, '4': 1, '5': 9, '8': const {}, '10': 'deviceId'},
    const {'1': 'index', '3': 2, '4': 1, '5': 4, '8': const {}, '10': 'index'},
  ],
};

const LocalWorkerConfig$json = const {
  '1': 'LocalWorkerConfig',
  '2': const [
    const {'1': 'alias', '3': 1, '4': 1, '5': 9, '10': 'alias'},
    const {'1': 'devices', '3': 2, '4': 3, '5': 11, '6': '.binkynet.v1.Device', '10': 'devices'},
    const {'1': 'objects', '3': 3, '4': 3, '5': 11, '6': '.binkynet.v1.Object', '10': 'objects'},
  ],
};

