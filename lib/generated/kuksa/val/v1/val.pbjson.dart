///
//  Generated code. Do not modify.
//  source: kuksa/val/v1/val.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use entryRequestDescriptor instead')
const EntryRequest$json = const {
  '1': 'EntryRequest',
  '2': const [
    const {'1': 'path', '3': 1, '4': 1, '5': 9, '10': 'path'},
    const {'1': 'view', '3': 2, '4': 1, '5': 14, '6': '.kuksa.val.v1.View', '10': 'view'},
    const {'1': 'fields', '3': 3, '4': 3, '5': 14, '6': '.kuksa.val.v1.Field', '10': 'fields'},
  ],
};

/// Descriptor for `EntryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List entryRequestDescriptor = $convert.base64Decode('CgxFbnRyeVJlcXVlc3QSEgoEcGF0aBgBIAEoCVIEcGF0aBImCgR2aWV3GAIgASgOMhIua3Vrc2EudmFsLnYxLlZpZXdSBHZpZXcSKwoGZmllbGRzGAMgAygOMhMua3Vrc2EudmFsLnYxLkZpZWxkUgZmaWVsZHM=');
@$core.Deprecated('Use getRequestDescriptor instead')
const GetRequest$json = const {
  '1': 'GetRequest',
  '2': const [
    const {'1': 'entries', '3': 1, '4': 3, '5': 11, '6': '.kuksa.val.v1.EntryRequest', '10': 'entries'},
  ],
};

/// Descriptor for `GetRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRequestDescriptor = $convert.base64Decode('CgpHZXRSZXF1ZXN0EjQKB2VudHJpZXMYASADKAsyGi5rdWtzYS52YWwudjEuRW50cnlSZXF1ZXN0UgdlbnRyaWVz');
@$core.Deprecated('Use getResponseDescriptor instead')
const GetResponse$json = const {
  '1': 'GetResponse',
  '2': const [
    const {'1': 'entries', '3': 1, '4': 3, '5': 11, '6': '.kuksa.val.v1.DataEntry', '10': 'entries'},
    const {'1': 'errors', '3': 2, '4': 3, '5': 11, '6': '.kuksa.val.v1.DataEntryError', '10': 'errors'},
    const {'1': 'error', '3': 3, '4': 1, '5': 11, '6': '.kuksa.val.v1.Error', '10': 'error'},
  ],
};

/// Descriptor for `GetResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getResponseDescriptor = $convert.base64Decode('CgtHZXRSZXNwb25zZRIxCgdlbnRyaWVzGAEgAygLMhcua3Vrc2EudmFsLnYxLkRhdGFFbnRyeVIHZW50cmllcxI0CgZlcnJvcnMYAiADKAsyHC5rdWtzYS52YWwudjEuRGF0YUVudHJ5RXJyb3JSBmVycm9ycxIpCgVlcnJvchgDIAEoCzITLmt1a3NhLnZhbC52MS5FcnJvclIFZXJyb3I=');
@$core.Deprecated('Use entryUpdateDescriptor instead')
const EntryUpdate$json = const {
  '1': 'EntryUpdate',
  '2': const [
    const {'1': 'entry', '3': 1, '4': 1, '5': 11, '6': '.kuksa.val.v1.DataEntry', '10': 'entry'},
    const {'1': 'fields', '3': 2, '4': 3, '5': 14, '6': '.kuksa.val.v1.Field', '10': 'fields'},
  ],
};

/// Descriptor for `EntryUpdate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List entryUpdateDescriptor = $convert.base64Decode('CgtFbnRyeVVwZGF0ZRItCgVlbnRyeRgBIAEoCzIXLmt1a3NhLnZhbC52MS5EYXRhRW50cnlSBWVudHJ5EisKBmZpZWxkcxgCIAMoDjITLmt1a3NhLnZhbC52MS5GaWVsZFIGZmllbGRz');
@$core.Deprecated('Use setRequestDescriptor instead')
const SetRequest$json = const {
  '1': 'SetRequest',
  '2': const [
    const {'1': 'updates', '3': 1, '4': 3, '5': 11, '6': '.kuksa.val.v1.EntryUpdate', '10': 'updates'},
  ],
};

