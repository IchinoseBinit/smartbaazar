// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fields_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FieldsResponse _$FieldsResponseFromJson(Map<String, dynamic> json) {
  return _FieldsResponse.fromJson(json);
}

/// @nodoc
mixin _$FieldsResponse {
  bool get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<FieldData> get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FieldsResponseCopyWith<FieldsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FieldsResponseCopyWith<$Res> {
  factory $FieldsResponseCopyWith(
          FieldsResponse value, $Res Function(FieldsResponse) then) =
      _$FieldsResponseCopyWithImpl<$Res, FieldsResponse>;
  @useResult
  $Res call({bool success, String? message, List<FieldData> result});
}

/// @nodoc
class _$FieldsResponseCopyWithImpl<$Res, $Val extends FieldsResponse>
    implements $FieldsResponseCopyWith<$Res> {
  _$FieldsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = freezed,
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<FieldData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FieldsResponseImplCopyWith<$Res>
    implements $FieldsResponseCopyWith<$Res> {
  factory _$$FieldsResponseImplCopyWith(_$FieldsResponseImpl value,
          $Res Function(_$FieldsResponseImpl) then) =
      __$$FieldsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String? message, List<FieldData> result});
}

/// @nodoc
class __$$FieldsResponseImplCopyWithImpl<$Res>
    extends _$FieldsResponseCopyWithImpl<$Res, _$FieldsResponseImpl>
    implements _$$FieldsResponseImplCopyWith<$Res> {
  __$$FieldsResponseImplCopyWithImpl(
      _$FieldsResponseImpl _value, $Res Function(_$FieldsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = freezed,
    Object? result = null,
  }) {
    return _then(_$FieldsResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      result: null == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<FieldData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FieldsResponseImpl implements _FieldsResponse {
  _$FieldsResponseImpl(
      {required this.success,
      this.message,
      required final List<FieldData> result})
      : _result = result;

  factory _$FieldsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FieldsResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final String? message;
  final List<FieldData> _result;
  @override
  List<FieldData> get result {
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_result);
  }

  @override
  String toString() {
    return 'FieldsResponse(success: $success, message: $message, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FieldsResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message,
      const DeepCollectionEquality().hash(_result));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FieldsResponseImplCopyWith<_$FieldsResponseImpl> get copyWith =>
      __$$FieldsResponseImplCopyWithImpl<_$FieldsResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FieldsResponseImplToJson(
      this,
    );
  }
}

abstract class _FieldsResponse implements FieldsResponse {
  factory _FieldsResponse(
      {required final bool success,
      final String? message,
      required final List<FieldData> result}) = _$FieldsResponseImpl;

  factory _FieldsResponse.fromJson(Map<String, dynamic> json) =
      _$FieldsResponseImpl.fromJson;

  @override
  bool get success;
  @override
  String? get message;
  @override
  List<FieldData> get result;
  @override
  @JsonKey(ignore: true)
  _$$FieldsResponseImplCopyWith<_$FieldsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FieldData _$FieldDataFromJson(Map<String, dynamic> json) {
  return _FieldData.fromJson(json);
}

/// @nodoc
mixin _$FieldData {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'belongs_to')
  String get belongsTo => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  int? get max => throw _privateConstructorUsedError;
  @JsonKey(name: 'default_value')
  String? get defaultValue => throw _privateConstructorUsedError;
  String get required => throw _privateConstructorUsedError;
  @JsonKey(name: 'use_as_filter')
  String get useAsFilter => throw _privateConstructorUsedError;
  List<Option> get options => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FieldDataCopyWith<FieldData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FieldDataCopyWith<$Res> {
  factory $FieldDataCopyWith(FieldData value, $Res Function(FieldData) then) =
      _$FieldDataCopyWithImpl<$Res, FieldData>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'belongs_to') String belongsTo,
      String name,
      String type,
      int? max,
      @JsonKey(name: 'default_value') String? defaultValue,
      String required,
      @JsonKey(name: 'use_as_filter') String useAsFilter,
      List<Option> options});
}

