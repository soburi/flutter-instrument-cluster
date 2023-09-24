///
//  Generated code. Do not modify.
//  source: kuksa/val/v1/types.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use dataTypeDescriptor instead')
const DataType$json = const {
  '1': 'DataType',
  '2': const [
    const {'1': 'DATA_TYPE_UNSPECIFIED', '2': 0},
    const {'1': 'DATA_TYPE_STRING', '2': 1},
    const {'1': 'DATA_TYPE_BOOLEAN', '2': 2},
    const {'1': 'DATA_TYPE_INT8', '2': 3},
    const {'1': 'DATA_TYPE_INT16', '2': 4},
    const {'1': 'DATA_TYPE_INT32', '2': 5},
    const {'1': 'DATA_TYPE_INT64', '2': 6},
    const {'1': 'DATA_TYPE_UINT8', '2': 7},
    const {'1': 'DATA_TYPE_UINT16', '2': 8},
    const {'1': 'DATA_TYPE_UINT32', '2': 9},
    const {'1': 'DATA_TYPE_UINT64', '2': 10},
    const {'1': 'DATA_TYPE_FLOAT', '2': 11},
    const {'1': 'DATA_TYPE_DOUBLE', '2': 12},
    const {'1': 'DATA_TYPE_TIMESTAMP', '2': 13},
    const {'1': 'DATA_TYPE_STRING_ARRAY', '2': 20},
    const {'1': 'DATA_TYPE_BOOLEAN_ARRAY', '2': 21},
    const {'1': 'DATA_TYPE_INT8_ARRAY', '2': 22},
    const {'1': 'DATA_TYPE_INT16_ARRAY', '2': 23},
    const {'1': 'DATA_TYPE_INT32_ARRAY', '2': 24},
    const {'1': 'DATA_TYPE_INT64_ARRAY', '2': 25},
    const {'1': 'DATA_TYPE_UINT8_ARRAY', '2': 26},
    const {'1': 'DATA_TYPE_UINT16_ARRAY', '2': 27},
    const {'1': 'DATA_TYPE_UINT32_ARRAY', '2': 28},
    const {'1': 'DATA_TYPE_UINT64_ARRAY', '2': 29},
    const {'1': 'DATA_TYPE_FLOAT_ARRAY', '2': 30},
    const {'1': 'DATA_TYPE_DOUBLE_ARRAY', '2': 31},
    const {'1': 'DATA_TYPE_TIMESTAMP_ARRAY', '2': 32},
  ],
};

/// Descriptor for `DataType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List dataTypeDescriptor = $convert.base64Decode('CghEYXRhVHlwZRIZChVEQVRBX1RZUEVfVU5TUEVDSUZJRUQQABIUChBEQVRBX1RZUEVfU1RSSU5HEAESFQoRREFUQV9UWVBFX0JPT0xFQU4QAhISCg5EQVRBX1RZUEVfSU5UOBADEhMKD0RBVEFfVFlQRV9JTlQxNhAEEhMKD0RBVEFfVFlQRV9JTlQzMhAFEhMKD0RBVEFfVFlQRV9JTlQ2NBAGEhMKD0RBVEFfVFlQRV9VSU5UOBAHEhQKEERBVEFfVFlQRV9VSU5UMTYQCBIUChBEQVRBX1RZUEVfVUlOVDMyEAkSFAoQREFUQV9UWVBFX1VJTlQ2NBAKEhMKD0RBVEFfVFlQRV9GTE9BVBALEhQKEERBVEFfVFlQRV9ET1VCTEUQDBIXChNEQVRBX1RZUEVfVElNRVNUQU1QEA0SGgoWREFUQV9UWVBFX1NUUklOR19BUlJBWRAUEhsKF0RBVEFfVFlQRV9CT09MRUFOX0FSUkFZEBUSGAoUREFUQV9UWVBFX0lOVDhfQVJSQVkQFhIZChVEQVRBX1RZUEVfSU5UMTZfQVJSQVkQFxIZChVEQVRBX1RZUEVfSU5UMzJfQVJSQVkQGBIZChVEQVRBX1RZUEVfSU5UNjRfQVJSQVkQGRIZChVEQVRBX1RZUEVfVUlOVDhfQVJSQVkQGhIaChZEQVRBX1RZUEVfVUlOVDE2X0FSUkFZEBsSGgoWREFUQV9UWVBFX1VJTlQzMl9BUlJBWRAcEhoKFkRBVEFfVFlQRV9VSU5UNjRfQVJSQVkQHRIZChVEQVRBX1RZUEVfRkxPQVRfQVJSQVkQHhIaChZEQVRBX1RZUEVfRE9VQkxFX0FSUkFZEB8SHQoZREFUQV9UWVBFX1RJTUVTVEFNUF9BUlJBWRAg');
@$core.Deprecated('Use entryTypeDescriptor instead')
const EntryType$json = const {
  '1': 'EntryType',
  '2': const [
    const {'1': 'ENTRY_TYPE_UNSPECIFIED', '2': 0},
    const {'1': 'ENTRY_TYPE_ATTRIBUTE', '2': 1},
    const {'1': 'ENTRY_TYPE_SENSOR', '2': 2},
    const {'1': 'ENTRY_TYPE_ACTUATOR', '2': 3},
  ],
};

