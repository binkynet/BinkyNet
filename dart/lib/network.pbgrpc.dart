///
//  Generated code. Do not modify.
//  source: network.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'types.pb.dart' as $0;
import 'network.pb.dart' as $2;
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
      $grpc.ClientMethod<$2.WatchOptions, $0.LocalWorker>(
          '/binkynet.v1.NetworkControlService/WatchLocalWorkers',
          ($2.WatchOptions value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.LocalWorker.fromBuffer(value));
  static final _$setDeviceDiscoveryRequest =
      $grpc.ClientMethod<$0.DeviceDiscovery, $0.Empty>(
          '/binkynet.v1.NetworkControlService/SetDeviceDiscoveryRequest',
          ($0.DeviceDiscovery value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$setDeviceDiscoveryActual =
      $grpc.ClientMethod<$0.DeviceDiscovery, $0.Empty>(
          '/binkynet.v1.NetworkControlService/SetDeviceDiscoveryActual',
          ($0.DeviceDiscovery value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$watchDeviceDiscoveries =
      $grpc.ClientMethod<$2.WatchOptions, $0.DeviceDiscovery>(
          '/binkynet.v1.NetworkControlService/WatchDeviceDiscoveries',
          ($2.WatchOptions value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.DeviceDiscovery.fromBuffer(value));
  static final _$setPowerActual = $grpc.ClientMethod<$0.PowerState, $0.Empty>(
      '/binkynet.v1.NetworkControlService/SetPowerActual',
      ($0.PowerState value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$setLocActual = $grpc.ClientMethod<$0.Loc, $0.Empty>(
      '/binkynet.v1.NetworkControlService/SetLocActual',
      ($0.Loc value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$setSensorActual = $grpc.ClientMethod<$0.Sensor, $0.Empty>(
      '/binkynet.v1.NetworkControlService/SetSensorActual',
      ($0.Sensor value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$setOutputActual = $grpc.ClientMethod<$0.Output, $0.Empty>(
      '/binkynet.v1.NetworkControlService/SetOutputActual',
      ($0.Output value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$setSwitchActual = $grpc.ClientMethod<$0.Switch, $0.Empty>(
      '/binkynet.v1.NetworkControlService/SetSwitchActual',
      ($0.Switch value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$setClockActual = $grpc.ClientMethod<$0.Clock, $0.Empty>(
      '/binkynet.v1.NetworkControlService/SetClockActual',
      ($0.Clock value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$watchClock = $grpc.ClientMethod<$2.WatchOptions, $0.Clock>(
      '/binkynet.v1.NetworkControlService/WatchClock',
      ($2.WatchOptions value) => value.writeToBuffer(),
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
      $2.WatchOptions request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$watchLocalWorkers, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.Empty> setDeviceDiscoveryRequest(
      $0.DeviceDiscovery request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setDeviceDiscoveryRequest, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.Empty> setDeviceDiscoveryActual(
      $0.DeviceDiscovery request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setDeviceDiscoveryActual, request,
        options: options);
  }

  $grpc.ResponseStream<$0.DeviceDiscovery> watchDeviceDiscoveries(
      $2.WatchOptions request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$watchDeviceDiscoveries, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.Empty> setPowerActual($0.PowerState request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setPowerActual, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> setLocActual($0.Loc request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setLocActual, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> setSensorActual($0.Sensor request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setSensorActual, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> setOutputActual($0.Output request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setOutputActual, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> setSwitchActual($0.Switch request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setSwitchActual, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> setClockActual($0.Clock request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setClockActual, request, options: options);
  }

  $grpc.ResponseStream<$0.Clock> watchClock($2.WatchOptions request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$watchClock, $async.Stream.fromIterable([request]),
        options: options);
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
    $addMethod($grpc.ServiceMethod<$2.WatchOptions, $0.LocalWorker>(
        'WatchLocalWorkers',
        watchLocalWorkers_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $2.WatchOptions.fromBuffer(value),
        ($0.LocalWorker value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeviceDiscovery, $0.Empty>(
        'SetDeviceDiscoveryRequest',
        setDeviceDiscoveryRequest_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeviceDiscovery.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeviceDiscovery, $0.Empty>(
        'SetDeviceDiscoveryActual',
        setDeviceDiscoveryActual_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeviceDiscovery.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.WatchOptions, $0.DeviceDiscovery>(
        'WatchDeviceDiscoveries',
        watchDeviceDiscoveries_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $2.WatchOptions.fromBuffer(value),
        ($0.DeviceDiscovery value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.PowerState, $0.Empty>(
        'SetPowerActual',
        setPowerActual_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.PowerState.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Loc, $0.Empty>(
        'SetLocActual',
        setLocActual_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Loc.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Sensor, $0.Empty>(
        'SetSensorActual',
        setSensorActual_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Sensor.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Output, $0.Empty>(
        'SetOutputActual',
        setOutputActual_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Output.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Switch, $0.Empty>(
        'SetSwitchActual',
        setSwitchActual_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Switch.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Clock, $0.Empty>(
        'SetClockActual',
        setClockActual_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Clock.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.WatchOptions, $0.Clock>(
        'WatchClock',
        watchClock_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $2.WatchOptions.fromBuffer(value),
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
      $grpc.ServiceCall call, $async.Future<$2.WatchOptions> request) async* {
    yield* watchLocalWorkers(call, await request);
  }

  $async.Future<$0.Empty> setDeviceDiscoveryRequest_Pre(
      $grpc.ServiceCall call, $async.Future<$0.DeviceDiscovery> request) async {
    return setDeviceDiscoveryRequest(call, await request);
  }

  $async.Future<$0.Empty> setDeviceDiscoveryActual_Pre(
      $grpc.ServiceCall call, $async.Future<$0.DeviceDiscovery> request) async {
    return setDeviceDiscoveryActual(call, await request);
  }

  $async.Stream<$0.DeviceDiscovery> watchDeviceDiscoveries_Pre(
      $grpc.ServiceCall call, $async.Future<$2.WatchOptions> request) async* {
    yield* watchDeviceDiscoveries(call, await request);
  }

  $async.Future<$0.Empty> setPowerActual_Pre(
      $grpc.ServiceCall call, $async.Future<$0.PowerState> request) async {
    return setPowerActual(call, await request);
  }

  $async.Future<$0.Empty> setLocActual_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Loc> request) async {
    return setLocActual(call, await request);
  }

  $async.Future<$0.Empty> setSensorActual_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Sensor> request) async {
    return setSensorActual(call, await request);
  }

  $async.Future<$0.Empty> setOutputActual_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Output> request) async {
    return setOutputActual(call, await request);
  }

  $async.Future<$0.Empty> setSwitchActual_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Switch> request) async {
    return setSwitchActual(call, await request);
  }

  $async.Future<$0.Empty> setClockActual_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Clock> request) async {
    return setClockActual(call, await request);
  }

  $async.Stream<$0.Clock> watchClock_Pre(
      $grpc.ServiceCall call, $async.Future<$2.WatchOptions> request) async* {
    yield* watchClock(call, await request);
  }

  $async.Future<$0.Empty> setLocalWorkerRequest(
      $grpc.ServiceCall call, $0.LocalWorker request);
  $async.Future<$0.Empty> setLocalWorkerActual(
      $grpc.ServiceCall call, $0.LocalWorker request);
  $async.Stream<$0.LocalWorker> watchLocalWorkers(
      $grpc.ServiceCall call, $2.WatchOptions request);
  $async.Future<$0.Empty> setDeviceDiscoveryRequest(
      $grpc.ServiceCall call, $0.DeviceDiscovery request);
  $async.Future<$0.Empty> setDeviceDiscoveryActual(
      $grpc.ServiceCall call, $0.DeviceDiscovery request);
  $async.Stream<$0.DeviceDiscovery> watchDeviceDiscoveries(
      $grpc.ServiceCall call, $2.WatchOptions request);
  $async.Future<$0.Empty> setPowerActual(
      $grpc.ServiceCall call, $0.PowerState request);
  $async.Future<$0.Empty> setLocActual($grpc.ServiceCall call, $0.Loc request);
  $async.Future<$0.Empty> setSensorActual(
      $grpc.ServiceCall call, $0.Sensor request);
  $async.Future<$0.Empty> setOutputActual(
      $grpc.ServiceCall call, $0.Output request);
  $async.Future<$0.Empty> setSwitchActual(
      $grpc.ServiceCall call, $0.Switch request);
  $async.Future<$0.Empty> setClockActual(
      $grpc.ServiceCall call, $0.Clock request);
  $async.Stream<$0.Clock> watchClock(
      $grpc.ServiceCall call, $2.WatchOptions request);
}