/// @nodoc
class _$FieldDataCopyWithImpl<$Res, $Val extends FieldData>
    implements $FieldDataCopyWith<$Res> {
  _$FieldDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? belongsTo = null,
    Object? name = null,
    Object? type = null,
    Object? max = freezed,
    Object? defaultValue = freezed,
    Object? required = null,
    Object? useAsFilter = null,
    Object? options = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      belongsTo: null == belongsTo
          ? _value.belongsTo
          : belongsTo // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      max: freezed == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int?,
      defaultValue: freezed == defaultValue
          ? _value.defaultValue
          : defaultValue // ignore: cast_nullable_to_non_nullable
              as String?,
      required: null == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as String,
      useAsFilter: null == useAsFilter
          ? _value.useAsFilter
          : useAsFilter // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<Option>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FieldDataImplCopyWith<$Res>
    implements $FieldDataCopyWith<$Res> {
  factory _$$FieldDataImplCopyWith(
          _$FieldDataImpl value, $Res Function(_$FieldDataImpl) then) =
      __$$FieldDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'belongs_to') String belongsTo,
      String name,
      String type,
      int? max,
      @JsonKey(name: 'default_value') String? defaultValue,
      String required,
      @JsonKey(name: 'use_as_filter') String useAsFilter,
      List<Option> options});
}

/// @nodoc
class __$$FieldDataImplCopyWithImpl<$Res>
    extends _$FieldDataCopyWithImpl<$Res, _$FieldDataImpl>
    implements _$$FieldDataImplCopyWith<$Res> {
  __$$FieldDataImplCopyWithImpl(
      _$FieldDataImpl _value, $Res Function(_$FieldDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? belongsTo = null,
    Object? name = null,
    Object? type = null,
    Object? max = freezed,
    Object? defaultValue = freezed,
    Object? required = null,
    Object? useAsFilter = null,
    Object? options = null,
  }) {
    return _then(_$FieldDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      belongsTo: null == belongsTo
          ? _value.belongsTo
          : belongsTo // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      max: freezed == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int?,
      defaultValue: freezed == defaultValue
          ? _value.defaultValue
          : defaultValue // ignore: cast_nullable_to_non_nullable
              as String?,
      required: null == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as String,
      useAsFilter: null == useAsFilter
          ? _value.useAsFilter
          : useAsFilter // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<Option>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FieldDataImpl implements _FieldData {
  _$FieldDataImpl(
      {required this.id,
      @JsonKey(name: 'belongs_to') required this.belongsTo,
      required this.name,
      required this.type,
      this.max,
      @JsonKey(name: 'default_value') this.defaultValue,
      required this.required,
      @JsonKey(name: 'use_as_filter') required this.useAsFilter,
      required final List<Option> options})
      : _options = options;

  factory _$FieldDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$FieldDataImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'belongs_to')
  final String belongsTo;
  @override
  final String name;
  @override
  final String type;
  @override
  final int? max;
  @override
  @JsonKey(name: 'default_value')
  final String? defaultValue;
  @override
  final String required;
  @override
  @JsonKey(name: 'use_as_filter')
  final String useAsFilter;
  final List<Option> _options;
  @override
  List<Option> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  String toString() {
    return 'FieldData(id: $id, belongsTo: $belongsTo, name: $name, type: $type, max: $max, defaultValue: $defaultValue, required: $required, useAsFilter: $useAsFilter, options: $options)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FieldDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.belongsTo, belongsTo) ||
                other.belongsTo == belongsTo) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.max, max) || other.max == max) &&
            (identical(other.defaultValue, defaultValue) ||
                other.defaultValue == defaultValue) &&
            (identical(other.required, required) ||
                other.required == required) &&
            (identical(other.useAsFilter, useAsFilter) ||
                other.useAsFilter == useAsFilter) &&
            const DeepCollectionEquality().equals(other._options, _options));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      belongsTo,
      name,
      type,
      max,
      defaultValue,
      required,
      useAsFilter,
      const DeepCollectionEquality().hash(_options));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FieldDataImplCopyWith<_$FieldDataImpl> get copyWith =>
      __$$FieldDataImplCopyWithImpl<_$FieldDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FieldDataImplToJson(
      this,
    );
  }
}

