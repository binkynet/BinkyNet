///
//  Generated code. Do not modify.
//  source: network.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'types.pb.dart' as $0;
import 'network.pb.dart' as $3;
export 'network.pb.dart';

class NetworkControlServiceClient extends $grpc.Client {
  static final _$setLocalWorkerRequest =
      $grpc.ClientMethod<$0.LocalWorker, $0.Empty>(
          '/binkynet.v1.NetworkControlService/SetLocalWorkerRequest',
          ($0.LocalWorker value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$setLocalWorkerActual =
      $grpc.ClientMethod<$0.LocalWorker, $0.Empty>(
          '/binkynet.v1.NetworkControlService/SetLocalWorkerActual',
          ($0.LocalWorker value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$watchLocalWorkers =
      $grpc.ClientMethod<$3.WatchOptions, $0.LocalWorker>(
          '/binkynet.v1.NetworkControlService/WatchLocalWorkers',
          ($3.WatchOptions value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.LocalWorker.fromBuffer(value));
  static final _$setPowerRequest = $grpc.ClientMethod<$0.PowerState, $0.Empty>(
      '/binkynet.v1.NetworkControlService/SetPowerRequest',
      ($0.PowerState value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$setPowerActual = $grpc.ClientMethod<$0.PowerState, $0.Empty>(
      '/binkynet.v1.NetworkControlService/SetPowerActual',
      ($0.PowerState value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$watchPower = $grpc.ClientMethod<$3.WatchOptions, $0.Power>(
      '/binkynet.v1.NetworkControlService/WatchPower',
      ($3.WatchOptions value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Power.fromBuffer(value));
  static final _$setLocRequest = $grpc.ClientMethod<$0.Loc, $0.Empty>(
      '/binkynet.v1.NetworkControlService/SetLocRequest',
      ($0.Loc value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$setLocActual = $grpc.ClientMethod<$0.Loc, $0.Empty>(
      '/binkynet.v1.NetworkControlService/SetLocActual',
      ($0.Loc value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$watchLocs = $grpc.ClientMethod<$3.WatchOptions, $0.Loc>(
      '/binkynet.v1.NetworkControlService/WatchLocs',
      ($3.WatchOptions value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Loc.fromBuffer(value));
  static final _$setSensorActual = $grpc.ClientMethod<$0.Sensor, $0.Empty>(
      '/binkynet.v1.NetworkControlService/SetSensorActual',
      ($0.Sensor value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$watchSensors = $grpc.ClientMethod<$3.WatchOptions, $0.Sensor>(
      '/binkynet.v1.NetworkControlService/WatchSensors',
      ($3.WatchOptions value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Sensor.fromBuffer(value));
  static final _$setOutputRequest = $grpc.ClientMethod<$0.Output, $0.Empty>(
      '/binkynet.v1.NetworkControlService/SetOutputRequest',
      ($0.Output value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$setOutputActual = $grpc.ClientMethod<$0.Output, $0.Empty>(
      '/binkynet.v1.NetworkControlService/SetOutputActual',
      ($0.Output value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$watchOutputs = $grpc.ClientMethod<$3.WatchOptions, $0.Output>(
      '/binkynet.v1.NetworkControlService/WatchOutputs',
      ($3.WatchOptions value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Output.fromBuffer(value));
  static final _$setSwitchRequest = $grpc.ClientMethod<$0.Switch, $0.Empty>(
      '/binkynet.v1.NetworkControlService/SetSwitchRequest',
      ($0.Switch value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$setSwitchActual = $grpc.ClientMethod<$0.Switch, $0.Empty>(
      '/binkynet.v1.NetworkControlService/SetSwitchActual',
      ($0.Switch value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$watchSwitches = $grpc.ClientMethod<$3.WatchOptions, $0.Switch>(
      '/binkynet.v1.NetworkControlService/WatchSwitches',
      ($3.WatchOptions value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Switch.fromBuffer(value));
  static final _$setClockActual = $grpc.ClientMethod<$0.Clock, $0.Empty>(
      '/binkynet.v1.NetworkControlService/SetClockActual',
      ($0.Clock value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$watchClock = $grpc.ClientMethod<$3.WatchOptions, $0.Clock>(
      '/binkynet.v1.NetworkControlService/WatchClock',
      ($3.WatchOptions value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Clock.fromBuffer(value));
  static final _$power = $grpc.ClientMethod<$0.PowerState, $0.Power>(
      '/binkynet.v1.NetworkControlService/Power',
      ($0.PowerState value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Power.fromBuffer(value));
  static final _$locs = $grpc.ClientMethod<$0.Loc, $0.Loc>(
      '/binkynet.v1.NetworkControlService/Locs',
      ($0.Loc value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Loc.fromBuffer(value));
  static final _$sensors = $grpc.ClientMethod<$0.Empty, $0.Sensor>(
      '/binkynet.v1.NetworkControlService/Sensors',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Sensor.fromBuffer(value));
  static final _$outputs = $grpc.ClientMethod<$0.Output, $0.Output>(
      '/binkynet.v1.NetworkControlService/Outputs',
      ($0.Output value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Output.fromBuffer(value));
  static final _$switches = $grpc.ClientMethod<$0.Switch, $0.Switch>(
      '/binkynet.v1.NetworkControlService/Switches',
      ($0.Switch value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Switch.fromBuffer(value));
  static final _$clock = $grpc.ClientMethod<$0.Clock, $0.Clock>(
      '/binkynet.v1.NetworkControlService/Clock',
      ($0.Clock value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Clock.fromBuffer(value));

  NetworkControlServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.Empty> setLocalWorkerRequest($0.LocalWorker request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setLocalWorkerRequest, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> setLocalWorkerActual($0.LocalWorker request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setLocalWorkerActual, request, options: options);
  }

  $grpc.ResponseStream<$0.LocalWorker> watchLocalWorkers(
      $3.WatchOptions request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$watchLocalWorkers, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.Empty> setPowerRequest($0.PowerState request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setPowerRequest, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> setPowerActual($0.PowerState request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setPowerActual, request, options: options);
  }

  $grpc.ResponseStream<$0.Power> watchPower($3.WatchOptions request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$watchPower, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.Empty> setLocRequest($0.Loc request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setLocRequest, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> setLocActual($0.Loc request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setLocActual, request, options: options);
  }

  $grpc.ResponseStream<$0.Loc> watchLocs($3.WatchOptions request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$watchLocs, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.Empty> setSensorActual($0.Sensor request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setSensorActual, request, options: options);
  }

  $grpc.ResponseStream<$0.Sensor> watchSensors($3.WatchOptions request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$watchSensors, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.Empty> setOutputRequest($0.Output request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setOutputRequest, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> setOutputActual($0.Output request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setOutputActual, request, options: options);
  }

  $grpc.ResponseStream<$0.Output> watchOutputs($3.WatchOptions request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$watchOutputs, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.Empty> setSwitchRequest($0.Switch request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setSwitchRequest, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> setSwitchActual($0.Switch request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setSwitchActual, request, options: options);
  }

  $grpc.ResponseStream<$0.Switch> watchSwitches($3.WatchOptions request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$watchSwitches, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.Empty> setClockActual($0.Clock request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setClockActual, request, options: options);
  }

  $grpc.ResponseStream<$0.Clock> watchClock($3.WatchOptions request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$watchClock, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$0.Power> power($async.Stream<$0.PowerState> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$power, request, options: options);
  }

  $grpc.ResponseStream<$0.Loc> locs($async.Stream<$0.Loc> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$locs, request, options: options);
  }

  $grpc.ResponseStream<$0.Sensor> sensors($0.Empty request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$sensors, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$0.Output> outputs($async.Stream<$0.Output> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$outputs, request, options: options);
  }

  $grpc.ResponseStream<$0.Switch> switches($async.Stream<$0.Switch> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$switches, request, options: options);
  }

  $grpc.ResponseStream<$0.Clock> clock($async.Stream<$0.Clock> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$clock, request, options: options);
  }
}

abstract class NetworkControlServiceBase extends $grpc.Service {
  $core.String get $name => 'binkynet.v1.NetworkControlService';

  NetworkControlServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.LocalWorker, $0.Empty>(
        'SetLocalWorkerRequest',
        setLocalWorkerRequest_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LocalWorker.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LocalWorker, $0.Empty>(
        'SetLocalWorkerActual',
        setLocalWorkerActual_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LocalWorker.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.WatchOptions, $0.LocalWorker>(
        'WatchLocalWorkers',
        watchLocalWorkers_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $3.WatchOptions.fromBuffer(value),
        ($0.LocalWorker value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.PowerState, $0.Empty>(
        'SetPowerRequest',
        setPowerRequest_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.PowerState.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.PowerState, $0.Empty>(
        'SetPowerActual',
        setPowerActual_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.PowerState.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.WatchOptions, $0.Power>(
        'WatchPower',
        watchPower_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $3.WatchOptions.fromBuffer(value),
        ($0.Power value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Loc, $0.Empty>(
        'SetLocRequest',
        setLocRequest_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Loc.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Loc, $0.Empty>(
        'SetLocActual',
        setLocActual_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Loc.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.WatchOptions, $0.Loc>(
        'WatchLocs',
        watchLocs_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $3.WatchOptions.fromBuffer(value),
        ($0.Loc value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Sensor, $0.Empty>(
        'SetSensorActual',
        setSensorActual_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Sensor.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.WatchOptions, $0.Sensor>(
        'WatchSensors',
        watchSensors_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $3.WatchOptions.fromBuffer(value),
        ($0.Sensor value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Output, $0.Empty>(
        'SetOutputRequest',
        setOutputRequest_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Output.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Output, $0.Empty>(
        'SetOutputActual',
        setOutputActual_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Output.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.WatchOptions, $0.Output>(
        'WatchOutputs',
        watchOutputs_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $3.WatchOptions.fromBuffer(value),
        ($0.Output value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Switch, $0.Empty>(
        'SetSwitchRequest',
        setSwitchRequest_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Switch.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Switch, $0.Empty>(
        'SetSwitchActual',
        setSwitchActual_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Switch.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.WatchOptions, $0.Switch>(
        'WatchSwitches',
        watchSwitches_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $3.WatchOptions.fromBuffer(value),
        ($0.Switch value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Clock, $0.Empty>(
        'SetClockActual',
        setClockActual_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Clock.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.WatchOptions, $0.Clock>(
        'WatchClock',
        watchClock_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $3.WatchOptions.fromBuffer(value),
        ($0.Clock value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.PowerState, $0.Power>(
        'Power',
        power,
        true,
        true,
        ($core.List<$core.int> value) => $0.PowerState.fromBuffer(value),
        ($0.Power value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Loc, $0.Loc>(
        'Locs',
        locs,
        true,
        true,
        ($core.List<$core.int> value) => $0.Loc.fromBuffer(value),
        ($0.Loc value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Sensor>(
        'Sensors',
        sensors_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Sensor value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Output, $0.Output>(
        'Outputs',
        outputs,
        true,
        true,
        ($core.List<$core.int> value) => $0.Output.fromBuffer(value),
        ($0.Output value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Switch, $0.Switch>(
        'Switches',
        switches,
        true,
        true,
        ($core.List<$core.int> value) => $0.Switch.fromBuffer(value),
        ($0.Switch value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Clock, $0.Clock>(
        'Clock',
        clock,
        true,
        true,
        ($core.List<$core.int> value) => $0.Clock.fromBuffer(value),
        ($0.Clock value) => value.writeToBuffer()));
  }

  $async.Future<$0.Empty> setLocalWorkerRequest_Pre(
      $grpc.ServiceCall call, $async.Future<$0.LocalWorker> request) async {
    return setLocalWorkerRequest(call, await request);
  }

  $async.Future<$0.Empty> setLocalWorkerActual_Pre(
      $grpc.ServiceCall call, $async.Future<$0.LocalWorker> request) async {
    return setLocalWorkerActual(call, await request);
  }

  $async.Stream<$0.LocalWorker> watchLocalWorkers_Pre(
      $grpc.ServiceCall call, $async.Future<$3.WatchOptions> request) async* {
    yield* watchLocalWorkers(call, await request);
  }

  $async.Future<$0.Empty> setPowerRequest_Pre(
      $grpc.ServiceCall call, $async.Future<$0.PowerState> request) async {
    return setPowerRequest(call, await request);
  }

  $async.Future<$0.Empty> setPowerActual_Pre(
      $grpc.ServiceCall call, $async.Future<$0.PowerState> request) async {
    return setPowerActual(call, await request);
  }

  $async.Stream<$0.Power> watchPower_Pre(
      $grpc.ServiceCall call, $async.Future<$3.WatchOptions> request) async* {
    yield* watchPower(call, await request);
  }

  $async.Future<$0.Empty> setLocRequest_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Loc> request) async {
    return setLocRequest(call, await request);
  }

  $async.Future<$0.Empty> setLocActual_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Loc> request) async {
    return setLocActual(call, await request);
  }

  $async.Stream<$0.Loc> watchLocs_Pre(
      $grpc.ServiceCall call, $async.Future<$3.WatchOptions> request) async* {
    yield* watchLocs(call, await request);
  }

  $async.Future<$0.Empty> setSensorActual_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Sensor> request) async {
    return setSensorActual(call, await request);
  }

  $async.Stream<$0.Sensor> watchSensors_Pre(
      $grpc.ServiceCall call, $async.Future<$3.WatchOptions> request) async* {
    yield* watchSensors(call, await request);
  }

  $async.Future<$0.Empty> setOutputRequest_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Output> request) async {
    return setOutputRequest(call, await request);
  }

  $async.Future<$0.Empty> setOutputActual_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Output> request) async {
    return setOutputActual(call, await request);
  }

  $async.Stream<$0.Output> watchOutputs_Pre(
      $grpc.ServiceCall call, $async.Future<$3.WatchOptions> request) async* {
    yield* watchOutputs(call, await request);
  }

  $async.Future<$0.Empty> setSwitchRequest_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Switch> request) async {
    return setSwitchRequest(call, await request);
  }

  $async.Future<$0.Empty> setSwitchActual_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Switch> request) async {
    return setSwitchActual(call, await request);
  }

  $async.Stream<$0.Switch> watchSwitches_Pre(
      $grpc.ServiceCall call, $async.Future<$3.WatchOptions> request) async* {
    yield* watchSwitches(call, await request);
  }

  $async.Future<$0.Empty> setClockActual_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Clock> request) async {
    return setClockActual(call, await request);
  }

  $async.Stream<$0.Clock> watchClock_Pre(
      $grpc.ServiceCall call, $async.Future<$3.WatchOptions> request) async* {
    yield* watchClock(call, await request);
  }

  $async.Stream<$0.Sensor> sensors_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async* {
    yield* sensors(call, await request);
  }

  $async.Future<$0.Empty> setLocalWorkerRequest(
      $grpc.ServiceCall call, $0.LocalWorker request);
  $async.Future<$0.Empty> setLocalWorkerActual(
      $grpc.ServiceCall call, $0.LocalWorker request);
  $async.Stream<$0.LocalWorker> watchLocalWorkers(
      $grpc.ServiceCall call, $3.WatchOptions request);
  $async.Future<$0.Empty> setPowerRequest(
      $grpc.ServiceCall call, $0.PowerState request);
  $async.Future<$0.Empty> setPowerActual(
      $grpc.ServiceCall call, $0.PowerState request);
  $async.Stream<$0.Power> watchPower(
      $grpc.ServiceCall call, $3.WatchOptions request);
  $async.Future<$0.Empty> setLocRequest($grpc.ServiceCall call, $0.Loc request);
  $async.Future<$0.Empty> setLocActual($grpc.ServiceCall call, $0.Loc request);
  $async.Stream<$0.Loc> watchLocs(
      $grpc.ServiceCall call, $3.WatchOptions request);
  $async.Future<$0.Empty> setSensorActual(
      $grpc.ServiceCall call, $0.Sensor request);
  $async.Stream<$0.Sensor> watchSensors(
      $grpc.ServiceCall call, $3.WatchOptions request);
  $async.Future<$0.Empty> setOutputRequest(
      $grpc.ServiceCall call, $0.Output request);
  $async.Future<$0.Empty> setOutputActual(
      $grpc.ServiceCall call, $0.Output request);
  $async.Stream<$0.Output> watchOutputs(
      $grpc.ServiceCall call, $3.WatchOptions request);
  $async.Future<$0.Empty> setSwitchRequest(
      $grpc.ServiceCall call, $0.Switch request);
  $async.Future<$0.Empty> setSwitchActual(
      $grpc.ServiceCall call, $0.Switch request);
  $async.Stream<$0.Switch> watchSwitches(
      $grpc.ServiceCall call, $3.WatchOptions request);
  $async.Future<$0.Empty> setClockActual(
      $grpc.ServiceCall call, $0.Clock request);
  $async.Stream<$0.Clock> watchClock(
      $grpc.ServiceCall call, $3.WatchOptions request);
  $async.Stream<$0.Power> power(
      $grpc.ServiceCall call, $async.Stream<$0.PowerState> request);
  $async.Stream<$0.Loc> locs(
      $grpc.ServiceCall call, $async.Stream<$0.Loc> request);
  $async.Stream<$0.Sensor> sensors($grpc.ServiceCall call, $0.Empty request);
  $async.Stream<$0.Output> outputs(
      $grpc.ServiceCall call, $async.Stream<$0.Output> request);
  $async.Stream<$0.Switch> switches(
      $grpc.ServiceCall call, $async.Stream<$0.Switch> request);
  $async.Stream<$0.Clock> clock(
      $grpc.ServiceCall call, $async.Stream<$0.Clock> request);
}
