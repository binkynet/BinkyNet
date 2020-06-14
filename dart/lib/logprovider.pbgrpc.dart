///
//  Generated code. Do not modify.
//  source: logprovider.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'logprovider.pb.dart' as $1;
export 'logprovider.pb.dart';

class LogProviderServiceClient extends $grpc.Client {
  static final _$getLogs = $grpc.ClientMethod<$1.GetLogsRequest, $1.LogEntry>(
      '/binkynet.v1.LogProviderService/GetLogs',
      ($1.GetLogsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.LogEntry.fromBuffer(value));

  LogProviderServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseStream<$1.LogEntry> getLogs($1.GetLogsRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$getLogs, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseStream(call);
  }
}

abstract class LogProviderServiceBase extends $grpc.Service {
  $core.String get $name => 'binkynet.v1.LogProviderService';

  LogProviderServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.GetLogsRequest, $1.LogEntry>(
        'GetLogs',
        getLogs_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $1.GetLogsRequest.fromBuffer(value),
        ($1.LogEntry value) => value.writeToBuffer()));
  }

  $async.Stream<$1.LogEntry> getLogs_Pre(
      $grpc.ServiceCall call, $async.Future<$1.GetLogsRequest> request) async* {
    yield* getLogs(call, await request);
  }

  $async.Stream<$1.LogEntry> getLogs(
      $grpc.ServiceCall call, $1.GetLogsRequest request);
}
