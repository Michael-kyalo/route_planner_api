///
//  Generated code. Do not modify.
//  source: trip.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use activityDescriptor instead')
const Activity$json = const {
  '1': 'Activity',
  '2': const [
    const {'1': 'tripId', '3': 1, '4': 1, '5': 5, '10': 'tripId'},
    const {'1': 'id', '3': 2, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'status', '3': 3, '4': 1, '5': 5, '10': 'status'},
    const {'1': 'title', '3': 4, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'costs', '3': 5, '4': 3, '5': 11, '6': '.Cost', '10': 'costs'},
  ],
};

/// Descriptor for `Activity`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List activityDescriptor = $convert.base64Decode('CghBY3Rpdml0eRIWCgZ0cmlwSWQYASABKAVSBnRyaXBJZBIOCgJpZBgCIAEoBVICaWQSFgoGc3RhdHVzGAMgASgFUgZzdGF0dXMSFAoFdGl0bGUYBCABKAlSBXRpdGxlEhsKBWNvc3RzGAUgAygLMgUuQ29zdFIFY29zdHM=');
@$core.Deprecated('Use costDescriptor instead')
const Cost$json = const {
  '1': 'Cost',
  '2': const [
    const {'1': 'activityId', '3': 1, '4': 1, '5': 5, '10': 'activityId'},
    const {'1': 'id', '3': 2, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'total', '3': 3, '4': 1, '5': 5, '10': 'total'},
    const {'1': 'title', '3': 4, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'description', '3': 5, '4': 1, '5': 9, '10': 'description'},
  ],
};

/// Descriptor for `Cost`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List costDescriptor = $convert.base64Decode('CgRDb3N0Eh4KCmFjdGl2aXR5SWQYASABKAVSCmFjdGl2aXR5SWQSDgoCaWQYAiABKAVSAmlkEhQKBXRvdGFsGAMgASgFUgV0b3RhbBIUCgV0aXRsZRgEIAEoCVIFdGl0bGUSIAoLZGVzY3JpcHRpb24YBSABKAlSC2Rlc2NyaXB0aW9u');
@$core.Deprecated('Use tripTagDescriptor instead')
const TripTag$json = const {
  '1': 'TripTag',
  '2': const [
    const {'1': 'tripId', '3': 1, '4': 1, '5': 5, '10': 'tripId'},
    const {'1': 'id', '3': 2, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'title', '3': 3, '4': 1, '5': 9, '10': 'title'},
  ],
};

/// Descriptor for `TripTag`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tripTagDescriptor = $convert.base64Decode('CgdUcmlwVGFnEhYKBnRyaXBJZBgBIAEoBVIGdHJpcElkEg4KAmlkGAIgASgFUgJpZBIUCgV0aXRsZRgDIAEoCVIFdGl0bGU=');
@$core.Deprecated('Use tripPhotoDescriptor instead')
const TripPhoto$json = const {
  '1': 'TripPhoto',
  '2': const [
    const {'1': 'tripId', '3': 1, '4': 1, '5': 5, '10': 'tripId'},
    const {'1': 'id', '3': 2, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'url', '3': 3, '4': 1, '5': 9, '10': 'url'},
    const {'1': 'caption', '3': 4, '4': 1, '5': 9, '10': 'caption'},
  ],
};

/// Descriptor for `TripPhoto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tripPhotoDescriptor = $convert.base64Decode('CglUcmlwUGhvdG8SFgoGdHJpcElkGAEgASgFUgZ0cmlwSWQSDgoCaWQYAiABKAVSAmlkEhAKA3VybBgDIAEoCVIDdXJsEhgKB2NhcHRpb24YBCABKAlSB2NhcHRpb24=');
@$core.Deprecated('Use tripDescriptor instead')
const Trip$json = const {
  '1': 'Trip',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'status', '3': 4, '4': 1, '5': 5, '10': 'status'},
    const {'1': 'budget', '3': 5, '4': 1, '5': 5, '10': 'budget'},
    const {'1': 'activities', '3': 6, '4': 3, '5': 11, '6': '.Activity', '10': 'activities'},
    const {'1': 'tags', '3': 7, '4': 3, '5': 11, '6': '.TripTag', '10': 'tags'},
    const {'1': 'photos', '3': 8, '4': 3, '5': 11, '6': '.TripPhoto', '10': 'photos'},
  ],
};

/// Descriptor for `Trip`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tripDescriptor = $convert.base64Decode('CgRUcmlwEg4KAmlkGAEgASgFUgJpZBIUCgV0aXRsZRgCIAEoCVIFdGl0bGUSIAoLZGVzY3JpcHRpb24YAyABKAlSC2Rlc2NyaXB0aW9uEhYKBnN0YXR1cxgEIAEoBVIGc3RhdHVzEhYKBmJ1ZGdldBgFIAEoBVIGYnVkZ2V0EikKCmFjdGl2aXRpZXMYBiADKAsyCS5BY3Rpdml0eVIKYWN0aXZpdGllcxIcCgR0YWdzGAcgAygLMgguVHJpcFRhZ1IEdGFncxIiCgZwaG90b3MYCCADKAsyCi5UcmlwUGhvdG9SBnBob3Rvcw==');
@$core.Deprecated('Use emptyDescriptor instead')
const Empty$json = const {
  '1': 'Empty',
};

/// Descriptor for `Empty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyDescriptor = $convert.base64Decode('CgVFbXB0eQ==');
@$core.Deprecated('Use tripRequestDescriptor instead')
const TripRequest$json = const {
  '1': 'TripRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `TripRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tripRequestDescriptor = $convert.base64Decode('CgtUcmlwUmVxdWVzdBIOCgJpZBgBIAEoBVICaWQ=');
@$core.Deprecated('Use tripResponseDescriptor instead')
const TripResponse$json = const {
  '1': 'TripResponse',
  '2': const [
    const {'1': 'trip', '3': 1, '4': 1, '5': 11, '6': '.Trip', '10': 'trip'},
  ],
};

/// Descriptor for `TripResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tripResponseDescriptor = $convert.base64Decode('CgxUcmlwUmVzcG9uc2USGQoEdHJpcBgBIAEoCzIFLlRyaXBSBHRyaXA=');
@$core.Deprecated('Use tripsResponseDescriptor instead')
const TripsResponse$json = const {
  '1': 'TripsResponse',
  '2': const [
    const {'1': 'trips', '3': 1, '4': 3, '5': 11, '6': '.Trip', '10': 'trips'},
  ],
};

/// Descriptor for `TripsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tripsResponseDescriptor = $convert.base64Decode('Cg1Ucmlwc1Jlc3BvbnNlEhsKBXRyaXBzGAEgAygLMgUuVHJpcFIFdHJpcHM=');
