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
export 'network.pb.dart';

class NetworkControlServiceClient extends $grpc.Client {
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

  $async.Stream<$0.Sensor> sensors_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async* {
    yield* sensors(call, await request);
  }

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