/// Descriptor for `SetRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setRequestDescriptor = $convert.base64Decode('CgpTZXRSZXF1ZXN0EjMKB3VwZGF0ZXMYASADKAsyGS5rdWtzYS52YWwudjEuRW50cnlVcGRhdGVSB3VwZGF0ZXM=');
@$core.Deprecated('Use setResponseDescriptor instead')
const SetResponse$json = const {
  '1': 'SetResponse',
  '2': const [
    const {'1': 'error', '3': 1, '4': 1, '5': 11, '6': '.kuksa.val.v1.Error', '10': 'error'},
    const {'1': 'errors', '3': 2, '4': 3, '5': 11, '6': '.kuksa.val.v1.DataEntryError', '10': 'errors'},
  ],
};

/// Descriptor for `SetResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setResponseDescriptor = $convert.base64Decode('CgtTZXRSZXNwb25zZRIpCgVlcnJvchgBIAEoCzITLmt1a3NhLnZhbC52MS5FcnJvclIFZXJyb3ISNAoGZXJyb3JzGAIgAygLMhwua3Vrc2EudmFsLnYxLkRhdGFFbnRyeUVycm9yUgZlcnJvcnM=');
@$core.Deprecated('Use subscribeEntryDescriptor instead')
const SubscribeEntry$json = const {
  '1': 'SubscribeEntry',
  '2': const [
    const {'1': 'path', '3': 1, '4': 1, '5': 9, '10': 'path'},
    const {'1': 'view', '3': 2, '4': 1, '5': 14, '6': '.kuksa.val.v1.View', '10': 'view'},
    const {'1': 'fields', '3': 3, '4': 3, '5': 14, '6': '.kuksa.val.v1.Field', '10': 'fields'},
  ],
};

/// Descriptor for `SubscribeEntry`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subscribeEntryDescriptor = $convert.base64Decode('Cg5TdWJzY3JpYmVFbnRyeRISCgRwYXRoGAEgASgJUgRwYXRoEiYKBHZpZXcYAiABKA4yEi5rdWtzYS52YWwudjEuVmlld1IEdmlldxIrCgZmaWVsZHMYAyADKA4yEy5rdWtzYS52YWwudjEuRmllbGRSBmZpZWxkcw==');
@$core.Deprecated('Use subscribeRequestDescriptor instead')
const SubscribeRequest$json = const {
  '1': 'SubscribeRequest',
  '2': const [
    const {'1': 'entries', '3': 1, '4': 3, '5': 11, '6': '.kuksa.val.v1.SubscribeEntry', '10': 'entries'},
  ],
};

/// Descriptor for `SubscribeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subscribeRequestDescriptor = $convert.base64Decode('ChBTdWJzY3JpYmVSZXF1ZXN0EjYKB2VudHJpZXMYASADKAsyHC5rdWtzYS52YWwudjEuU3Vic2NyaWJlRW50cnlSB2VudHJpZXM=');
@$core.Deprecated('Use subscribeResponseDescriptor instead')
const SubscribeResponse$json = const {
  '1': 'SubscribeResponse',
  '2': const [
    const {'1': 'updates', '3': 1, '4': 3, '5': 11, '6': '.kuksa.val.v1.EntryUpdate', '10': 'updates'},
  ],
};

/// Descriptor for `SubscribeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subscribeResponseDescriptor = $convert.base64Decode('ChFTdWJzY3JpYmVSZXNwb25zZRIzCgd1cGRhdGVzGAEgAygLMhkua3Vrc2EudmFsLnYxLkVudHJ5VXBkYXRlUgd1cGRhdGVz');
@$core.Deprecated('Use getServerInfoRequestDescriptor instead')
const GetServerInfoRequest$json = const {
  '1': 'GetServerInfoRequest',
};

/// Descriptor for `GetServerInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getServerInfoRequestDescriptor = $convert.base64Decode('ChRHZXRTZXJ2ZXJJbmZvUmVxdWVzdA==');
@$core.Deprecated('Use getServerInfoResponseDescriptor instead')
const GetServerInfoResponse$json = const {
  '1': 'GetServerInfoResponse',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'version', '3': 2, '4': 1, '5': 9, '10': 'version'},
  ],
};

/// Descriptor for `GetServerInfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getServerInfoResponseDescriptor = $convert.base64Decode('ChVHZXRTZXJ2ZXJJbmZvUmVzcG9uc2USEgoEbmFtZRgBIAEoCVIEbmFtZRIYCgd2ZXJzaW9uGAIgASgJUgd2ZXJzaW9u');