/// Descriptor for `EntryType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List entryTypeDescriptor = $convert.base64Decode('CglFbnRyeVR5cGUSGgoWRU5UUllfVFlQRV9VTlNQRUNJRklFRBAAEhgKFEVOVFJZX1RZUEVfQVRUUklCVVRFEAESFQoRRU5UUllfVFlQRV9TRU5TT1IQAhIXChNFTlRSWV9UWVBFX0FDVFVBVE9SEAM=');
@$core.Deprecated('Use viewDescriptor instead')
const View$json = const {
  '1': 'View',
  '2': const [
    const {'1': 'VIEW_UNSPECIFIED', '2': 0},
    const {'1': 'VIEW_CURRENT_VALUE', '2': 1},
    const {'1': 'VIEW_TARGET_VALUE', '2': 2},
    const {'1': 'VIEW_METADATA', '2': 3},
    const {'1': 'VIEW_FIELDS', '2': 10},
    const {'1': 'VIEW_ALL', '2': 20},
  ],
};

/// Descriptor for `View`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List viewDescriptor = $convert.base64Decode('CgRWaWV3EhQKEFZJRVdfVU5TUEVDSUZJRUQQABIWChJWSUVXX0NVUlJFTlRfVkFMVUUQARIVChFWSUVXX1RBUkdFVF9WQUxVRRACEhEKDVZJRVdfTUVUQURBVEEQAxIPCgtWSUVXX0ZJRUxEUxAKEgwKCFZJRVdfQUxMEBQ=');
@$core.Deprecated('Use fieldDescriptor instead')
const Field$json = const {
  '1': 'Field',
  '2': const [
    const {'1': 'FIELD_UNSPECIFIED', '2': 0},
    const {'1': 'FIELD_PATH', '2': 1},
    const {'1': 'FIELD_VALUE', '2': 2},
    const {'1': 'FIELD_ACTUATOR_TARGET', '2': 3},
    const {'1': 'FIELD_METADATA', '2': 10},
    const {'1': 'FIELD_METADATA_DATA_TYPE', '2': 11},
    const {'1': 'FIELD_METADATA_DESCRIPTION', '2': 12},
    const {'1': 'FIELD_METADATA_ENTRY_TYPE', '2': 13},
    const {'1': 'FIELD_METADATA_COMMENT', '2': 14},
    const {'1': 'FIELD_METADATA_DEPRECATION', '2': 15},
    const {'1': 'FIELD_METADATA_UNIT', '2': 16},
    const {'1': 'FIELD_METADATA_VALUE_RESTRICTION', '2': 17},
    const {'1': 'FIELD_METADATA_ACTUATOR', '2': 20},
    const {'1': 'FIELD_METADATA_SENSOR', '2': 30},
    const {'1': 'FIELD_METADATA_ATTRIBUTE', '2': 40},
  ],
};

