///
//  Generated code. Do not modify.
//  source: localworker.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'localworker.pb.dart' as $1;
import 'types.pb.dart' as $0;
export 'localworker.pb.dart';

class LocalWorkerServiceClient extends $grpc.Client {
  static final _$getFeatures =
      $grpc.ClientMethod<$1.GetFeaturesRequest, $1.Features>(
          '/binkynet.v1.LocalWorkerService/GetFeatures',
          ($1.GetFeaturesRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Features.fromBuffer(value));
  static final _$describe =
      $grpc.ClientMethod<$1.DescribeRequest, $0.LocalWorkerInfo>(
          '/binkynet.v1.LocalWorkerService/Describe',
          ($1.DescribeRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.LocalWorkerInfo.fromBuffer(value));
  static final _$configure = $grpc.ClientMethod<$0.LocalWorkerConfig, $0.Empty>(
      '/binkynet.v1.LocalWorkerService/Configure',
      ($0.LocalWorkerConfig value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$discoverDevices =
      $grpc.ClientMethod<$1.DiscoverDevicesRequest, $1.DiscoverDevicesResult>(
          '/binkynet.v1.LocalWorkerService/DiscoverDevices',
          ($1.DiscoverDevicesRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.DiscoverDevicesResult.fromBuffer(value));
  static final _$setPowerRequests = $grpc.ClientMethod<$0.PowerState, $0.Empty>(
      '/binkynet.v1.LocalWorkerService/SetPowerRequests',
      ($0.PowerState value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getPowerActuals =
      $grpc.ClientMethod<$1.GetPowerActualsRequest, $0.PowerState>(
          '/binkynet.v1.LocalWorkerService/GetPowerActuals',
          ($1.GetPowerActualsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.PowerState.fromBuffer(value));
  static final _$setLocRequests = $grpc.ClientMethod<$0.Loc, $0.Empty>(
      '/binkynet.v1.LocalWorkerService/SetLocRequests',
      ($0.Loc value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getLocActuals =
      $grpc.ClientMethod<$1.GetLocActualsRequest, $0.Loc>(
          '/binkynet.v1.LocalWorkerService/GetLocActuals',
          ($1.GetLocActualsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Loc.fromBuffer(value));
  static final _$getSensorActuals =
      $grpc.ClientMethod<$1.GetSensorActualsRequest, $0.Sensor>(
          '/binkynet.v1.LocalWorkerService/GetSensorActuals',
          ($1.GetSensorActualsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Sensor.fromBuffer(value));
  static final _$setOutputRequests = $grpc.ClientMethod<$0.Output, $0.Empty>(
      '/binkynet.v1.LocalWorkerService/SetOutputRequests',
      ($0.Output value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getOutputActuals =
      $grpc.ClientMethod<$1.GetOutputActualsRequest, $0.Output>(
          '/binkynet.v1.LocalWorkerService/GetOutputActuals',
          ($1.GetOutputActualsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Output.fromBuffer(value));
  static final _$setSwitchRequests = $grpc.ClientMethod<$0.Switch, $0.Empty>(
      '/binkynet.v1.LocalWorkerService/SetSwitchRequests',
      ($0.Switch value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getSwitchActuals =
      $grpc.ClientMethod<$1.GetSwitchActualsRequest, $0.Switch>(
          '/binkynet.v1.LocalWorkerService/GetSwitchActuals',
          ($1.GetSwitchActualsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Switch.fromBuffer(value));
  static final _$setClock = $grpc.ClientMethod<$0.Clock, $0.Empty>(
      '/binkynet.v1.LocalWorkerService/SetClock',
      ($0.Clock value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));

  LocalWorkerServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.Features> getFeatures($1.GetFeaturesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getFeatures, request, options: options);
  }

  $grpc.ResponseStream<$0.LocalWorkerInfo> describe($1.DescribeRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$describe, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.Empty> configure($0.LocalWorkerConfig request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$configure, request, options: options);
  }

  $grpc.ResponseFuture<$1.DiscoverDevicesResult> discoverDevices(
      $1.DiscoverDevicesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$discoverDevices, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> setPowerRequests(
      $async.Stream<$0.PowerState> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$setPowerRequests, request, options: options)
        .single;
  }

  $grpc.ResponseStream<$0.PowerState> getPowerActuals(
      $1.GetPowerActualsRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getPowerActuals, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.Empty> setLocRequests($async.Stream<$0.Loc> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$setLocRequests, request, options: options)
        .single;
  }

  $grpc.ResponseStream<$0.Loc> getLocActuals($1.GetLocActualsRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getLocActuals, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$0.Sensor> getSensorActuals(
      $1.GetSensorActualsRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getSensorActuals, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.Empty> setOutputRequests(
      $async.Stream<$0.Output> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$setOutputRequests, request, options: options)
        .single;
  }

  $grpc.ResponseStream<$0.Output> getOutputActuals(
      $1.GetOutputActualsRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getOutputActuals, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.Empty> setSwitchRequests(
      $async.Stream<$0.Switch> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$setSwitchRequests, request, options: options)
        .single;
  }

  $grpc.ResponseStream<$0.Switch> getSwitchActuals(
      $1.GetSwitchActualsRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getSwitchActuals, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.Empty> setClock($async.Stream<$0.Clock> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$setClock, request, options: options).single;
  }
}

abstract class LocalWorkerServiceBase extends $grpc.Service {
  $core.String get $name => 'binkynet.v1.LocalWorkerService';

  LocalWorkerServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.GetFeaturesRequest, $1.Features>(
        'GetFeatures',
        getFeatures_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.GetFeaturesRequest.fromBuffer(value),
        ($1.Features value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.DescribeRequest, $0.LocalWorkerInfo>(
        'Describe',
        describe_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $1.DescribeRequest.fromBuffer(value),
        ($0.LocalWorkerInfo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LocalWorkerConfig, $0.Empty>(
        'Configure',
        configure_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LocalWorkerConfig.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.DiscoverDevicesRequest,
            $1.DiscoverDevicesResult>(
        'DiscoverDevices',
        discoverDevices_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.DiscoverDevicesRequest.fromBuffer(value),
        ($1.DiscoverDevicesResult value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.PowerState, $0.Empty>(
        'SetPowerRequests',
        setPowerRequests,
        true,
        false,
        ($core.List<$core.int> value) => $0.PowerState.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetPowerActualsRequest, $0.PowerState>(
        'GetPowerActuals',
        getPowerActuals_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $1.GetPowerActualsRequest.fromBuffer(value),
        ($0.PowerState value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Loc, $0.Empty>(
        'SetLocRequests',
        setLocRequests,
        true,
        false,
        ($core.List<$core.int> value) => $0.Loc.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetLocActualsRequest, $0.Loc>(
        'GetLocActuals',
        getLocActuals_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $1.GetLocActualsRequest.fromBuffer(value),
        ($0.Loc value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetSensorActualsRequest, $0.Sensor>(
        'GetSensorActuals',
        getSensorActuals_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $1.GetSensorActualsRequest.fromBuffer(value),
        ($0.Sensor value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Output, $0.Empty>(
        'SetOutputRequests',
        setOutputRequests,
        true,
        false,
        ($core.List<$core.int> value) => $0.Output.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetOutputActualsRequest, $0.Output>(
        'GetOutputActuals',
        getOutputActuals_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $1.GetOutputActualsRequest.fromBuffer(value),
        ($0.Output value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Switch, $0.Empty>(
        'SetSwitchRequests',
        setSwitchRequests,
        true,
        false,
        ($core.List<$core.int> value) => $0.Switch.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetSwitchActualsRequest, $0.Switch>(
        'GetSwitchActuals',
        getSwitchActuals_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $1.GetSwitchActualsRequest.fromBuffer(value),
        ($0.Switch value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Clock, $0.Empty>(
        'SetClock',
        setClock,
        true,
        false,
        ($core.List<$core.int> value) => $0.Clock.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$1.Features> getFeatures_Pre($grpc.ServiceCall call,
      $async.Future<$1.GetFeaturesRequest> request) async {
    return getFeatures(call, await request);
  }

  $async.Stream<$0.LocalWorkerInfo> describe_Pre($grpc.ServiceCall call,
      $async.Future<$1.DescribeRequest> request) async* {
    yield* describe(call, await request);
  }

  $async.Future<$0.Empty> configure_Pre($grpc.ServiceCall call,
      $async.Future<$0.LocalWorkerConfig> request) async {
    return configure(call, await request);
  }

  $async.Future<$1.DiscoverDevicesResult> discoverDevices_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.DiscoverDevicesRequest> request) async {
    return discoverDevices(call, await request);
  }

  $async.Stream<$0.PowerState> getPowerActuals_Pre($grpc.ServiceCall call,
      $async.Future<$1.GetPowerActualsRequest> request) async* {
    yield* getPowerActuals(call, await request);
  }

  $async.Stream<$0.Loc> getLocActuals_Pre($grpc.ServiceCall call,
      $async.Future<$1.GetLocActualsRequest> request) async* {
    yield* getLocActuals(call, await request);
  }

  $async.Stream<$0.Sensor> getSensorActuals_Pre($grpc.ServiceCall call,
      $async.Future<$1.GetSensorActualsRequest> request) async* {
    yield* getSensorActuals(call, await request);
  }

  $async.Stream<$0.Output> getOutputActuals_Pre($grpc.ServiceCall call,
      $async.Future<$1.GetOutputActualsRequest> request) async* {
    yield* getOutputActuals(call, await request);
  }

  $async.Stream<$0.Switch> getSwitchActuals_Pre($grpc.ServiceCall call,
      $async.Future<$1.GetSwitchActualsRequest> request) async* {
    yield* getSwitchActuals(call, await request);
  }

  $async.Future<$1.Features> getFeatures(
      $grpc.ServiceCall call, $1.GetFeaturesRequest request);
  $async.Stream<$0.LocalWorkerInfo> describe(
      $grpc.ServiceCall call, $1.DescribeRequest request);
  $async.Future<$0.Empty> configure(
      $grpc.ServiceCall call, $0.LocalWorkerConfig request);
  $async.Future<$1.DiscoverDevicesResult> discoverDevices(
      $grpc.ServiceCall call, $1.DiscoverDevicesRequest request);
  $async.Future<$0.Empty> setPowerRequests(
      $grpc.ServiceCall call, $async.Stream<$0.PowerState> request);
  $async.Stream<$0.PowerState> getPowerActuals(
      $grpc.ServiceCall call, $1.GetPowerActualsRequest request);
  $async.Future<$0.Empty> setLocRequests(
      $grpc.ServiceCall call, $async.Stream<$0.Loc> request);
  $async.Stream<$0.Loc> getLocActuals(
      $grpc.ServiceCall call, $1.GetLocActualsRequest request);
  $async.Stream<$0.Sensor> getSensorActuals(
      $grpc.ServiceCall call, $1.GetSensorActualsRequest request);
  $async.Future<$0.Empty> setOutputRequests(
      $grpc.ServiceCall call, $async.Stream<$0.Output> request);
  $async.Stream<$0.Output> getOutputActuals(
      $grpc.ServiceCall call, $1.GetOutputActualsRequest request);
  $async.Future<$0.Empty> setSwitchRequests(
      $grpc.ServiceCall call, $async.Stream<$0.Switch> request);
  $async.Stream<$0.Switch> getSwitchActuals(
      $grpc.ServiceCall call, $1.GetSwitchActualsRequest request);
  $async.Future<$0.Empty> setClock(
      $grpc.ServiceCall call, $async.Stream<$0.Clock> request);
}
