///
//  Generated code. Do not modify.
//  source: localworker.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'types.pb.dart' as $0;
export 'localworker.pb.dart';

class LocalWorkerServiceClient extends $grpc.Client {
  static final _$reset = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/binkynet.v1.LocalWorkerService/Reset',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$setLocRequest = $grpc.ClientMethod<$0.Loc, $0.Empty>(
      '/binkynet.v1.LocalWorkerService/SetLocRequest',
      ($0.Loc value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$setPowerRequest = $grpc.ClientMethod<$0.PowerState, $0.Empty>(
      '/binkynet.v1.LocalWorkerService/SetPowerRequest',
      ($0.PowerState value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$setOutputRequest = $grpc.ClientMethod<$0.Output, $0.Empty>(
      '/binkynet.v1.LocalWorkerService/SetOutputRequest',
      ($0.Output value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$setSwitchRequest = $grpc.ClientMethod<$0.Switch, $0.Empty>(
      '/binkynet.v1.LocalWorkerService/SetSwitchRequest',
      ($0.Switch value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));

  LocalWorkerServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.Empty> reset($0.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$reset, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> setLocRequest($0.Loc request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setLocRequest, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> setPowerRequest($0.PowerState request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setPowerRequest, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> setOutputRequest($0.Output request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setOutputRequest, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> setSwitchRequest($0.Switch request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setSwitchRequest, request, options: options);
  }
}

abstract class LocalWorkerServiceBase extends $grpc.Service {
  $core.String get $name => 'binkynet.v1.LocalWorkerService';

  LocalWorkerServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Empty>(
        'Reset',
        reset_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Loc, $0.Empty>(
        'SetLocRequest',
        setLocRequest_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Loc.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.PowerState, $0.Empty>(
        'SetPowerRequest',
        setPowerRequest_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.PowerState.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Output, $0.Empty>(
        'SetOutputRequest',
        setOutputRequest_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Output.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Switch, $0.Empty>(
        'SetSwitchRequest',
        setSwitchRequest_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Switch.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$0.Empty> reset_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return reset(call, await request);
  }

  $async.Future<$0.Empty> setLocRequest_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Loc> request) async {
    return setLocRequest(call, await request);
  }

  $async.Future<$0.Empty> setPowerRequest_Pre(
      $grpc.ServiceCall call, $async.Future<$0.PowerState> request) async {
    return setPowerRequest(call, await request);
  }

  $async.Future<$0.Empty> setOutputRequest_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Output> request) async {
    return setOutputRequest(call, await request);
  }

  $async.Future<$0.Empty> setSwitchRequest_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Switch> request) async {
    return setSwitchRequest(call, await request);
  }

  $async.Future<$0.Empty> reset($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> setLocRequest($grpc.ServiceCall call, $0.Loc request);
  $async.Future<$0.Empty> setPowerRequest(
      $grpc.ServiceCall call, $0.PowerState request);
  $async.Future<$0.Empty> setOutputRequest(
      $grpc.ServiceCall call, $0.Output request);
  $async.Future<$0.Empty> setSwitchRequest(
      $grpc.ServiceCall call, $0.Switch request);
}
