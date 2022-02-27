///
//  Generated code. Do not modify.
//  source: commandstation.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

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
  static final _$power = $grpc.ClientMethod<$0.PowerState, $0.Power>(
      '/binkynet.v1.CommandStationService/Power',
      ($0.PowerState value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Power.fromBuffer(value));
  static final _$locs = $grpc.ClientMethod<$0.Loc, $0.Loc>(
      '/binkynet.v1.CommandStationService/Locs',
      ($0.Loc value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Loc.fromBuffer(value));

  CommandStationServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.CommandStationInfo> getInfo($0.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getInfo, request, options: options);
  }

  $grpc.ResponseStream<$0.Power> power($async.Stream<$0.PowerState> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$power, request, options: options);
  }

  $grpc.ResponseStream<$0.Loc> locs($async.Stream<$0.Loc> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$locs, request, options: options);
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
  }

  $async.Future<$0.CommandStationInfo> getInfo_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getInfo(call, await request);
  }

  $async.Future<$0.CommandStationInfo> getInfo(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Stream<$0.Power> power(
      $grpc.ServiceCall call, $async.Stream<$0.PowerState> request);
  $async.Stream<$0.Loc> locs(
      $grpc.ServiceCall call, $async.Stream<$0.Loc> request);
}
