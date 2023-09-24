///
//  Generated code. Do not modify.
//  source: kuksa/val/v1/types.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class DataType extends $pb.ProtobufEnum {
  static const DataType DATA_TYPE_UNSPECIFIED = DataType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DATA_TYPE_UNSPECIFIED');
  static const DataType DATA_TYPE_STRING = DataType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DATA_TYPE_STRING');
  static const DataType DATA_TYPE_BOOLEAN = DataType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DATA_TYPE_BOOLEAN');
  static const DataType DATA_TYPE_INT8 = DataType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DATA_TYPE_INT8');
  static const DataType DATA_TYPE_INT16 = DataType._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DATA_TYPE_INT16');
  static const DataType DATA_TYPE_INT32 = DataType._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DATA_TYPE_INT32');
  static const DataType DATA_TYPE_INT64 = DataType._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DATA_TYPE_INT64');
  static const DataType DATA_TYPE_UINT8 = DataType._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DATA_TYPE_UINT8');
  static const DataType DATA_TYPE_UINT16 = DataType._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DATA_TYPE_UINT16');
  static const DataType DATA_TYPE_UINT32 = DataType._(9, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DATA_TYPE_UINT32');
  static const DataType DATA_TYPE_UINT64 = DataType._(10, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DATA_TYPE_UINT64');
  static const DataType DATA_TYPE_FLOAT = DataType._(11, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DATA_TYPE_FLOAT');
  static const DataType DATA_TYPE_DOUBLE = DataType._(12, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DATA_TYPE_DOUBLE');
  static const DataType DATA_TYPE_TIMESTAMP = DataType._(13, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DATA_TYPE_TIMESTAMP');
  static const DataType DATA_TYPE_STRING_ARRAY = DataType._(20, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DATA_TYPE_STRING_ARRAY');
  static const DataType DATA_TYPE_BOOLEAN_ARRAY = DataType._(21, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DATA_TYPE_BOOLEAN_ARRAY');
  static const DataType DATA_TYPE_INT8_ARRAY = DataType._(22, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DATA_TYPE_INT8_ARRAY');
  static const DataType DATA_TYPE_INT16_ARRAY = DataType._(23, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DATA_TYPE_INT16_ARRAY');
  static const DataType DATA_TYPE_INT32_ARRAY = DataType._(24, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DATA_TYPE_INT32_ARRAY');
  static const DataType DATA_TYPE_INT64_ARRAY = DataType._(25, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DATA_TYPE_INT64_ARRAY');
  static const DataType DATA_TYPE_UINT8_ARRAY = DataType._(26, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DATA_TYPE_UINT8_ARRAY');
  static const DataType DATA_TYPE_UINT16_ARRAY = DataType._(27, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DATA_TYPE_UINT16_ARRAY');
  static const DataType DATA_TYPE_UINT32_ARRAY = DataType._(28, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DATA_TYPE_UINT32_ARRAY');
  static const DataType DATA_TYPE_UINT64_ARRAY = DataType._(29, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DATA_TYPE_UINT64_ARRAY');
  static const DataType DATA_TYPE_FLOAT_ARRAY = DataType._(30, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DATA_TYPE_FLOAT_ARRAY');
  static const DataType DATA_TYPE_DOUBLE_ARRAY = DataType._(31, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DATA_TYPE_DOUBLE_ARRAY');
  static const DataType DATA_TYPE_TIMESTAMP_ARRAY = DataType._(32, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DATA_TYPE_TIMESTAMP_ARRAY');

  static const $core.List<DataType> values = <DataType> [
    DATA_TYPE_UNSPECIFIED,
    DATA_TYPE_STRING,
    DATA_TYPE_BOOLEAN,
    DATA_TYPE_INT8,
    DATA_TYPE_INT16,
    DATA_TYPE_INT32,
    DATA_TYPE_INT64,
    DATA_TYPE_UINT8,
    DATA_TYPE_UINT16,
    DATA_TYPE_UINT32,
    DATA_TYPE_UINT64,
    DATA_TYPE_FLOAT,
    DATA_TYPE_DOUBLE,
    DATA_TYPE_TIMESTAMP,
    DATA_TYPE_STRING_ARRAY,
    DATA_TYPE_BOOLEAN_ARRAY,
    DATA_TYPE_INT8_ARRAY,
    DATA_TYPE_INT16_ARRAY,
    DATA_TYPE_INT32_ARRAY,
    DATA_TYPE_INT64_ARRAY,
    DATA_TYPE_UINT8_ARRAY,
    DATA_TYPE_UINT16_ARRAY,
    DATA_TYPE_UINT32_ARRAY,
    DATA_TYPE_UINT64_ARRAY,
    DATA_TYPE_FLOAT_ARRAY,
    DATA_TYPE_DOUBLE_ARRAY,
    DATA_TYPE_TIMESTAMP_ARRAY,
  ];

  static final $core.Map<$core.int, DataType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DataType? valueOf($core.int value) => _byValue[value];

  const DataType._($core.int v, $core.String n) : super(v, n);
}

class EntryType extends $pb.ProtobufEnum {
  static const EntryType ENTRY_TYPE_UNSPECIFIED = EntryType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ENTRY_TYPE_UNSPECIFIED');
  static const EntryType ENTRY_TYPE_ATTRIBUTE = EntryType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ENTRY_TYPE_ATTRIBUTE');
  static const EntryType ENTRY_TYPE_SENSOR = EntryType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ENTRY_TYPE_SENSOR');
  static const EntryType ENTRY_TYPE_ACTUATOR = EntryType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ENTRY_TYPE_ACTUATOR');

  static const $core.List<EntryType> values = <EntryType> [
    ENTRY_TYPE_UNSPECIFIED,
    ENTRY_TYPE_ATTRIBUTE,
    ENTRY_TYPE_SENSOR,
    ENTRY_TYPE_ACTUATOR,
  ];

  static final $core.Map<$core.int, EntryType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static EntryType? valueOf($core.int value) => _byValue[value];

  const EntryType._($core.int v, $core.String n) : super(v, n);
}

class View extends $pb.ProtobufEnum {
  static const View VIEW_UNSPECIFIED = View._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'VIEW_UNSPECIFIED');
  static const View VIEW_CURRENT_VALUE = View._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'VIEW_CURRENT_VALUE');
  static const View VIEW_TARGET_VALUE = View._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'VIEW_TARGET_VALUE');
  static const View VIEW_METADATA = View._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'VIEW_METADATA');
  static const View VIEW_FIELDS = View._(10, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'VIEW_FIELDS');
  static const View VIEW_ALL = View._(20, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'VIEW_ALL');

  static const $core.List<View> values = <View> [
    VIEW_UNSPECIFIED,
    VIEW_CURRENT_VALUE,
    VIEW_TARGET_VALUE,
    VIEW_METADATA,
    VIEW_FIELDS,
    VIEW_ALL,
  ];

  static final $core.Map<$core.int, View> _byValue = $pb.ProtobufEnum.initByValue(values);
  static View? valueOf($core.int value) => _byValue[value];

  const View._($core.int v, $core.String n) : super(v, n);
}

class Field extends $pb.ProtobufEnum {
  static const Field FIELD_UNSPECIFIED = Field._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FIELD_UNSPECIFIED');
  static const Field FIELD_PATH = Field._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FIELD_PATH');
  static const Field FIELD_VALUE = Field._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FIELD_VALUE');
  static const Field FIELD_ACTUATOR_TARGET = Field._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FIELD_ACTUATOR_TARGET');
  static const Field FIELD_METADATA = Field._(10, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FIELD_METADATA');
  static const Field FIELD_METADATA_DATA_TYPE = Field._(11, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FIELD_METADATA_DATA_TYPE');
  static const Field FIELD_METADATA_DESCRIPTION = Field._(12, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FIELD_METADATA_DESCRIPTION');
  static const Field FIELD_METADATA_ENTRY_TYPE = Field._(13, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FIELD_METADATA_ENTRY_TYPE');
  static const Field FIELD_METADATA_COMMENT = Field._(14, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FIELD_METADATA_COMMENT');
  static const Field FIELD_METADATA_DEPRECATION = Field._(15, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FIELD_METADATA_DEPRECATION');
  static const Field FIELD_METADATA_UNIT = Field._(16, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FIELD_METADATA_UNIT');
  static const Field FIELD_METADATA_VALUE_RESTRICTION = Field._(17, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FIELD_METADATA_VALUE_RESTRICTION');
  static const Field FIELD_METADATA_ACTUATOR = Field._(20, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FIELD_METADATA_ACTUATOR');
  static const Field FIELD_METADATA_SENSOR = Field._(30, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FIELD_METADATA_SENSOR');
  static const Field FIELD_METADATA_ATTRIBUTE = Field._(40, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FIELD_METADATA_ATTRIBUTE');

  static const $core.List<Field> values = <Field> [
    FIELD_UNSPECIFIED,
    FIELD_PATH,
    FIELD_VALUE,
    FIELD_ACTUATOR_TARGET,
    FIELD_METADATA,
    FIELD_METADATA_DATA_TYPE,
    FIELD_METADATA_DESCRIPTION,
    FIELD_METADATA_ENTRY_TYPE,
    FIELD_METADATA_COMMENT,
    FIELD_METADATA_DEPRECATION,
    FIELD_METADATA_UNIT,
    FIELD_METADATA_VALUE_RESTRICTION,
    FIELD_METADATA_ACTUATOR,
    FIELD_METADATA_SENSOR,
    FIELD_METADATA_ATTRIBUTE,
  ];

  static final $core.Map<$core.int, Field> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Field? valueOf($core.int value) => _byValue[value];

  const Field._($core.int v, $core.String n) : super(v, n);
}

