///
//  Generated code. Do not modify.
//  source: commandstation.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'types.pb.dart' as $0;
export 'commandstation.pb.dart';

class CommandStationServiceClient extends $grpc.Client {
  static final _$getInfo = $grpc.ClientMethod<$0.Empty, $0.CommandStationInfo>(
      '/binkynet.v1.CommandStationService/GetInfo',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CommandStationInfo.fromBuffer(value));
  static final _$setPower = $grpc.ClientMethod<$0.PowerState, $0.Empty>(
      '/binkynet.v1.CommandStationService/SetPower',
      ($0.PowerState value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getPowerActuals = $grpc.ClientMethod<$0.Empty, $0.PowerState>(
      '/binkynet.v1.CommandStationService/GetPowerActuals',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.PowerState.fromBuffer(value));
  static final _$setLoc = $grpc.ClientMethod<$0.Loc, $0.Empty>(
      '/binkynet.v1.CommandStationService/SetLoc',
      ($0.Loc value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getLocActuals = $grpc.ClientMethod<$0.Empty, $0.Loc>(
      '/binkynet.v1.CommandStationService/GetLocActuals',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Loc.fromBuffer(value));

  CommandStationServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.CommandStationInfo> getInfo($0.Empty request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$getInfo, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.Empty> setPower($0.PowerState request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$setPower, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseStream<$0.PowerState> getPowerActuals($0.Empty request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getPowerActuals, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseStream(call);
  }

  $grpc.ResponseFuture<$0.Empty> setLoc($0.Loc request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$setLoc, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseStream<$0.Loc> getLocActuals($0.Empty request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getLocActuals, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseStream(call);
  }
}

abstract class CommandStationServiceBase extends $grpc.Service {
  $core.String get $name => 'binkynet.v1.CommandStationService';

  CommandStationServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.CommandStationInfo>(
        'GetInfo',
        getInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.CommandStationInfo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.PowerState, $0.Empty>(
        'SetPower',
        setPower_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.PowerState.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.PowerState>(
        'GetPowerActuals',
        getPowerActuals_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.PowerState value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Loc, $0.Empty>(
        'SetLoc',
        setLoc_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Loc.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Loc>(
        'GetLocActuals',
        getLocActuals_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Loc value) => value.writeToBuffer()));
  }

  $async.Future<$0.CommandStationInfo> getInfo_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getInfo(call, await request);
  }

  $async.Future<$0.Empty> setPower_Pre(
      $grpc.ServiceCall call, $async.Future<$0.PowerState> request) async {
    return setPower(call, await request);
  }

  $async.Stream<$0.PowerState> getPowerActuals_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async* {
    yield* getPowerActuals(call, await request);
  }

  $async.Future<$0.Empty> setLoc_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Loc> request) async {
    return setLoc(call, await request);
  }

  $async.Stream<$0.Loc> getLocActuals_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async* {
    yield* getLocActuals(call, await request);
  }

  $async.Future<$0.CommandStationInfo> getInfo(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> setPower(
      $grpc.ServiceCall call, $0.PowerState request);
  $async.Stream<$0.PowerState> getPowerActuals(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> setLoc($grpc.ServiceCall call, $0.Loc request);
  $async.Stream<$0.Loc> getLocActuals($grpc.ServiceCall call, $0.Empty request);
}
