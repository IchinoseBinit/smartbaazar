// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'terms_condition_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TermsConditionsModel _$TermsConditionsModelFromJson(Map<String, dynamic> json) {
  return _TermsConditionsModel.fromJson(json);
}

/// @nodoc
mixin _$TermsConditionsModel {
  bool get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  Result get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TermsConditionsModelCopyWith<TermsConditionsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TermsConditionsModelCopyWith<$Res> {
  factory $TermsConditionsModelCopyWith(TermsConditionsModel value,
          $Res Function(TermsConditionsModel) then) =
      _$TermsConditionsModelCopyWithImpl<$Res, TermsConditionsModel>;
  @useResult
  $Res call({bool success, String? message, Result result});

  $ResultCopyWith<$Res> get result;
}

/// @nodoc
class _$TermsConditionsModelCopyWithImpl<$Res,
        $Val extends TermsConditionsModel>
    implements $TermsConditionsModelCopyWith<$Res> {
  _$TermsConditionsModelCopyWithImpl(this._value, this._then);

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
              as Result,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResultCopyWith<$Res> get result {
    return $ResultCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TermsConditionsModelImplCopyWith<$Res>
    implements $TermsConditionsModelCopyWith<$Res> {
  factory _$$TermsConditionsModelImplCopyWith(_$TermsConditionsModelImpl value,
          $Res Function(_$TermsConditionsModelImpl) then) =
      __$$TermsConditionsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String? message, Result result});

  @override
  $ResultCopyWith<$Res> get result;
}

/// @nodoc
class __$$TermsConditionsModelImplCopyWithImpl<$Res>
    extends _$TermsConditionsModelCopyWithImpl<$Res, _$TermsConditionsModelImpl>
    implements _$$TermsConditionsModelImplCopyWith<$Res> {
  __$$TermsConditionsModelImplCopyWithImpl(_$TermsConditionsModelImpl _value,
      $Res Function(_$TermsConditionsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = freezed,
    Object? result = null,
  }) {
    return _then(_$TermsConditionsModelImpl(
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
              as Result,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TermsConditionsModelImpl implements _TermsConditionsModel {
  const _$TermsConditionsModelImpl(
      {required this.success, required this.message, required this.result});

  factory _$TermsConditionsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TermsConditionsModelImplFromJson(json);

  @override
  final bool success;
  @override
  final String? message;
  @override
  final Result result;

  @override
  String toString() {
    return 'TermsConditionsModel(success: $success, message: $message, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TermsConditionsModelImpl &&
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
  _$$TermsConditionsModelImplCopyWith<_$TermsConditionsModelImpl>
      get copyWith =>
          __$$TermsConditionsModelImplCopyWithImpl<_$TermsConditionsModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TermsConditionsModelImplToJson(
      this,
    );
  }
}

abstract class _TermsConditionsModel implements TermsConditionsModel {
  const factory _TermsConditionsModel(
      {required final bool success,
      required final String? message,
      required final Result result}) = _$TermsConditionsModelImpl;

  factory _TermsConditionsModel.fromJson(Map<String, dynamic> json) =
      _$TermsConditionsModelImpl.fromJson;

  @override
  bool get success;
  @override
  String? get message;
  @override
  Result get result;
  @override
  @JsonKey(ignore: true)
  _$$TermsConditionsModelImplCopyWith<_$TermsConditionsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
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
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
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
class _$ResultCopyWithImpl<$Res, $Val extends Result>
    implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

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
abstract class _$$ResultImplCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$ResultImplCopyWith(
          _$ResultImpl value, $Res Function(_$ResultImpl) then) =
      __$$ResultImplCopyWithImpl<$Res>;
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
class __$$ResultImplCopyWithImpl<$Res>
    extends _$ResultCopyWithImpl<$Res, _$ResultImpl>
    implements _$$ResultImplCopyWith<$Res> {
  __$$ResultImplCopyWithImpl(
      _$ResultImpl _value, $Res Function(_$ResultImpl) _then)
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
    return _then(_$ResultImpl(
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
class _$ResultImpl implements _Result {
  const _$ResultImpl(
      {required this.id,
      required this.parentId,
      required this.type,
      required this.name,
      required this.title,
      required this.content});

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

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
    return 'Result(id: $id, parentId: $parentId, type: $type, name: $name, title: $title, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultImpl &&
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
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      __$$ResultImplCopyWithImpl<_$ResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultImplToJson(
      this,
    );
  }
}

abstract class _Result implements Result {
  const factory _Result(
      {required final int id,
      required final int? parentId,
      required final String type,
      required final String name,
      required final String title,
      required final String content}) = _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

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
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
