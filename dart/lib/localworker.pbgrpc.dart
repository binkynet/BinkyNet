///
//  Generated code. Do not modify.
//  source: localworker.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'types.pb.dart' as $0;
export 'localworker.pb.dart';

class LocalWorkerConfigServiceClient extends $grpc.Client {
  static final _$getConfig =
      $grpc.ClientMethod<$0.LocalWorkerInfo, $0.LocalWorkerConfig>(
          '/binkynet.v1.LocalWorkerConfigService/GetConfig',
          ($0.LocalWorkerInfo value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.LocalWorkerConfig.fromBuffer(value));

  LocalWorkerConfigServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseStream<$0.LocalWorkerConfig> getConfig(
      $0.LocalWorkerInfo request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$getConfig, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseStream(call);
  }
}

abstract class LocalWorkerConfigServiceBase extends $grpc.Service {
  $core.String get $name => 'binkynet.v1.LocalWorkerConfigService';

  LocalWorkerConfigServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.LocalWorkerInfo, $0.LocalWorkerConfig>(
        'GetConfig',
        getConfig_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.LocalWorkerInfo.fromBuffer(value),
        ($0.LocalWorkerConfig value) => value.writeToBuffer()));
  }

  $async.Stream<$0.LocalWorkerConfig> getConfig_Pre($grpc.ServiceCall call,
      $async.Future<$0.LocalWorkerInfo> request) async* {
    yield* getConfig(call, await request);
  }

  $async.Stream<$0.LocalWorkerConfig> getConfig(
      $grpc.ServiceCall call, $0.LocalWorkerInfo request);
}

