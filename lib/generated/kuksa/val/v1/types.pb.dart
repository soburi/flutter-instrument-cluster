///
//  Generated code. Do not modify.
//  source: kuksa/val/v1/types.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../../google/protobuf/timestamp.pb.dart' as $0;

import 'types.pbenum.dart';

export 'types.pbenum.dart';

class DataEntry extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DataEntry', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'kuksa.val.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'path')
    ..aOM<Datapoint>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value', subBuilder: Datapoint.create)
    ..aOM<Datapoint>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'actuatorTarget', subBuilder: Datapoint.create)
    ..aOM<Metadata>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'metadata', subBuilder: Metadata.create)
    ..hasRequiredFields = false
  ;

  DataEntry._() : super();
  factory DataEntry({
    $core.String? path,
    Datapoint? value,
    Datapoint? actuatorTarget,
    Metadata? metadata,
  }) {
    final _result = create();
    if (path != null) {
      _result.path = path;
    }
    if (value != null) {
      _result.value = value;
    }
    if (actuatorTarget != null) {
      _result.actuatorTarget = actuatorTarget;
    }
    if (metadata != null) {
      _result.metadata = metadata;
    }
    return _result;
  }
  factory DataEntry.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DataEntry.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DataEntry clone() => DataEntry()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DataEntry copyWith(void Function(DataEntry) updates) => super.copyWith((message) => updates(message as DataEntry)) as DataEntry; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DataEntry create() => DataEntry._();
  DataEntry createEmptyInstance() => create();
  static $pb.PbList<DataEntry> createRepeated() => $pb.PbList<DataEntry>();
  @$core.pragma('dart2js:noInline')
  static DataEntry getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DataEntry>(create);
  static DataEntry? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get path => $_getSZ(0);
  @$pb.TagNumber(1)
  set path($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPath() => $_has(0);
  @$pb.TagNumber(1)
  void clearPath() => clearField(1);

  @$pb.TagNumber(2)
  Datapoint get value => $_getN(1);
  @$pb.TagNumber(2)
  set value(Datapoint v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);
  @$pb.TagNumber(2)
  Datapoint ensureValue() => $_ensure(1);

  @$pb.TagNumber(3)
  Datapoint get actuatorTarget => $_getN(2);
  @$pb.TagNumber(3)
  set actuatorTarget(Datapoint v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasActuatorTarget() => $_has(2);
  @$pb.TagNumber(3)
  void clearActuatorTarget() => clearField(3);
  @$pb.TagNumber(3)
  Datapoint ensureActuatorTarget() => $_ensure(2);

  @$pb.TagNumber(10)
  Metadata get metadata => $_getN(3);
  @$pb.TagNumber(10)
  set metadata(Metadata v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasMetadata() => $_has(3);
  @$pb.TagNumber(10)
  void clearMetadata() => clearField(10);
  @$pb.TagNumber(10)
  Metadata ensureMetadata() => $_ensure(3);
}

enum Datapoint_Value {
  string, 
  bool_12, 
  int32, 
  int64, 
  uint32, 
  uint64, 
  float, 
  double_18, 
  stringArray, 
  boolArray, 
  int32Array, 
  int64Array, 
  uint32Array, 
  uint64Array, 
  floatArray, 
  doubleArray, 
  notSet
}

class Datapoint extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Datapoint_Value> _Datapoint_ValueByTag = {
    11 : Datapoint_Value.string,
    12 : Datapoint_Value.bool_12,
    13 : Datapoint_Value.int32,
    14 : Datapoint_Value.int64,
    15 : Datapoint_Value.uint32,
    16 : Datapoint_Value.uint64,
    17 : Datapoint_Value.float,
    18 : Datapoint_Value.double_18,
    21 : Datapoint_Value.stringArray,
    22 : Datapoint_Value.boolArray,
    23 : Datapoint_Value.int32Array,
    24 : Datapoint_Value.int64Array,
    25 : Datapoint_Value.uint32Array,
    26 : Datapoint_Value.uint64Array,
    27 : Datapoint_Value.floatArray,
    28 : Datapoint_Value.doubleArray,
    0 : Datapoint_Value.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Datapoint', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'kuksa.val.v1'), createEmptyInstance: create)
    ..oo(0, [11, 12, 13, 14, 15, 16, 17, 18, 21, 22, 23, 24, 25, 26, 27, 28])
    ..aOM<$0.Timestamp>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timestamp', subBuilder: $0.Timestamp.create)
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'string')
    ..aOB(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bool')
    ..a<$core.int>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'int32', $pb.PbFieldType.OS3)
    ..a<$fixnum.Int64>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'int64', $pb.PbFieldType.OS6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uint32', $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uint64', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.double>(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'float', $pb.PbFieldType.OF)
    ..a<$core.double>(18, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'double', $pb.PbFieldType.OD)
    ..aOM<StringArray>(21, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stringArray', subBuilder: StringArray.create)
    ..aOM<BoolArray>(22, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'boolArray', subBuilder: BoolArray.create)
    ..aOM<Int32Array>(23, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'int32Array', subBuilder: Int32Array.create)
    ..aOM<Int64Array>(24, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'int64Array', subBuilder: Int64Array.create)
    ..aOM<Uint32Array>(25, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uint32Array', subBuilder: Uint32Array.create)
    ..aOM<Uint64Array>(26, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uint64Array', subBuilder: Uint64Array.create)
    ..aOM<FloatArray>(27, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'floatArray', subBuilder: FloatArray.create)
    ..aOM<DoubleArray>(28, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'doubleArray', subBuilder: DoubleArray.create)
    ..hasRequiredFields = false
  ;

  Datapoint._() : super();
  factory Datapoint({
    $0.Timestamp? timestamp,
    $core.String? string,
    $core.bool? bool_12,
    $core.int? int32,
    $fixnum.Int64? int64,
    $core.int? uint32,
    $fixnum.Int64? uint64,
    $core.double? float,
    $core.double? double_18,
    StringArray? stringArray,
    BoolArray? boolArray,
    Int32Array? int32Array,
    Int64Array? int64Array,
    Uint32Array? uint32Array,
    Uint64Array? uint64Array,
    FloatArray? floatArray,
    DoubleArray? doubleArray,
  }) {
    final _result = create();
    if (timestamp != null) {
      _result.timestamp = timestamp;
    }
    if (string != null) {
      _result.string = string;
    }
    if (bool_12 != null) {
      _result.bool_12 = bool_12;
    }
    if (int32 != null) {
      _result.int32 = int32;
    }
    if (int64 != null) {
      _result.int64 = int64;
    }
    if (uint32 != null) {
      _result.uint32 = uint32;
    }
    if (uint64 != null) {
      _result.uint64 = uint64;
    }
    if (float != null) {
      _result.float = float;
    }
    if (double_18 != null) {
      _result.double_18 = double_18;
    }
    if (stringArray != null) {
      _result.stringArray = stringArray;
    }
    if (boolArray != null) {
      _result.boolArray = boolArray;
    }
    if (int32Array != null) {
      _result.int32Array = int32Array;
    }
    if (int64Array != null) {
      _result.int64Array = int64Array;
    }
    if (uint32Array != null) {
      _result.uint32Array = uint32Array;
    }
    if (uint64Array != null) {
      _result.uint64Array = uint64Array;
    }
    if (floatArray != null) {
      _result.floatArray = floatArray;
    }
    if (doubleArray != null) {
      _result.doubleArray = doubleArray;
    }
    return _result;
  }
  factory Datapoint.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Datapoint.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Datapoint clone() => Datapoint()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Datapoint copyWith(void Function(Datapoint) updates) => super.copyWith((message) => updates(message as Datapoint)) as Datapoint; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Datapoint create() => Datapoint._();
  Datapoint createEmptyInstance() => create();
  static $pb.PbList<Datapoint> createRepeated() => $pb.PbList<Datapoint>();
  @$core.pragma('dart2js:noInline')
  static Datapoint getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Datapoint>(create);
  static Datapoint? _defaultInstance;

  Datapoint_Value whichValue() => _Datapoint_ValueByTag[$_whichOneof(0)]!;
  void clearValue() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $0.Timestamp get timestamp => $_getN(0);
  @$pb.TagNumber(1)
  set timestamp($0.Timestamp v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTimestamp() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestamp() => clearField(1);
  @$pb.TagNumber(1)
  $0.Timestamp ensureTimestamp() => $_ensure(0);

  @$pb.TagNumber(11)
  $core.String get string => $_getSZ(1);
  @$pb.TagNumber(11)
  set string($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(11)
  $core.bool hasString() => $_has(1);
  @$pb.TagNumber(11)
  void clearString() => clearField(11);

  @$pb.TagNumber(12)
  $core.bool get bool_12 => $_getBF(2);
  @$pb.TagNumber(12)
  set bool_12($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(12)
  $core.bool hasBool_12() => $_has(2);
  @$pb.TagNumber(12)
  void clearBool_12() => clearField(12);

  @$pb.TagNumber(13)
  $core.int get int32 => $_getIZ(3);
  @$pb.TagNumber(13)
  set int32($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(13)
  $core.bool hasInt32() => $_has(3);
  @$pb.TagNumber(13)
  void clearInt32() => clearField(13);

  @$pb.TagNumber(14)
  $fixnum.Int64 get int64 => $_getI64(4);
  @$pb.TagNumber(14)
  set int64($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(14)
  $core.bool hasInt64() => $_has(4);
  @$pb.TagNumber(14)
  void clearInt64() => clearField(14);

  @$pb.TagNumber(15)
  $core.int get uint32 => $_getIZ(5);
  @$pb.TagNumber(15)
  set uint32($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(15)
  $core.bool hasUint32() => $_has(5);
  @$pb.TagNumber(15)
  void clearUint32() => clearField(15);

  @$pb.TagNumber(16)
  $fixnum.Int64 get uint64 => $_getI64(6);
  @$pb.TagNumber(16)
  set uint64($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(16)
  $core.bool hasUint64() => $_has(6);
  @$pb.TagNumber(16)
  void clearUint64() => clearField(16);

  @$pb.TagNumber(17)
  $core.double get float => $_getN(7);
  @$pb.TagNumber(17)
  set float($core.double v) { $_setFloat(7, v); }
  @$pb.TagNumber(17)
  $core.bool hasFloat() => $_has(7);
  @$pb.TagNumber(17)
  void clearFloat() => clearField(17);

  @$pb.TagNumber(18)
  $core.double get double_18 => $_getN(8);
  @$pb.TagNumber(18)
  set double_18($core.double v) { $_setDouble(8, v); }
  @$pb.TagNumber(18)
  $core.bool hasDouble_18() => $_has(8);
  @$pb.TagNumber(18)
  void clearDouble_18() => clearField(18);

  @$pb.TagNumber(21)
  StringArray get stringArray => $_getN(9);
  @$pb.TagNumber(21)
  set stringArray(StringArray v) { setField(21, v); }
  @$pb.TagNumber(21)
  $core.bool hasStringArray() => $_has(9);
  @$pb.TagNumber(21)
  void clearStringArray() => clearField(21);
  @$pb.TagNumber(21)
  StringArray ensureStringArray() => $_ensure(9);

  @$pb.TagNumber(22)
  BoolArray get boolArray => $_getN(10);
  @$pb.TagNumber(22)
  set boolArray(BoolArray v) { setField(22, v); }
  @$pb.TagNumber(22)
  $core.bool hasBoolArray() => $_has(10);
  @$pb.TagNumber(22)
  void clearBoolArray() => clearField(22);
  @$pb.TagNumber(22)
  BoolArray ensureBoolArray() => $_ensure(10);

  @$pb.TagNumber(23)
  Int32Array get int32Array => $_getN(11);
  @$pb.TagNumber(23)
  set int32Array(Int32Array v) { setField(23, v); }
  @$pb.TagNumber(23)
  $core.bool hasInt32Array() => $_has(11);
  @$pb.TagNumber(23)
  void clearInt32Array() => clearField(23);
  @$pb.TagNumber(23)
  Int32Array ensureInt32Array() => $_ensure(11);

  @$pb.TagNumber(24)
  Int64Array get int64Array => $_getN(12);
  @$pb.TagNumber(24)
  set int64Array(Int64Array v) { setField(24, v); }
  @$pb.TagNumber(24)
  $core.bool hasInt64Array() => $_has(12);
  @$pb.TagNumber(24)
  void clearInt64Array() => clearField(24);
  @$pb.TagNumber(24)
  Int64Array ensureInt64Array() => $_ensure(12);

  @$pb.TagNumber(25)
  Uint32Array get uint32Array => $_getN(13);
  @$pb.TagNumber(25)
  set uint32Array(Uint32Array v) { setField(25, v); }
  @$pb.TagNumber(25)
  $core.bool hasUint32Array() => $_has(13);
  @$pb.TagNumber(25)
  void clearUint32Array() => clearField(25);
  @$pb.TagNumber(25)
  Uint32Array ensureUint32Array() => $_ensure(13);

  @$pb.TagNumber(26)
  Uint64Array get uint64Array => $_getN(14);
  @$pb.TagNumber(26)
  set uint64Array(Uint64Array v) { setField(26, v); }
  @$pb.TagNumber(26)
  $core.bool hasUint64Array() => $_has(14);
  @$pb.TagNumber(26)
  void clearUint64Array() => clearField(26);
  @$pb.TagNumber(26)
  Uint64Array ensureUint64Array() => $_ensure(14);

  @$pb.TagNumber(27)
  FloatArray get floatArray => $_getN(15);
  @$pb.TagNumber(27)
  set floatArray(FloatArray v) { setField(27, v); }
  @$pb.TagNumber(27)
  $core.bool hasFloatArray() => $_has(15);
  @$pb.TagNumber(27)
  void clearFloatArray() => clearField(27);
  @$pb.TagNumber(27)
  FloatArray ensureFloatArray() => $_ensure(15);

  @$pb.TagNumber(28)
  DoubleArray get doubleArray => $_getN(16);
  @$pb.TagNumber(28)
  set doubleArray(DoubleArray v) { setField(28, v); }
  @$pb.TagNumber(28)
  $core.bool hasDoubleArray() => $_has(16);
  @$pb.TagNumber(28)
  void clearDoubleArray() => clearField(28);
  @$pb.TagNumber(28)
  DoubleArray ensureDoubleArray() => $_ensure(16);
}

enum Metadata_EntrySpecific {
  actuator, 
  sensor, 
  attribute, 
  notSet
}

class Metadata extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Metadata_EntrySpecific> _Metadata_EntrySpecificByTag = {
    20 : Metadata_EntrySpecific.actuator,
    30 : Metadata_EntrySpecific.sensor,
    40 : Metadata_EntrySpecific.attribute,
    0 : Metadata_EntrySpecific.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Metadata', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'kuksa.val.v1'), createEmptyInstance: create)
    ..oo(0, [20, 30, 40])
    ..e<DataType>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dataType', $pb.PbFieldType.OE, defaultOrMaker: DataType.DATA_TYPE_UNSPECIFIED, valueOf: DataType.valueOf, enumValues: DataType.values)
    ..e<EntryType>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'entryType', $pb.PbFieldType.OE, defaultOrMaker: EntryType.ENTRY_TYPE_UNSPECIFIED, valueOf: EntryType.valueOf, enumValues: EntryType.values)
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..aOS(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'comment')
    ..aOS(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deprecation')
    ..aOS(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'unit')
    ..aOM<ValueRestriction>(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'valueRestriction', subBuilder: ValueRestriction.create)
    ..aOM<Actuator>(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'actuator', subBuilder: Actuator.create)
    ..aOM<Sensor>(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sensor', subBuilder: Sensor.create)
    ..aOM<Attribute>(40, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'attribute', subBuilder: Attribute.create)
    ..hasRequiredFields = false
  ;

  Metadata._() : super();
  factory Metadata({
    DataType? dataType,
    EntryType? entryType,
    $core.String? description,
    $core.String? comment,
    $core.String? deprecation,
    $core.String? unit,
    ValueRestriction? valueRestriction,
    Actuator? actuator,
    Sensor? sensor,
    Attribute? attribute,
  }) {
    final _result = create();
    if (dataType != null) {
      _result.dataType = dataType;
    }
    if (entryType != null) {
      _result.entryType = entryType;
    }
    if (description != null) {
      _result.description = description;
    }
    if (comment != null) {
      _result.comment = comment;
    }
    if (deprecation != null) {
      _result.deprecation = deprecation;
    }
    if (unit != null) {
      _result.unit = unit;
    }
    if (valueRestriction != null) {
      _result.valueRestriction = valueRestriction;
    }
    if (actuator != null) {
      _result.actuator = actuator;
    }
    if (sensor != null) {
      _result.sensor = sensor;
    }
    if (attribute != null) {
      _result.attribute = attribute;
    }
    return _result;
  }
  factory Metadata.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Metadata.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Metadata clone() => Metadata()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Metadata copyWith(void Function(Metadata) updates) => super.copyWith((message) => updates(message as Metadata)) as Metadata; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Metadata create() => Metadata._();
  Metadata createEmptyInstance() => create();
  static $pb.PbList<Metadata> createRepeated() => $pb.PbList<Metadata>();
  @$core.pragma('dart2js:noInline')
  static Metadata getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Metadata>(create);
  static Metadata? _defaultInstance;

  Metadata_EntrySpecific whichEntrySpecific() => _Metadata_EntrySpecificByTag[$_whichOneof(0)]!;
  void clearEntrySpecific() => clearField($_whichOneof(0));

  @$pb.TagNumber(11)
  DataType get dataType => $_getN(0);
  @$pb.TagNumber(11)
  set dataType(DataType v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasDataType() => $_has(0);
  @$pb.TagNumber(11)
  void clearDataType() => clearField(11);

  @$pb.TagNumber(12)
  EntryType get entryType => $_getN(1);
  @$pb.TagNumber(12)
  set entryType(EntryType v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasEntryType() => $_has(1);
  @$pb.TagNumber(12)
  void clearEntryType() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(13)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(13)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(13)
  void clearDescription() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get comment => $_getSZ(3);
  @$pb.TagNumber(14)
  set comment($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(14)
  $core.bool hasComment() => $_has(3);
  @$pb.TagNumber(14)
  void clearComment() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get deprecation => $_getSZ(4);
  @$pb.TagNumber(15)
  set deprecation($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(15)
  $core.bool hasDeprecation() => $_has(4);
  @$pb.TagNumber(15)
  void clearDeprecation() => clearField(15);

  @$pb.TagNumber(16)
  $core.String get unit => $_getSZ(5);
  @$pb.TagNumber(16)
  set unit($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(16)
  $core.bool hasUnit() => $_has(5);
  @$pb.TagNumber(16)
  void clearUnit() => clearField(16);

  @$pb.TagNumber(17)
  ValueRestriction get valueRestriction => $_getN(6);
  @$pb.TagNumber(17)
  set valueRestriction(ValueRestriction v) { setField(17, v); }
  @$pb.TagNumber(17)
  $core.bool hasValueRestriction() => $_has(6);
  @$pb.TagNumber(17)
  void clearValueRestriction() => clearField(17);
  @$pb.TagNumber(17)
  ValueRestriction ensureValueRestriction() => $_ensure(6);

  @$pb.TagNumber(20)
  Actuator get actuator => $_getN(7);
  @$pb.TagNumber(20)
  set actuator(Actuator v) { setField(20, v); }
  @$pb.TagNumber(20)
  $core.bool hasActuator() => $_has(7);
  @$pb.TagNumber(20)
  void clearActuator() => clearField(20);
  @$pb.TagNumber(20)
  Actuator ensureActuator() => $_ensure(7);

  @$pb.TagNumber(30)
  Sensor get sensor => $_getN(8);
  @$pb.TagNumber(30)
  set sensor(Sensor v) { setField(30, v); }
  @$pb.TagNumber(30)
  $core.bool hasSensor() => $_has(8);
  @$pb.TagNumber(30)
  void clearSensor() => clearField(30);
  @$pb.TagNumber(30)
  Sensor ensureSensor() => $_ensure(8);

  @$pb.TagNumber(40)
  Attribute get attribute => $_getN(9);
  @$pb.TagNumber(40)
  set attribute(Attribute v) { setField(40, v); }
  @$pb.TagNumber(40)
  $core.bool hasAttribute() => $_has(9);
  @$pb.TagNumber(40)
  void clearAttribute() => clearField(40);
  @$pb.TagNumber(40)
  Attribute ensureAttribute() => $_ensure(9);
}

class Actuator extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Actuator', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'kuksa.val.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  Actuator._() : super();
  factory Actuator() => create();
  factory Actuator.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Actuator.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Actuator clone() => Actuator()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Actuator copyWith(void Function(Actuator) updates) => super.copyWith((message) => updates(message as Actuator)) as Actuator; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Actuator create() => Actuator._();
  Actuator createEmptyInstance() => create();
  static $pb.PbList<Actuator> createRepeated() => $pb.PbList<Actuator>();
  @$core.pragma('dart2js:noInline')
  static Actuator getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Actuator>(create);
  static Actuator? _defaultInstance;
}

class Sensor extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Sensor', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'kuksa.val.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  Sensor._() : super();
  factory Sensor() => create();
  factory Sensor.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Sensor.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Sensor clone() => Sensor()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Sensor copyWith(void Function(Sensor) updates) => super.copyWith((message) => updates(message as Sensor)) as Sensor; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Sensor create() => Sensor._();
  Sensor createEmptyInstance() => create();
  static $pb.PbList<Sensor> createRepeated() => $pb.PbList<Sensor>();
  @$core.pragma('dart2js:noInline')
  static Sensor getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Sensor>(create);
  static Sensor? _defaultInstance;
}

class Attribute extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Attribute', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'kuksa.val.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  Attribute._() : super();
  factory Attribute() => create();
  factory Attribute.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Attribute.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Attribute clone() => Attribute()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Attribute copyWith(void Function(Attribute) updates) => super.copyWith((message) => updates(message as Attribute)) as Attribute; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Attribute create() => Attribute._();
  Attribute createEmptyInstance() => create();
  static $pb.PbList<Attribute> createRepeated() => $pb.PbList<Attribute>();
  @$core.pragma('dart2js:noInline')
  static Attribute getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Attribute>(create);
  static Attribute? _defaultInstance;
}

enum ValueRestriction_Type {
  string, 
  signed, 
  unsigned, 
  floatingPoint, 
  notSet
}

class ValueRestriction extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, ValueRestriction_Type> _ValueRestriction_TypeByTag = {
    21 : ValueRestriction_Type.string,
    22 : ValueRestriction_Type.signed,
    23 : ValueRestriction_Type.unsigned,
    24 : ValueRestriction_Type.floatingPoint,
    0 : ValueRestriction_Type.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ValueRestriction', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'kuksa.val.v1'), createEmptyInstance: create)
    ..oo(0, [21, 22, 23, 24])
    ..aOM<ValueRestrictionString>(21, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'string', subBuilder: ValueRestrictionString.create)
    ..aOM<ValueRestrictionInt>(22, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'signed', subBuilder: ValueRestrictionInt.create)
    ..aOM<ValueRestrictionUint>(23, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'unsigned', subBuilder: ValueRestrictionUint.create)
    ..aOM<ValueRestrictionFloat>(24, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'floatingPoint', subBuilder: ValueRestrictionFloat.create)
    ..hasRequiredFields = false
  ;

  ValueRestriction._() : super();
  factory ValueRestriction({
    ValueRestrictionString? string,
    ValueRestrictionInt? signed,
    ValueRestrictionUint? unsigned,
    ValueRestrictionFloat? floatingPoint,
  }) {
    final _result = create();
    if (string != null) {
      _result.string = string;
    }
    if (signed != null) {
      _result.signed = signed;
    }
    if (unsigned != null) {
      _result.unsigned = unsigned;
    }
    if (floatingPoint != null) {
      _result.floatingPoint = floatingPoint;
    }
    return _result;
  }
  factory ValueRestriction.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ValueRestriction.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ValueRestriction clone() => ValueRestriction()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ValueRestriction copyWith(void Function(ValueRestriction) updates) => super.copyWith((message) => updates(message as ValueRestriction)) as ValueRestriction; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ValueRestriction create() => ValueRestriction._();
  ValueRestriction createEmptyInstance() => create();
  static $pb.PbList<ValueRestriction> createRepeated() => $pb.PbList<ValueRestriction>();
  @$core.pragma('dart2js:noInline')
  static ValueRestriction getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ValueRestriction>(create);
  static ValueRestriction? _defaultInstance;

  ValueRestriction_Type whichType() => _ValueRestriction_TypeByTag[$_whichOneof(0)]!;
  void clearType() => clearField($_whichOneof(0));

  @$pb.TagNumber(21)
  ValueRestrictionString get string => $_getN(0);
  @$pb.TagNumber(21)
  set string(ValueRestrictionString v) { setField(21, v); }
  @$pb.TagNumber(21)
  $core.bool hasString() => $_has(0);
  @$pb.TagNumber(21)
  void clearString() => clearField(21);
  @$pb.TagNumber(21)
  ValueRestrictionString ensureString() => $_ensure(0);

  @$pb.TagNumber(22)
  ValueRestrictionInt get signed => $_getN(1);
  @$pb.TagNumber(22)
  set signed(ValueRestrictionInt v) { setField(22, v); }
  @$pb.TagNumber(22)
  $core.bool hasSigned() => $_has(1);
  @$pb.TagNumber(22)
  void clearSigned() => clearField(22);
  @$pb.TagNumber(22)
  ValueRestrictionInt ensureSigned() => $_ensure(1);

  @$pb.TagNumber(23)
  ValueRestrictionUint get unsigned => $_getN(2);
  @$pb.TagNumber(23)
  set unsigned(ValueRestrictionUint v) { setField(23, v); }
  @$pb.TagNumber(23)
  $core.bool hasUnsigned() => $_has(2);
  @$pb.TagNumber(23)
  void clearUnsigned() => clearField(23);
  @$pb.TagNumber(23)
  ValueRestrictionUint ensureUnsigned() => $_ensure(2);

  @$pb.TagNumber(24)
  ValueRestrictionFloat get floatingPoint => $_getN(3);
  @$pb.TagNumber(24)
  set floatingPoint(ValueRestrictionFloat v) { setField(24, v); }
  @$pb.TagNumber(24)
  $core.bool hasFloatingPoint() => $_has(3);
  @$pb.TagNumber(24)
  void clearFloatingPoint() => clearField(24);
  @$pb.TagNumber(24)
  ValueRestrictionFloat ensureFloatingPoint() => $_ensure(3);
}

class ValueRestrictionInt extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ValueRestrictionInt', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'kuksa.val.v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'min', $pb.PbFieldType.OS6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'max', $pb.PbFieldType.OS6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..p<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'allowedValues', $pb.PbFieldType.KS6)
    ..hasRequiredFields = false
  ;

  ValueRestrictionInt._() : super();
  factory ValueRestrictionInt({
    $fixnum.Int64? min,
    $fixnum.Int64? max,
    $core.Iterable<$fixnum.Int64>? allowedValues,
  }) {
    final _result = create();
    if (min != null) {
      _result.min = min;
    }
    if (max != null) {
      _result.max = max;
    }
    if (allowedValues != null) {
      _result.allowedValues.addAll(allowedValues);
    }
    return _result;
  }
  factory ValueRestrictionInt.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ValueRestrictionInt.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ValueRestrictionInt clone() => ValueRestrictionInt()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ValueRestrictionInt copyWith(void Function(ValueRestrictionInt) updates) => super.copyWith((message) => updates(message as ValueRestrictionInt)) as ValueRestrictionInt; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ValueRestrictionInt create() => ValueRestrictionInt._();
  ValueRestrictionInt createEmptyInstance() => create();
  static $pb.PbList<ValueRestrictionInt> createRepeated() => $pb.PbList<ValueRestrictionInt>();
  @$core.pragma('dart2js:noInline')
  static ValueRestrictionInt getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ValueRestrictionInt>(create);
  static ValueRestrictionInt? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get min => $_getI64(0);
  @$pb.TagNumber(1)
  set min($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMin() => $_has(0);
  @$pb.TagNumber(1)
  void clearMin() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get max => $_getI64(1);
  @$pb.TagNumber(2)
  set max($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMax() => $_has(1);
  @$pb.TagNumber(2)
  void clearMax() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$fixnum.Int64> get allowedValues => $_getList(2);
}

class ValueRestrictionUint extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ValueRestrictionUint', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'kuksa.val.v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'min', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'max', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..p<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'allowedValues', $pb.PbFieldType.KU6)
    ..hasRequiredFields = false
  ;

  ValueRestrictionUint._() : super();
  factory ValueRestrictionUint({
    $fixnum.Int64? min,
    $fixnum.Int64? max,
    $core.Iterable<$fixnum.Int64>? allowedValues,
  }) {
    final _result = create();
    if (min != null) {
      _result.min = min;
    }
    if (max != null) {
      _result.max = max;
    }
    if (allowedValues != null) {
      _result.allowedValues.addAll(allowedValues);
    }
    return _result;
  }
  factory ValueRestrictionUint.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ValueRestrictionUint.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ValueRestrictionUint clone() => ValueRestrictionUint()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ValueRestrictionUint copyWith(void Function(ValueRestrictionUint) updates) => super.copyWith((message) => updates(message as ValueRestrictionUint)) as ValueRestrictionUint; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ValueRestrictionUint create() => ValueRestrictionUint._();
  ValueRestrictionUint createEmptyInstance() => create();
  static $pb.PbList<ValueRestrictionUint> createRepeated() => $pb.PbList<ValueRestrictionUint>();
  @$core.pragma('dart2js:noInline')
  static ValueRestrictionUint getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ValueRestrictionUint>(create);
  static ValueRestrictionUint? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get min => $_getI64(0);
  @$pb.TagNumber(1)
  set min($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMin() => $_has(0);
  @$pb.TagNumber(1)
  void clearMin() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get max => $_getI64(1);
  @$pb.TagNumber(2)
  set max($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMax() => $_has(1);
  @$pb.TagNumber(2)
  void clearMax() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$fixnum.Int64> get allowedValues => $_getList(2);
}

class ValueRestrictionFloat extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ValueRestrictionFloat', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'kuksa.val.v1'), createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'min', $pb.PbFieldType.OD)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'max', $pb.PbFieldType.OD)
    ..p<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'allowedValues', $pb.PbFieldType.KD)
    ..hasRequiredFields = false
  ;

  ValueRestrictionFloat._() : super();
  factory ValueRestrictionFloat({
    $core.double? min,
    $core.double? max,
    $core.Iterable<$core.double>? allowedValues,
  }) {
    final _result = create();
    if (min != null) {
      _result.min = min;
    }
    if (max != null) {
      _result.max = max;
    }
    if (allowedValues != null) {
      _result.allowedValues.addAll(allowedValues);
    }
    return _result;
  }
  factory ValueRestrictionFloat.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ValueRestrictionFloat.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ValueRestrictionFloat clone() => ValueRestrictionFloat()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ValueRestrictionFloat copyWith(void Function(ValueRestrictionFloat) updates) => super.copyWith((message) => updates(message as ValueRestrictionFloat)) as ValueRestrictionFloat; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ValueRestrictionFloat create() => ValueRestrictionFloat._();
  ValueRestrictionFloat createEmptyInstance() => create();
  static $pb.PbList<ValueRestrictionFloat> createRepeated() => $pb.PbList<ValueRestrictionFloat>();
  @$core.pragma('dart2js:noInline')
  static ValueRestrictionFloat getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ValueRestrictionFloat>(create);
  static ValueRestrictionFloat? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get min => $_getN(0);
  @$pb.TagNumber(1)
  set min($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMin() => $_has(0);
  @$pb.TagNumber(1)
  void clearMin() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get max => $_getN(1);
  @$pb.TagNumber(2)
  set max($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMax() => $_has(1);
  @$pb.TagNumber(2)
  void clearMax() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.double> get allowedValues => $_getList(2);
}

class ValueRestrictionString extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ValueRestrictionString', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'kuksa.val.v1'), createEmptyInstance: create)
    ..pPS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'allowedValues')
    ..hasRequiredFields = false
  ;

  ValueRestrictionString._() : super();
  factory ValueRestrictionString({
    $core.Iterable<$core.String>? allowedValues,
  }) {
    final _result = create();
    if (allowedValues != null) {
      _result.allowedValues.addAll(allowedValues);
    }
    return _result;
  }
  factory ValueRestrictionString.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ValueRestrictionString.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ValueRestrictionString clone() => ValueRestrictionString()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ValueRestrictionString copyWith(void Function(ValueRestrictionString) updates) => super.copyWith((message) => updates(message as ValueRestrictionString)) as ValueRestrictionString; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ValueRestrictionString create() => ValueRestrictionString._();
  ValueRestrictionString createEmptyInstance() => create();
  static $pb.PbList<ValueRestrictionString> createRepeated() => $pb.PbList<ValueRestrictionString>();
  @$core.pragma('dart2js:noInline')
  static ValueRestrictionString getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ValueRestrictionString>(create);
  static ValueRestrictionString? _defaultInstance;

  @$pb.TagNumber(3)
  $core.List<$core.String> get allowedValues => $_getList(0);
}

class Error extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Error', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'kuksa.val.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'code', $pb.PbFieldType.OU3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reason')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..hasRequiredFields = false
  ;

  Error._() : super();
  factory Error({
    $core.int? code,
    $core.String? reason,
    $core.String? message,
  }) {
    final _result = create();
    if (code != null) {
      _result.code = code;
    }
    if (reason != null) {
      _result.reason = reason;
    }
    if (message != null) {
      _result.message = message;
    }
    return _result;
  }
  factory Error.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Error.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Error clone() => Error()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Error copyWith(void Function(Error) updates) => super.copyWith((message) => updates(message as Error)) as Error; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Error create() => Error._();
  Error createEmptyInstance() => create();
  static $pb.PbList<Error> createRepeated() => $pb.PbList<Error>();
  @$core.pragma('dart2js:noInline')
  static Error getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Error>(create);
  static Error? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get code => $_getIZ(0);
  @$pb.TagNumber(1)
  set code($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get reason => $_getSZ(1);
  @$pb.TagNumber(2)
  set reason($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasReason() => $_has(1);
  @$pb.TagNumber(2)
  void clearReason() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get message => $_getSZ(2);
  @$pb.TagNumber(3)
  set message($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessage() => clearField(3);
}

class DataEntryError extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DataEntryError', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'kuksa.val.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'path')
    ..aOM<Error>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: Error.create)
    ..hasRequiredFields = false
  ;

  DataEntryError._() : super();
  factory DataEntryError({
    $core.String? path,
    Error? error,
  }) {
    final _result = create();
    if (path != null) {
      _result.path = path;
    }
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory DataEntryError.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DataEntryError.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DataEntryError clone() => DataEntryError()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DataEntryError copyWith(void Function(DataEntryError) updates) => super.copyWith((message) => updates(message as DataEntryError)) as DataEntryError; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DataEntryError create() => DataEntryError._();
  DataEntryError createEmptyInstance() => create();
  static $pb.PbList<DataEntryError> createRepeated() => $pb.PbList<DataEntryError>();
  @$core.pragma('dart2js:noInline')
  static DataEntryError getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DataEntryError>(create);
  static DataEntryError? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get path => $_getSZ(0);
  @$pb.TagNumber(1)
  set path($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPath() => $_has(0);
  @$pb.TagNumber(1)
  void clearPath() => clearField(1);

  @$pb.TagNumber(2)
  Error get error => $_getN(1);
  @$pb.TagNumber(2)
  set error(Error v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  Error ensureError() => $_ensure(1);
}

class StringArray extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StringArray', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'kuksa.val.v1'), createEmptyInstance: create)
    ..pPS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'values')
    ..hasRequiredFields = false
  ;

  StringArray._() : super();
  factory StringArray({
    $core.Iterable<$core.String>? values,
  }) {
    final _result = create();
    if (values != null) {
      _result.values.addAll(values);
    }
    return _result;
  }
  factory StringArray.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StringArray.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StringArray clone() => StringArray()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StringArray copyWith(void Function(StringArray) updates) => super.copyWith((message) => updates(message as StringArray)) as StringArray; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StringArray create() => StringArray._();
  StringArray createEmptyInstance() => create();
  static $pb.PbList<StringArray> createRepeated() => $pb.PbList<StringArray>();
  @$core.pragma('dart2js:noInline')
  static StringArray getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StringArray>(create);
  static StringArray? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get values => $_getList(0);
}

class BoolArray extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BoolArray', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'kuksa.val.v1'), createEmptyInstance: create)
    ..p<$core.bool>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'values', $pb.PbFieldType.KB)
    ..hasRequiredFields = false
  ;

  BoolArray._() : super();
  factory BoolArray({
    $core.Iterable<$core.bool>? values,
  }) {
    final _result = create();
    if (values != null) {
      _result.values.addAll(values);
    }
    return _result;
  }
  factory BoolArray.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BoolArray.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BoolArray clone() => BoolArray()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BoolArray copyWith(void Function(BoolArray) updates) => super.copyWith((message) => updates(message as BoolArray)) as BoolArray; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BoolArray create() => BoolArray._();
  BoolArray createEmptyInstance() => create();
  static $pb.PbList<BoolArray> createRepeated() => $pb.PbList<BoolArray>();
  @$core.pragma('dart2js:noInline')
  static BoolArray getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BoolArray>(create);
  static BoolArray? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.bool> get values => $_getList(0);
}

class Int32Array extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Int32Array', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'kuksa.val.v1'), createEmptyInstance: create)
    ..p<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'values', $pb.PbFieldType.KS3)
    ..hasRequiredFields = false
  ;

  Int32Array._() : super();
  factory Int32Array({
    $core.Iterable<$core.int>? values,
  }) {
    final _result = create();
    if (values != null) {
      _result.values.addAll(values);
    }
    return _result;
  }
  factory Int32Array.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Int32Array.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Int32Array clone() => Int32Array()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Int32Array copyWith(void Function(Int32Array) updates) => super.copyWith((message) => updates(message as Int32Array)) as Int32Array; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Int32Array create() => Int32Array._();
  Int32Array createEmptyInstance() => create();
  static $pb.PbList<Int32Array> createRepeated() => $pb.PbList<Int32Array>();
  @$core.pragma('dart2js:noInline')
  static Int32Array getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Int32Array>(create);
  static Int32Array? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get values => $_getList(0);
}

class Int64Array extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Int64Array', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'kuksa.val.v1'), createEmptyInstance: create)
    ..p<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'values', $pb.PbFieldType.KS6)
    ..hasRequiredFields = false
  ;

  Int64Array._() : super();
  factory Int64Array({
    $core.Iterable<$fixnum.Int64>? values,
  }) {
    final _result = create();
    if (values != null) {
      _result.values.addAll(values);
    }
    return _result;
  }
  factory Int64Array.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Int64Array.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Int64Array clone() => Int64Array()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Int64Array copyWith(void Function(Int64Array) updates) => super.copyWith((message) => updates(message as Int64Array)) as Int64Array; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Int64Array create() => Int64Array._();
  Int64Array createEmptyInstance() => create();
  static $pb.PbList<Int64Array> createRepeated() => $pb.PbList<Int64Array>();
  @$core.pragma('dart2js:noInline')
  static Int64Array getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Int64Array>(create);
  static Int64Array? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$fixnum.Int64> get values => $_getList(0);
}

class Uint32Array extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Uint32Array', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'kuksa.val.v1'), createEmptyInstance: create)
    ..p<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'values', $pb.PbFieldType.KU3)
    ..hasRequiredFields = false
  ;

  Uint32Array._() : super();
  factory Uint32Array({
    $core.Iterable<$core.int>? values,
  }) {
    final _result = create();
    if (values != null) {
      _result.values.addAll(values);
    }
    return _result;
  }
  factory Uint32Array.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Uint32Array.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Uint32Array clone() => Uint32Array()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Uint32Array copyWith(void Function(Uint32Array) updates) => super.copyWith((message) => updates(message as Uint32Array)) as Uint32Array; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Uint32Array create() => Uint32Array._();
  Uint32Array createEmptyInstance() => create();
  static $pb.PbList<Uint32Array> createRepeated() => $pb.PbList<Uint32Array>();
  @$core.pragma('dart2js:noInline')
  static Uint32Array getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Uint32Array>(create);
  static Uint32Array? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get values => $_getList(0);
}

class Uint64Array extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Uint64Array', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'kuksa.val.v1'), createEmptyInstance: create)
    ..p<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'values', $pb.PbFieldType.KU6)
    ..hasRequiredFields = false
  ;

  Uint64Array._() : super();
  factory Uint64Array({
    $core.Iterable<$fixnum.Int64>? values,
  }) {
    final _result = create();
    if (values != null) {
      _result.values.addAll(values);
    }
    return _result;
  }
  factory Uint64Array.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Uint64Array.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Uint64Array clone() => Uint64Array()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Uint64Array copyWith(void Function(Uint64Array) updates) => super.copyWith((message) => updates(message as Uint64Array)) as Uint64Array; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Uint64Array create() => Uint64Array._();
  Uint64Array createEmptyInstance() => create();
  static $pb.PbList<Uint64Array> createRepeated() => $pb.PbList<Uint64Array>();
  @$core.pragma('dart2js:noInline')
  static Uint64Array getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Uint64Array>(create);
  static Uint64Array? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$fixnum.Int64> get values => $_getList(0);
}

class FloatArray extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FloatArray', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'kuksa.val.v1'), createEmptyInstance: create)
    ..p<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'values', $pb.PbFieldType.KF)
    ..hasRequiredFields = false
  ;

  FloatArray._() : super();
  factory FloatArray({
    $core.Iterable<$core.double>? values,
  }) {
    final _result = create();
    if (values != null) {
      _result.values.addAll(values);
    }
    return _result;
  }
  factory FloatArray.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FloatArray.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FloatArray clone() => FloatArray()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FloatArray copyWith(void Function(FloatArray) updates) => super.copyWith((message) => updates(message as FloatArray)) as FloatArray; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FloatArray create() => FloatArray._();
  FloatArray createEmptyInstance() => create();
  static $pb.PbList<FloatArray> createRepeated() => $pb.PbList<FloatArray>();
  @$core.pragma('dart2js:noInline')
  static FloatArray getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FloatArray>(create);
  static FloatArray? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.double> get values => $_getList(0);
}

class DoubleArray extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DoubleArray', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'kuksa.val.v1'), createEmptyInstance: create)
    ..p<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'values', $pb.PbFieldType.KD)
    ..hasRequiredFields = false
  ;

  DoubleArray._() : super();
  factory DoubleArray({
    $core.Iterable<$core.double>? values,
  }) {
    final _result = create();
    if (values != null) {
      _result.values.addAll(values);
    }
    return _result;
  }
  factory DoubleArray.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DoubleArray.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DoubleArray clone() => DoubleArray()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DoubleArray copyWith(void Function(DoubleArray) updates) => super.copyWith((message) => updates(message as DoubleArray)) as DoubleArray; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DoubleArray create() => DoubleArray._();
  DoubleArray createEmptyInstance() => create();
  static $pb.PbList<DoubleArray> createRepeated() => $pb.PbList<DoubleArray>();
  @$core.pragma('dart2js:noInline')
  static DoubleArray getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DoubleArray>(create);
  static DoubleArray? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.double> get values => $_getList(0);
}