abstract class _FieldData implements FieldData {
  factory _FieldData(
      {required final int id,
      @JsonKey(name: 'belongs_to') required final String belongsTo,
      required final String name,
      required final String type,
      final int? max,
      @JsonKey(name: 'default_value') final String? defaultValue,
      required final String required,
      @JsonKey(name: 'use_as_filter') required final String useAsFilter,
      required final List<Option> options}) = _$FieldDataImpl;

  factory _FieldData.fromJson(Map<String, dynamic> json) =
      _$FieldDataImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'belongs_to')
  String get belongsTo;
  @override
  String get name;
  @override
  String get type;
  @override
  int? get max;
  @override
  @JsonKey(name: 'default_value')
  String? get defaultValue;
  @override
  String get required;
  @override
  @JsonKey(name: 'use_as_filter')
  String get useAsFilter;
  @override
  List<Option> get options;
  @override
  @JsonKey(ignore: true)
  _$$FieldDataImplCopyWith<_$FieldDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Option _$OptionFromJson(Map<String, dynamic> json) {
  return _Option.fromJson(json);
}

/// @nodoc
mixin _$Option {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'field_id')
  String get fieldId => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_id')
  int? get parentId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OptionCopyWith<Option> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OptionCopyWith<$Res> {
  factory $OptionCopyWith(Option value, $Res Function(Option) then) =
      _$OptionCopyWithImpl<$Res, Option>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'field_id') String fieldId,
      String value,
      @JsonKey(name: 'parent_id') int? parentId});
}

/// @nodoc
class _$OptionCopyWithImpl<$Res, $Val extends Option>
    implements $OptionCopyWith<$Res> {
  _$OptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fieldId = null,
    Object? value = null,
    Object? parentId = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fieldId: null == fieldId
          ? _value.fieldId
          : fieldId // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OptionImplCopyWith<$Res> implements $OptionCopyWith<$Res> {
  factory _$$OptionImplCopyWith(
          _$OptionImpl value, $Res Function(_$OptionImpl) then) =
      __$$OptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'field_id') String fieldId,
      String value,
      @JsonKey(name: 'parent_id') int? parentId});
}

/// @nodoc
class __$$OptionImplCopyWithImpl<$Res>
    extends _$OptionCopyWithImpl<$Res, _$OptionImpl>
    implements _$$OptionImplCopyWith<$Res> {
  __$$OptionImplCopyWithImpl(
      _$OptionImpl _value, $Res Function(_$OptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fieldId = null,
    Object? value = null,
    Object? parentId = freezed,
  }) {
    return _then(_$OptionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fieldId: null == fieldId
          ? _value.fieldId
          : fieldId // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OptionImpl implements _Option {
  _$OptionImpl(
      {required this.id,
      @JsonKey(name: 'field_id') required this.fieldId,
      required this.value,
      @JsonKey(name: 'parent_id') this.parentId});

  factory _$OptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$OptionImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'field_id')
  final String fieldId;
  @override
  final String value;
  @override
  @JsonKey(name: 'parent_id')
  final int? parentId;

  @override
  String toString() {
    return 'Option(id: $id, fieldId: $fieldId, value: $value, parentId: $parentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OptionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fieldId, fieldId) || other.fieldId == fieldId) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, fieldId, value, parentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OptionImplCopyWith<_$OptionImpl> get copyWith =>
      __$$OptionImplCopyWithImpl<_$OptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OptionImplToJson(
      this,
    );
  }
}

abstract class _Option implements Option {
  factory _Option(
      {required final int id,
      @JsonKey(name: 'field_id') required final String fieldId,
      required final String value,
      @JsonKey(name: 'parent_id') final int? parentId}) = _$OptionImpl;

  factory _Option.fromJson(Map<String, dynamic> json) = _$OptionImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'field_id')
  String get fieldId;
  @override
  String get value;
  @override
  @JsonKey(name: 'parent_id')
  int? get parentId;
  @override
  @JsonKey(ignore: true)
  _$$OptionImplCopyWith<_$OptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