class LocalWorkerControlServiceClient extends $grpc.Client {
  static final _$ping = $grpc.ClientMethod<$0.LocalWorkerInfo, $0.Empty>(
      '/binkynet.v1.LocalWorkerControlService/Ping',
      ($0.LocalWorkerInfo value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getPowerRequests =
      $grpc.ClientMethod<$0.PowerRequestsOptions, $0.PowerState>(
          '/binkynet.v1.LocalWorkerControlService/GetPowerRequests',
          ($0.PowerRequestsOptions value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.PowerState.fromBuffer(value));
  static final _$setPowerActuals = $grpc.ClientMethod<$0.PowerState, $0.Empty>(
      '/binkynet.v1.LocalWorkerControlService/SetPowerActuals',
      ($0.PowerState value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getLocRequests =
      $grpc.ClientMethod<$0.LocRequestsOptions, $0.Loc>(
          '/binkynet.v1.LocalWorkerControlService/GetLocRequests',
          ($0.LocRequestsOptions value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Loc.fromBuffer(value));
  static final _$setLocActuals = $grpc.ClientMethod<$0.Loc, $0.Empty>(
      '/binkynet.v1.LocalWorkerControlService/SetLocActuals',
      ($0.Loc value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$setSensorActuals = $grpc.ClientMethod<$0.Sensor, $0.Empty>(
      '/binkynet.v1.LocalWorkerControlService/SetSensorActuals',
      ($0.Sensor value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getOutputRequests =
      $grpc.ClientMethod<$0.OutputRequestsOptions, $0.Output>(
          '/binkynet.v1.LocalWorkerControlService/GetOutputRequests',
          ($0.OutputRequestsOptions value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Output.fromBuffer(value));
  static final _$setOutputActuals = $grpc.ClientMethod<$0.Output, $0.Empty>(
      '/binkynet.v1.LocalWorkerControlService/SetOutputActuals',
      ($0.Output value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getSwitchRequests =
      $grpc.ClientMethod<$0.SwitchRequestsOptions, $0.Switch>(
          '/binkynet.v1.LocalWorkerControlService/GetSwitchRequests',
          ($0.SwitchRequestsOptions value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Switch.fromBuffer(value));
  static final _$setSwitchActuals = $grpc.ClientMethod<$0.Switch, $0.Empty>(
      '/binkynet.v1.LocalWorkerControlService/SetSwitchActuals',
      ($0.Switch value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getClock = $grpc.ClientMethod<$0.Empty, $0.Clock>(
      '/binkynet.v1.LocalWorkerControlService/GetClock',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Clock.fromBuffer(value));

  LocalWorkerControlServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.Empty> ping($0.LocalWorkerInfo request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$ping, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseStream<$0.PowerState> getPowerRequests(
      $0.PowerRequestsOptions request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getPowerRequests, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseStream(call);
  }

  $grpc.ResponseFuture<$0.Empty> setPowerActuals(
      $async.Stream<$0.PowerState> request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$setPowerActuals, request, options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseStream<$0.Loc> getLocRequests($0.LocRequestsOptions request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getLocRequests, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseStream(call);
  }

  $grpc.ResponseFuture<$0.Empty> setLocActuals($async.Stream<$0.Loc> request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$setLocActuals, request, options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.Empty> setSensorActuals(
      $async.Stream<$0.Sensor> request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$setSensorActuals, request, options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseStream<$0.Output> getOutputRequests(
      $0.OutputRequestsOptions request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getOutputRequests, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseStream(call);
  }

  $grpc.ResponseFuture<$0.Empty> setOutputActuals(
      $async.Stream<$0.Output> request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$setOutputActuals, request, options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseStream<$0.Switch> getSwitchRequests(
      $0.SwitchRequestsOptions request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getSwitchRequests, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseStream(call);
  }

  $grpc.ResponseFuture<$0.Empty> setSwitchActuals(
      $async.Stream<$0.Switch> request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$setSwitchActuals, request, options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseStream<$0.Clock> getClock($0.Empty request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$getClock, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseStream(call);
  }
}

abstract class LocalWorkerControlServiceBase extends $grpc.Service {
  $core.String get $name => 'binkynet.v1.LocalWorkerControlService';

  LocalWorkerControlServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.LocalWorkerInfo, $0.Empty>(
        'Ping',
        ping_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LocalWorkerInfo.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.PowerRequestsOptions, $0.PowerState>(
        'GetPowerRequests',
        getPowerRequests_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.PowerRequestsOptions.fromBuffer(value),
        ($0.PowerState value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.PowerState, $0.Empty>(
        'SetPowerActuals',
        setPowerActuals,
        true,
        false,
        ($core.List<$core.int> value) => $0.PowerState.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LocRequestsOptions, $0.Loc>(
        'GetLocRequests',
        getLocRequests_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.LocRequestsOptions.fromBuffer(value),
        ($0.Loc value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Loc, $0.Empty>(
        'SetLocActuals',
        setLocActuals,
        true,
        false,
        ($core.List<$core.int> value) => $0.Loc.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Sensor, $0.Empty>(
        'SetSensorActuals',
        setSensorActuals,
        true,
        false,
        ($core.List<$core.int> value) => $0.Sensor.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.OutputRequestsOptions, $0.Output>(
        'GetOutputRequests',
        getOutputRequests_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.OutputRequestsOptions.fromBuffer(value),
        ($0.Output value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Output, $0.Empty>(
        'SetOutputActuals',
        setOutputActuals,
        true,
        false,
        ($core.List<$core.int> value) => $0.Output.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SwitchRequestsOptions, $0.Switch>(
        'GetSwitchRequests',
        getSwitchRequests_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.SwitchRequestsOptions.fromBuffer(value),
        ($0.Switch value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Switch, $0.Empty>(
        'SetSwitchActuals',
        setSwitchActuals,
        true,
        false,
        ($core.List<$core.int> value) => $0.Switch.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Clock>(
        'GetClock',
        getClock_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Clock value) => value.writeToBuffer()));
  }

  $async.Future<$0.Empty> ping_Pre(
      $grpc.ServiceCall call, $async.Future<$0.LocalWorkerInfo> request) async {
    return ping(call, await request);
  }

  $async.Stream<$0.PowerState> getPowerRequests_Pre($grpc.ServiceCall call,
      $async.Future<$0.PowerRequestsOptions> request) async* {
    yield* getPowerRequests(call, await request);
  }

  $async.Stream<$0.Loc> getLocRequests_Pre($grpc.ServiceCall call,
      $async.Future<$0.LocRequestsOptions> request) async* {
    yield* getLocRequests(call, await request);
  }

  $async.Stream<$0.Output> getOutputRequests_Pre($grpc.ServiceCall call,
      $async.Future<$0.OutputRequestsOptions> request) async* {
    yield* getOutputRequests(call, await request);
  }

  $async.Stream<$0.Switch> getSwitchRequests_Pre($grpc.ServiceCall call,
      $async.Future<$0.SwitchRequestsOptions> request) async* {
    yield* getSwitchRequests(call, await request);
  }

  $async.Stream<$0.Clock> getClock_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async* {
    yield* getClock(call, await request);
  }

  $async.Future<$0.Empty> ping(
      $grpc.ServiceCall call, $0.LocalWorkerInfo request);
  $async.Stream<$0.PowerState> getPowerRequests(
      $grpc.ServiceCall call, $0.PowerRequestsOptions request);
  $async.Future<$0.Empty> setPowerActuals(
      $grpc.ServiceCall call, $async.Stream<$0.PowerState> request);
  $async.Stream<$0.Loc> getLocRequests(
      $grpc.ServiceCall call, $0.LocRequestsOptions request);
  $async.Future<$0.Empty> setLocActuals(
      $grpc.ServiceCall call, $async.Stream<$0.Loc> request);
  $async.Future<$0.Empty> setSensorActuals(
      $grpc.ServiceCall call, $async.Stream<$0.Sensor> request);
  $async.Stream<$0.Output> getOutputRequests(
      $grpc.ServiceCall call, $0.OutputRequestsOptions request);
  $async.Future<$0.Empty> setOutputActuals(
      $grpc.ServiceCall call, $async.Stream<$0.Output> request);
  $async.Stream<$0.Switch> getSwitchRequests(
      $grpc.ServiceCall call, $0.SwitchRequestsOptions request);
  $async.Future<$0.Empty> setSwitchActuals(
      $grpc.ServiceCall call, $async.Stream<$0.Switch> request);
  $async.Stream<$0.Clock> getClock($grpc.ServiceCall call, $0.Empty request);
}
