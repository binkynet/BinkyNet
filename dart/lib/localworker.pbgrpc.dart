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
      $grpc.ClientMethod<$0.PowerRequestsOptions, $0.Power>(
          '/binkynet.v1.LocalWorkerControlService/GetPowerRequests',
          ($0.PowerRequestsOptions value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Power.fromBuffer(value));
  static final _$setPowerActuals = $grpc.ClientMethod<$0.Power, $0.Empty>(
      '/binkynet.v1.LocalWorkerControlService/SetPowerActuals',
      ($0.Power value) => value.writeToBuffer(),
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

  LocalWorkerControlServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.Empty> ping($0.LocalWorkerInfo request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$ping, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseStream<$0.Power> getPowerRequests(
      $0.PowerRequestsOptions request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getPowerRequests, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseStream(call);
  }

  $grpc.ResponseFuture<$0.Empty> setPowerActuals(
      $async.Stream<$0.Power> request,
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
    $addMethod($grpc.ServiceMethod<$0.PowerRequestsOptions, $0.Power>(
        'GetPowerRequests',
        getPowerRequests_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.PowerRequestsOptions.fromBuffer(value),
        ($0.Power value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Power, $0.Empty>(
        'SetPowerActuals',
        setPowerActuals,
        true,
        false,
        ($core.List<$core.int> value) => $0.Power.fromBuffer(value),
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
  }

  $async.Future<$0.Empty> ping_Pre(
      $grpc.ServiceCall call, $async.Future<$0.LocalWorkerInfo> request) async {
    return ping(call, await request);
  }

  $async.Stream<$0.Power> getPowerRequests_Pre($grpc.ServiceCall call,
      $async.Future<$0.PowerRequestsOptions> request) async* {
    yield* getPowerRequests(call, await request);
  }

  $async.Stream<$0.Loc> getLocRequests_Pre($grpc.ServiceCall call,
      $async.Future<$0.LocRequestsOptions> request) async* {
    yield* getLocRequests(call, await request);
  }

  $async.Future<$0.Empty> ping(
      $grpc.ServiceCall call, $0.LocalWorkerInfo request);
  $async.Stream<$0.Power> getPowerRequests(
      $grpc.ServiceCall call, $0.PowerRequestsOptions request);
  $async.Future<$0.Empty> setPowerActuals(
      $grpc.ServiceCall call, $async.Stream<$0.Power> request);
  $async.Stream<$0.Loc> getLocRequests(
      $grpc.ServiceCall call, $0.LocRequestsOptions request);
  $async.Future<$0.Empty> setLocActuals(
      $grpc.ServiceCall call, $async.Stream<$0.Loc> request);
}
