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

  LocalWorkerServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.Empty> reset($0.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$reset, request, options: options);
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
  }

  $async.Future<$0.Empty> reset_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return reset(call, await request);
  }

  $async.Future<$0.Empty> reset($grpc.ServiceCall call, $0.Empty request);
}