/// Descriptor for `Field`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List fieldDescriptor = $convert.base64Decode('CgVGaWVsZBIVChFGSUVMRF9VTlNQRUNJRklFRBAAEg4KCkZJRUxEX1BBVEgQARIPCgtGSUVMRF9WQUxVRRACEhkKFUZJRUxEX0FDVFVBVE9SX1RBUkdFVBADEhIKDkZJRUxEX01FVEFEQVRBEAoSHAoYRklFTERfTUVUQURBVEFfREFUQV9UWVBFEAsSHgoaRklFTERfTUVUQURBVEFfREVTQ1JJUFRJT04QDBIdChlGSUVMRF9NRVRBREFUQV9FTlRSWV9UWVBFEA0SGgoWRklFTERfTUVUQURBVEFfQ09NTUVOVBAOEh4KGkZJRUxEX01FVEFEQVRBX0RFUFJFQ0FUSU9OEA8SFwoTRklFTERfTUVUQURBVEFfVU5JVBAQEiQKIEZJRUxEX01FVEFEQVRBX1ZBTFVFX1JFU1RSSUNUSU9OEBESGwoXRklFTERfTUVUQURBVEFfQUNUVUFUT1IQFBIZChVGSUVMRF9NRVRBREFUQV9TRU5TT1IQHhIcChhGSUVMRF9NRVRBREFUQV9BVFRSSUJVVEUQKA==');
@$core.Deprecated('Use dataEntryDescriptor instead')
const DataEntry$json = const {
  '1': 'DataEntry',
  '2': const [
    const {'1': 'path', '3': 1, '4': 1, '5': 9, '10': 'path'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.kuksa.val.v1.Datapoint', '10': 'value'},
    const {'1': 'actuator_target', '3': 3, '4': 1, '5': 11, '6': '.kuksa.val.v1.Datapoint', '10': 'actuatorTarget'},
    const {'1': 'metadata', '3': 10, '4': 1, '5': 11, '6': '.kuksa.val.v1.Metadata', '10': 'metadata'},
  ],
};

/// Descriptor for `DataEntry`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dataEntryDescriptor = $convert.base64Decode('CglEYXRhRW50cnkSEgoEcGF0aBgBIAEoCVIEcGF0aBItCgV2YWx1ZRgCIAEoCzIXLmt1a3NhLnZhbC52MS5EYXRhcG9pbnRSBXZhbHVlEkAKD2FjdHVhdG9yX3RhcmdldBgDIAEoCzIXLmt1a3NhLnZhbC52MS5EYXRhcG9pbnRSDmFjdHVhdG9yVGFyZ2V0EjIKCG1ldGFkYXRhGAogASgLMhYua3Vrc2EudmFsLnYxLk1ldGFkYXRhUghtZXRhZGF0YQ==');
@$core.Deprecated('Use datapointDescriptor instead')
const Datapoint$json = const {
  '1': 'Datapoint',
  '2': const [
    const {'1': 'timestamp', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'timestamp'},
    const {'1': 'string', '3': 11, '4': 1, '5': 9, '9': 0, '10': 'string'},
    const {'1': 'bool', '3': 12, '4': 1, '5': 8, '9': 0, '10': 'bool'},
    const {'1': 'int32', '3': 13, '4': 1, '5': 17, '9': 0, '10': 'int32'},
    const {'1': 'int64', '3': 14, '4': 1, '5': 18, '9': 0, '10': 'int64'},
    const {'1': 'uint32', '3': 15, '4': 1, '5': 13, '9': 0, '10': 'uint32'},
    const {'1': 'uint64', '3': 16, '4': 1, '5': 4, '9': 0, '10': 'uint64'},
    const {'1': 'float', '3': 17, '4': 1, '5': 2, '9': 0, '10': 'float'},
    const {'1': 'double', '3': 18, '4': 1, '5': 1, '9': 0, '10': 'double'},
    const {'1': 'string_array', '3': 21, '4': 1, '5': 11, '6': '.kuksa.val.v1.StringArray', '9': 0, '10': 'stringArray'},
    const {'1': 'bool_array', '3': 22, '4': 1, '5': 11, '6': '.kuksa.val.v1.BoolArray', '9': 0, '10': 'boolArray'},
    const {'1': 'int32_array', '3': 23, '4': 1, '5': 11, '6': '.kuksa.val.v1.Int32Array', '9': 0, '10': 'int32Array'},
    const {'1': 'int64_array', '3': 24, '4': 1, '5': 11, '6': '.kuksa.val.v1.Int64Array', '9': 0, '10': 'int64Array'},
    const {'1': 'uint32_array', '3': 25, '4': 1, '5': 11, '6': '.kuksa.val.v1.Uint32Array', '9': 0, '10': 'uint32Array'},
    const {'1': 'uint64_array', '3': 26, '4': 1, '5': 11, '6': '.kuksa.val.v1.Uint64Array', '9': 0, '10': 'uint64Array'},
    const {'1': 'float_array', '3': 27, '4': 1, '5': 11, '6': '.kuksa.val.v1.FloatArray', '9': 0, '10': 'floatArray'},
    const {'1': 'double_array', '3': 28, '4': 1, '5': 11, '6': '.kuksa.val.v1.DoubleArray', '9': 0, '10': 'doubleArray'},
  ],
  '8': const [
    const {'1': 'value'},
  ],
};

/// Descriptor for `Datapoint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List datapointDescriptor = $convert.base64Decode('CglEYXRhcG9pbnQSOAoJdGltZXN0YW1wGAEgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIJdGltZXN0YW1wEhgKBnN0cmluZxgLIAEoCUgAUgZzdHJpbmcSFAoEYm9vbBgMIAEoCEgAUgRib29sEhYKBWludDMyGA0gASgRSABSBWludDMyEhYKBWludDY0GA4gASgSSABSBWludDY0EhgKBnVpbnQzMhgPIAEoDUgAUgZ1aW50MzISGAoGdWludDY0GBAgASgESABSBnVpbnQ2NBIWCgVmbG9hdBgRIAEoAkgAUgVmbG9hdBIYCgZkb3VibGUYEiABKAFIAFIGZG91YmxlEj4KDHN0cmluZ19hcnJheRgVIAEoCzIZLmt1a3NhLnZhbC52MS5TdHJpbmdBcnJheUgAUgtzdHJpbmdBcnJheRI4Cgpib29sX2FycmF5GBYgASgLMhcua3Vrc2EudmFsLnYxLkJvb2xBcnJheUgAUglib29sQXJyYXkSOwoLaW50MzJfYXJyYXkYFyABKAsyGC5rdWtzYS52YWwudjEuSW50MzJBcnJheUgAUgppbnQzMkFycmF5EjsKC2ludDY0X2FycmF5GBggASgLMhgua3Vrc2EudmFsLnYxLkludDY0QXJyYXlIAFIKaW50NjRBcnJheRI+Cgx1aW50MzJfYXJyYXkYGSABKAsyGS5rdWtzYS52YWwudjEuVWludDMyQXJyYXlIAFILdWludDMyQXJyYXkSPgoMdWludDY0X2FycmF5GBogASgLMhkua3Vrc2EudmFsLnYxLlVpbnQ2NEFycmF5SABSC3VpbnQ2NEFycmF5EjsKC2Zsb2F0X2FycmF5GBsgASgLMhgua3Vrc2EudmFsLnYxLkZsb2F0QXJyYXlIAFIKZmxvYXRBcnJheRI+Cgxkb3VibGVfYXJyYXkYHCABKAsyGS5rdWtzYS52YWwudjEuRG91YmxlQXJyYXlIAFILZG91YmxlQXJyYXlCBwoFdmFsdWU=');
@$core.Deprecated('Use metadataDescriptor instead')
const Metadata$json = const {
  '1': 'Metadata',
  '2': const [
    const {'1': 'data_type', '3': 11, '4': 1, '5': 14, '6': '.kuksa.val.v1.DataType', '10': 'dataType'},
    const {'1': 'entry_type', '3': 12, '4': 1, '5': 14, '6': '.kuksa.val.v1.EntryType', '10': 'entryType'},
    const {'1': 'description', '3': 13, '4': 1, '5': 9, '9': 1, '10': 'description', '17': true},
    const {'1': 'comment', '3': 14, '4': 1, '5': 9, '9': 2, '10': 'comment', '17': true},
    const {'1': 'deprecation', '3': 15, '4': 1, '5': 9, '9': 3, '10': 'deprecation', '17': true},
    const {'1': 'unit', '3': 16, '4': 1, '5': 9, '9': 4, '10': 'unit', '17': true},
    const {'1': 'value_restriction', '3': 17, '4': 1, '5': 11, '6': '.kuksa.val.v1.ValueRestriction', '10': 'valueRestriction'},
    const {'1': 'actuator', '3': 20, '4': 1, '5': 11, '6': '.kuksa.val.v1.Actuator', '9': 0, '10': 'actuator'},
    const {'1': 'sensor', '3': 30, '4': 1, '5': 11, '6': '.kuksa.val.v1.Sensor', '9': 0, '10': 'sensor'},
    const {'1': 'attribute', '3': 40, '4': 1, '5': 11, '6': '.kuksa.val.v1.Attribute', '9': 0, '10': 'attribute'},
  ],
  '8': const [
    const {'1': 'entry_specific'},
    const {'1': '_description'},
    const {'1': '_comment'},
    const {'1': '_deprecation'},
    const {'1': '_unit'},
  ],
};

/// Descriptor for `Metadata`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List metadataDescriptor = $convert.base64Decode('CghNZXRhZGF0YRIzCglkYXRhX3R5cGUYCyABKA4yFi5rdWtzYS52YWwudjEuRGF0YVR5cGVSCGRhdGFUeXBlEjYKCmVudHJ5X3R5cGUYDCABKA4yFy5rdWtzYS52YWwudjEuRW50cnlUeXBlUgllbnRyeVR5cGUSJQoLZGVzY3JpcHRpb24YDSABKAlIAVILZGVzY3JpcHRpb26IAQESHQoHY29tbWVudBgOIAEoCUgCUgdjb21tZW50iAEBEiUKC2RlcHJlY2F0aW9uGA8gASgJSANSC2RlcHJlY2F0aW9uiAEBEhcKBHVuaXQYECABKAlIBFIEdW5pdIgBARJLChF2YWx1ZV9yZXN0cmljdGlvbhgRIAEoCzIeLmt1a3NhLnZhbC52MS5WYWx1ZVJlc3RyaWN0aW9uUhB2YWx1ZVJlc3RyaWN0aW9uEjQKCGFjdHVhdG9yGBQgASgLMhYua3Vrc2EudmFsLnYxLkFjdHVhdG9ySABSCGFjdHVhdG9yEi4KBnNlbnNvchgeIAEoCzIULmt1a3NhLnZhbC52MS5TZW5zb3JIAFIGc2Vuc29yEjcKCWF0dHJpYnV0ZRgoIAEoCzIXLmt1a3NhLnZhbC52MS5BdHRyaWJ1dGVIAFIJYXR0cmlidXRlQhAKDmVudHJ5X3NwZWNpZmljQg4KDF9kZXNjcmlwdGlvbkIKCghfY29tbWVudEIOCgxfZGVwcmVjYXRpb25CBwoFX3VuaXQ=');
@$core.Deprecated('Use actuatorDescriptor instead')
const Actuator$json = const {
  '1': 'Actuator',
};

/// Descriptor for `Actuator`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List actuatorDescriptor = $convert.base64Decode('CghBY3R1YXRvcg==');
@$core.Deprecated('Use sensorDescriptor instead')
const Sensor$json = const {
  '1': 'Sensor',
};

/// Descriptor for `Sensor`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sensorDescriptor = $convert.base64Decode('CgZTZW5zb3I=');
@$core.Deprecated('Use attributeDescriptor instead')
const Attribute$json = const {
  '1': 'Attribute',
};

/// Descriptor for `Attribute`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List attributeDescriptor = $convert.base64Decode('CglBdHRyaWJ1dGU=');
@$core.Deprecated('Use valueRestrictionDescriptor instead')
const ValueRestriction$json = const {
  '1': 'ValueRestriction',
  '2': const [
    const {'1': 'string', '3': 21, '4': 1, '5': 11, '6': '.kuksa.val.v1.ValueRestrictionString', '9': 0, '10': 'string'},
    const {'1': 'signed', '3': 22, '4': 1, '5': 11, '6': '.kuksa.val.v1.ValueRestrictionInt', '9': 0, '10': 'signed'},
    const {'1': 'unsigned', '3': 23, '4': 1, '5': 11, '6': '.kuksa.val.v1.ValueRestrictionUint', '9': 0, '10': 'unsigned'},
    const {'1': 'floating_point', '3': 24, '4': 1, '5': 11, '6': '.kuksa.val.v1.ValueRestrictionFloat', '9': 0, '10': 'floatingPoint'},
  ],
  '8': const [
    const {'1': 'type'},
  ],
};

/// Descriptor for `ValueRestriction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List valueRestrictionDescriptor = $convert.base64Decode('ChBWYWx1ZVJlc3RyaWN0aW9uEj4KBnN0cmluZxgVIAEoCzIkLmt1a3NhLnZhbC52MS5WYWx1ZVJlc3RyaWN0aW9uU3RyaW5nSABSBnN0cmluZxI7CgZzaWduZWQYFiABKAsyIS5rdWtzYS52YWwudjEuVmFsdWVSZXN0cmljdGlvbkludEgAUgZzaWduZWQSQAoIdW5zaWduZWQYFyABKAsyIi5rdWtzYS52YWwudjEuVmFsdWVSZXN0cmljdGlvblVpbnRIAFIIdW5zaWduZWQSTAoOZmxvYXRpbmdfcG9pbnQYGCABKAsyIy5rdWtzYS52YWwudjEuVmFsdWVSZXN0cmljdGlvbkZsb2F0SABSDWZsb2F0aW5nUG9pbnRCBgoEdHlwZQ==');
@$core.Deprecated('Use valueRestrictionIntDescriptor instead')
const ValueRestrictionInt$json = const {
  '1': 'ValueRestrictionInt',
  '2': const [
    const {'1': 'min', '3': 1, '4': 1, '5': 18, '9': 0, '10': 'min', '17': true},
    const {'1': 'max', '3': 2, '4': 1, '5': 18, '9': 1, '10': 'max', '17': true},
    const {'1': 'allowed_values', '3': 3, '4': 3, '5': 18, '10': 'allowedValues'},
  ],
  '8': const [
    const {'1': '_min'},
    const {'1': '_max'},
  ],
};

/// Descriptor for `ValueRestrictionInt`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List valueRestrictionIntDescriptor = $convert.base64Decode('ChNWYWx1ZVJlc3RyaWN0aW9uSW50EhUKA21pbhgBIAEoEkgAUgNtaW6IAQESFQoDbWF4GAIgASgSSAFSA21heIgBARIlCg5hbGxvd2VkX3ZhbHVlcxgDIAMoElINYWxsb3dlZFZhbHVlc0IGCgRfbWluQgYKBF9tYXg=');
@$core.Deprecated('Use valueRestrictionUintDescriptor instead')
const ValueRestrictionUint$json = const {
  '1': 'ValueRestrictionUint',
  '2': const [
    const {'1': 'min', '3': 1, '4': 1, '5': 4, '9': 0, '10': 'min', '17': true},
    const {'1': 'max', '3': 2, '4': 1, '5': 4, '9': 1, '10': 'max', '17': true},
    const {'1': 'allowed_values', '3': 3, '4': 3, '5': 4, '10': 'allowedValues'},
  ],
  '8': const [
    const {'1': '_min'},
    const {'1': '_max'},
  ],
};

/// Descriptor for `ValueRestrictionUint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List valueRestrictionUintDescriptor = $convert.base64Decode('ChRWYWx1ZVJlc3RyaWN0aW9uVWludBIVCgNtaW4YASABKARIAFIDbWluiAEBEhUKA21heBgCIAEoBEgBUgNtYXiIAQESJQoOYWxsb3dlZF92YWx1ZXMYAyADKARSDWFsbG93ZWRWYWx1ZXNCBgoEX21pbkIGCgRfbWF4');
@$core.Deprecated('Use valueRestrictionFloatDescriptor instead')
const ValueRestrictionFloat$json = const {
  '1': 'ValueRestrictionFloat',
  '2': const [
    const {'1': 'min', '3': 1, '4': 1, '5': 1, '9': 0, '10': 'min', '17': true},
    const {'1': 'max', '3': 2, '4': 1, '5': 1, '9': 1, '10': 'max', '17': true},
    const {'1': 'allowed_values', '3': 3, '4': 3, '5': 1, '10': 'allowedValues'},
  ],
  '8': const [
    const {'1': '_min'},
    const {'1': '_max'},
  ],
};

/// Descriptor for `ValueRestrictionFloat`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List valueRestrictionFloatDescriptor = $convert.base64Decode('ChVWYWx1ZVJlc3RyaWN0aW9uRmxvYXQSFQoDbWluGAEgASgBSABSA21pbogBARIVCgNtYXgYAiABKAFIAVIDbWF4iAEBEiUKDmFsbG93ZWRfdmFsdWVzGAMgAygBUg1hbGxvd2VkVmFsdWVzQgYKBF9taW5CBgoEX21heA==');
@$core.Deprecated('Use valueRestrictionStringDescriptor instead')
const ValueRestrictionString$json = const {
  '1': 'ValueRestrictionString',
  '2': const [
    const {'1': 'allowed_values', '3': 3, '4': 3, '5': 9, '10': 'allowedValues'},
  ],
};

/// Descriptor for `ValueRestrictionString`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List valueRestrictionStringDescriptor = $convert.base64Decode('ChZWYWx1ZVJlc3RyaWN0aW9uU3RyaW5nEiUKDmFsbG93ZWRfdmFsdWVzGAMgAygJUg1hbGxvd2VkVmFsdWVz');
@$core.Deprecated('Use errorDescriptor instead')
const Error$json = const {
  '1': 'Error',
  '2': const [
    const {'1': 'code', '3': 1, '4': 1, '5': 13, '10': 'code'},
    const {'1': 'reason', '3': 2, '4': 1, '5': 9, '10': 'reason'},
    const {'1': 'message', '3': 3, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `Error`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List errorDescriptor = $convert.base64Decode('CgVFcnJvchISCgRjb2RlGAEgASgNUgRjb2RlEhYKBnJlYXNvbhgCIAEoCVIGcmVhc29uEhgKB21lc3NhZ2UYAyABKAlSB21lc3NhZ2U=');
@$core.Deprecated('Use dataEntryErrorDescriptor instead')
const DataEntryError$json = const {
  '1': 'DataEntryError',
  '2': const [
    const {'1': 'path', '3': 1, '4': 1, '5': 9, '10': 'path'},
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.kuksa.val.v1.Error', '10': 'error'},
  ],
};

/// Descriptor for `DataEntryError`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dataEntryErrorDescriptor = $convert.base64Decode('Cg5EYXRhRW50cnlFcnJvchISCgRwYXRoGAEgASgJUgRwYXRoEikKBWVycm9yGAIgASgLMhMua3Vrc2EudmFsLnYxLkVycm9yUgVlcnJvcg==');
@$core.Deprecated('Use stringArrayDescriptor instead')
const StringArray$json = const {
  '1': 'StringArray',
  '2': const [
    const {'1': 'values', '3': 1, '4': 3, '5': 9, '10': 'values'},
  ],
};

/// Descriptor for `StringArray`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stringArrayDescriptor = $convert.base64Decode('CgtTdHJpbmdBcnJheRIWCgZ2YWx1ZXMYASADKAlSBnZhbHVlcw==');
@$core.Deprecated('Use boolArrayDescriptor instead')
const BoolArray$json = const {
  '1': 'BoolArray',
  '2': const [
    const {'1': 'values', '3': 1, '4': 3, '5': 8, '10': 'values'},
  ],
};

/// Descriptor for `BoolArray`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List boolArrayDescriptor = $convert.base64Decode('CglCb29sQXJyYXkSFgoGdmFsdWVzGAEgAygIUgZ2YWx1ZXM=');
@$core.Deprecated('Use int32ArrayDescriptor instead')
const Int32Array$json = const {
  '1': 'Int32Array',
  '2': const [
    const {'1': 'values', '3': 1, '4': 3, '5': 17, '10': 'values'},
  ],
};

/// Descriptor for `Int32Array`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List int32ArrayDescriptor = $convert.base64Decode('CgpJbnQzMkFycmF5EhYKBnZhbHVlcxgBIAMoEVIGdmFsdWVz');
@$core.Deprecated('Use int64ArrayDescriptor instead')
const Int64Array$json = const {
  '1': 'Int64Array',
  '2': const [
    const {'1': 'values', '3': 1, '4': 3, '5': 18, '10': 'values'},
  ],
};

/// Descriptor for `Int64Array`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List int64ArrayDescriptor = $convert.base64Decode('CgpJbnQ2NEFycmF5EhYKBnZhbHVlcxgBIAMoElIGdmFsdWVz');
@$core.Deprecated('Use uint32ArrayDescriptor instead')
const Uint32Array$json = const {
  '1': 'Uint32Array',
  '2': const [
    const {'1': 'values', '3': 1, '4': 3, '5': 13, '10': 'values'},
  ],
};

/// Descriptor for `Uint32Array`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uint32ArrayDescriptor = $convert.base64Decode('CgtVaW50MzJBcnJheRIWCgZ2YWx1ZXMYASADKA1SBnZhbHVlcw==');
@$core.Deprecated('Use uint64ArrayDescriptor instead')
const Uint64Array$json = const {
  '1': 'Uint64Array',
  '2': const [
    const {'1': 'values', '3': 1, '4': 3, '5': 4, '10': 'values'},
  ],
};

/// Descriptor for `Uint64Array`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uint64ArrayDescriptor = $convert.base64Decode('CgtVaW50NjRBcnJheRIWCgZ2YWx1ZXMYASADKARSBnZhbHVlcw==');
@$core.Deprecated('Use floatArrayDescriptor instead')
const FloatArray$json = const {
  '1': 'FloatArray',
  '2': const [
    const {'1': 'values', '3': 1, '4': 3, '5': 2, '10': 'values'},
  ],
};

/// Descriptor for `FloatArray`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List floatArrayDescriptor = $convert.base64Decode('CgpGbG9hdEFycmF5EhYKBnZhbHVlcxgBIAMoAlIGdmFsdWVz');
@$core.Deprecated('Use doubleArrayDescriptor instead')
const DoubleArray$json = const {
  '1': 'DoubleArray',
  '2': const [
    const {'1': 'values', '3': 1, '4': 3, '5': 1, '10': 'values'},
  ],
};

/// Descriptor for `DoubleArray`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List doubleArrayDescriptor = $convert.base64Decode('CgtEb3VibGVBcnJheRIWCgZ2YWx1ZXMYASADKAFSBnZhbHVlcw==');
