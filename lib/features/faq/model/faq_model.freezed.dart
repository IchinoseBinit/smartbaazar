// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'faq_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FAQModel _$FAQModelFromJson(Map<String, dynamic> json) {
  return _FAQModel.fromJson(json);
}

/// @nodoc
mixin _$FAQModel {
  bool get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  FAQResult get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FAQModelCopyWith<FAQModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FAQModelCopyWith<$Res> {
  factory $FAQModelCopyWith(FAQModel value, $Res Function(FAQModel) then) =
      _$FAQModelCopyWithImpl<$Res, FAQModel>;
  @useResult
  $Res call({bool success, String? message, FAQResult result});

  $FAQResultCopyWith<$Res> get result;
}

/// @nodoc
class _$FAQModelCopyWithImpl<$Res, $Val extends FAQModel>
    implements $FAQModelCopyWith<$Res> {
  _$FAQModelCopyWithImpl(this._value, this._then);

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
              as FAQResult,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FAQResultCopyWith<$Res> get result {
    return $FAQResultCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FAQModelImplCopyWith<$Res>
    implements $FAQModelCopyWith<$Res> {
  factory _$$FAQModelImplCopyWith(
          _$FAQModelImpl value, $Res Function(_$FAQModelImpl) then) =
      __$$FAQModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String? message, FAQResult result});

  @override
  $FAQResultCopyWith<$Res> get result;
}

/// @nodoc
class __$$FAQModelImplCopyWithImpl<$Res>
    extends _$FAQModelCopyWithImpl<$Res, _$FAQModelImpl>
    implements _$$FAQModelImplCopyWith<$Res> {
  __$$FAQModelImplCopyWithImpl(
      _$FAQModelImpl _value, $Res Function(_$FAQModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = freezed,
    Object? result = null,
  }) {
    return _then(_$FAQModelImpl(
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
              as FAQResult,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FAQModelImpl implements _FAQModel {
  const _$FAQModelImpl(
      {required this.success, required this.message, required this.result});

  factory _$FAQModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FAQModelImplFromJson(json);

  @override
  final bool success;
  @override
  final String? message;
  @override
  final FAQResult result;

  @override
  String toString() {
    return 'FAQModel(success: $success, message: $message, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FAQModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FAQModelImplCopyWith<_$FAQModelImpl> get copyWith =>
      __$$FAQModelImplCopyWithImpl<_$FAQModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FAQModelImplToJson(
      this,
    );
  }
}

abstract class _FAQModel implements FAQModel {
  const factory _FAQModel(
      {required final bool success,
      required final String? message,
      required final FAQResult result}) = _$FAQModelImpl;

  factory _FAQModel.fromJson(Map<String, dynamic> json) =
      _$FAQModelImpl.fromJson;

  @override
  bool get success;
  @override
  String? get message;
  @override
  FAQResult get result;
  @override
  @JsonKey(ignore: true)
  _$$FAQModelImplCopyWith<_$FAQModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FAQResult _$FAQResultFromJson(Map<String, dynamic> json) {
  return _FAQResult.fromJson(json);
}

/// @nodoc
mixin _$FAQResult {
  int get id => throw _privateConstructorUsedError;
  int? get parentId => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get name =>
      throw _privateConstructorUsedError; // required String slug,
// required String? picture,
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FAQResultCopyWith<FAQResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FAQResultCopyWith<$Res> {
  factory $FAQResultCopyWith(FAQResult value, $Res Function(FAQResult) then) =
      _$FAQResultCopyWithImpl<$Res, FAQResult>;
  @useResult
  $Res call(
      {int id,
      int? parentId,
      String type,
      String name,
      String title,
      String content});
}

/// @nodoc
class _$FAQResultCopyWithImpl<$Res, $Val extends FAQResult>
    implements $FAQResultCopyWith<$Res> {
  _$FAQResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parentId = freezed,
    Object? type = null,
    Object? name = null,
    Object? title = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FAQResultImplCopyWith<$Res>
    implements $FAQResultCopyWith<$Res> {
  factory _$$FAQResultImplCopyWith(
          _$FAQResultImpl value, $Res Function(_$FAQResultImpl) then) =
      __$$FAQResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int? parentId,
      String type,
      String name,
      String title,
      String content});
}

/// @nodoc
class __$$FAQResultImplCopyWithImpl<$Res>
    extends _$FAQResultCopyWithImpl<$Res, _$FAQResultImpl>
    implements _$$FAQResultImplCopyWith<$Res> {
  __$$FAQResultImplCopyWithImpl(
      _$FAQResultImpl _value, $Res Function(_$FAQResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parentId = freezed,
    Object? type = null,
    Object? name = null,
    Object? title = null,
    Object? content = null,
  }) {
    return _then(_$FAQResultImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FAQResultImpl implements _FAQResult {
  const _$FAQResultImpl(
      {required this.id,
      required this.parentId,
      required this.type,
      required this.name,
      required this.title,
      required this.content});

  factory _$FAQResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$FAQResultImplFromJson(json);

  @override
  final int id;
  @override
  final int? parentId;
  @override
  final String type;
  @override
  final String name;
// required String slug,
// required String? picture,
  @override
  final String title;
  @override
  final String content;

  @override
  String toString() {
    return 'FAQResult(id: $id, parentId: $parentId, type: $type, name: $name, title: $title, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FAQResultImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, parentId, type, name, title, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FAQResultImplCopyWith<_$FAQResultImpl> get copyWith =>
      __$$FAQResultImplCopyWithImpl<_$FAQResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FAQResultImplToJson(
      this,
    );
  }
}

abstract class _FAQResult implements FAQResult {
  const factory _FAQResult(
      {required final int id,
      required final int? parentId,
      required final String type,
      required final String name,
      required final String title,
      required final String content}) = _$FAQResultImpl;

  factory _FAQResult.fromJson(Map<String, dynamic> json) =
      _$FAQResultImpl.fromJson;

  @override
  int get id;
  @override
  int? get parentId;
  @override
  String get type;
  @override
  String get name;
  @override // required String slug,
// required String? picture,
  String get title;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$FAQResultImplCopyWith<_$FAQResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
