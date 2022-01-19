///
//  Generated code. Do not modify.
//  source: trip.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'trip.pb.dart' as $0;
export 'trip.pb.dart';

class TripServiceClient extends $grpc.Client {
  static final _$getAllTrips = $grpc.ClientMethod<$0.Empty, $0.TripsResponse>(
      '/TripService/getAllTrips',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.TripsResponse.fromBuffer(value));
  static final _$getTripById =
      $grpc.ClientMethod<$0.TripRequest, $0.TripResponse>(
          '/TripService/getTripById',
          ($0.TripRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.TripResponse.fromBuffer(value));

  TripServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.TripsResponse> getAllTrips($0.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllTrips, request, options: options);
  }

  $grpc.ResponseFuture<$0.TripResponse> getTripById($0.TripRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTripById, request, options: options);
  }
}

abstract class TripServiceBase extends $grpc.Service {
  $core.String get $name => 'TripService';

  TripServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.TripsResponse>(
        'getAllTrips',
        getAllTrips_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.TripsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.TripRequest, $0.TripResponse>(
        'getTripById',
        getTripById_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.TripRequest.fromBuffer(value),
        ($0.TripResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.TripsResponse> getAllTrips_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getAllTrips(call, await request);
  }

  $async.Future<$0.TripResponse> getTripById_Pre(
      $grpc.ServiceCall call, $async.Future<$0.TripRequest> request) async {
    return getTripById(call, await request);
  }

  $async.Future<$0.TripsResponse> getAllTrips(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.TripResponse> getTripById(
      $grpc.ServiceCall call, $0.TripRequest request);
}

class UserServiceClient extends $grpc.Client {
  static final _$createUserWithEmailAndPassword =
      $grpc.ClientMethod<$0.UserRequest, $0.UserResponse>(
          '/UserService/createUserWithEmailAndPassword',
          ($0.UserRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.UserResponse.fromBuffer(value));
  static final _$signInWithEmailAndPassword =
      $grpc.ClientMethod<$0.UserRequest, $0.UserResponse>(
          '/UserService/signInWithEmailAndPassword',
          ($0.UserRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.UserResponse.fromBuffer(value));

  UserServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.UserResponse> createUserWithEmailAndPassword(
      $0.UserRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createUserWithEmailAndPassword, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.UserResponse> signInWithEmailAndPassword(
      $0.UserRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$signInWithEmailAndPassword, request,
        options: options);
  }
}

abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'UserService';

  UserServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.UserRequest, $0.UserResponse>(
        'createUserWithEmailAndPassword',
        createUserWithEmailAndPassword_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UserRequest.fromBuffer(value),
        ($0.UserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UserRequest, $0.UserResponse>(
        'signInWithEmailAndPassword',
        signInWithEmailAndPassword_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UserRequest.fromBuffer(value),
        ($0.UserResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.UserResponse> createUserWithEmailAndPassword_Pre(
      $grpc.ServiceCall call, $async.Future<$0.UserRequest> request) async {
    return createUserWithEmailAndPassword(call, await request);
  }

  $async.Future<$0.UserResponse> signInWithEmailAndPassword_Pre(
      $grpc.ServiceCall call, $async.Future<$0.UserRequest> request) async {
    return signInWithEmailAndPassword(call, await request);
  }

  $async.Future<$0.UserResponse> createUserWithEmailAndPassword(
      $grpc.ServiceCall call, $0.UserRequest request);
  $async.Future<$0.UserResponse> signInWithEmailAndPassword(
      $grpc.ServiceCall call, $0.UserRequest request);
}
