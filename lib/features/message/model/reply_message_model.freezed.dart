// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reply_message_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReplyMessageModel _$ReplyMessageModelFromJson(Map<String, dynamic> json) {
  return _ReplyMessageModel.fromJson(json);
}

/// @nodoc
mixin _$ReplyMessageModel {
  bool get success => throw _privateConstructorUsedError;
  String? get message =>
      throw _privateConstructorUsedError; // nullable in case message is not returned
  ReplyResult get result => throw _privateConstructorUsedError;

  /// Serializes this ReplyMessageModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReplyMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReplyMessageModelCopyWith<ReplyMessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReplyMessageModelCopyWith<$Res> {
  factory $ReplyMessageModelCopyWith(
          ReplyMessageModel value, $Res Function(ReplyMessageModel) then) =
      _$ReplyMessageModelCopyWithImpl<$Res, ReplyMessageModel>;
  @useResult
  $Res call({bool success, String? message, ReplyResult result});

  $ReplyResultCopyWith<$Res> get result;
}

/// @nodoc
class _$ReplyMessageModelCopyWithImpl<$Res, $Val extends ReplyMessageModel>
    implements $ReplyMessageModelCopyWith<$Res> {
  _$ReplyMessageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReplyMessageModel
  /// with the given fields replaced by the non-null parameter values.
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
              as ReplyResult,
    ) as $Val);
  }

  /// Create a copy of ReplyMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReplyResultCopyWith<$Res> get result {
    return $ReplyResultCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReplyMessageModelImplCopyWith<$Res>
    implements $ReplyMessageModelCopyWith<$Res> {
  factory _$$ReplyMessageModelImplCopyWith(_$ReplyMessageModelImpl value,
          $Res Function(_$ReplyMessageModelImpl) then) =
      __$$ReplyMessageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String? message, ReplyResult result});

  @override
  $ReplyResultCopyWith<$Res> get result;
}

/// @nodoc
class __$$ReplyMessageModelImplCopyWithImpl<$Res>
    extends _$ReplyMessageModelCopyWithImpl<$Res, _$ReplyMessageModelImpl>
    implements _$$ReplyMessageModelImplCopyWith<$Res> {
  __$$ReplyMessageModelImplCopyWithImpl(_$ReplyMessageModelImpl _value,
      $Res Function(_$ReplyMessageModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReplyMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = freezed,
    Object? result = null,
  }) {
    return _then(_$ReplyMessageModelImpl(
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
              as ReplyResult,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReplyMessageModelImpl
    with DiagnosticableTreeMixin
    implements _ReplyMessageModel {
  const _$ReplyMessageModelImpl(
      {required this.success, this.message, required this.result});

  factory _$ReplyMessageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReplyMessageModelImplFromJson(json);

  @override
  final bool success;
  @override
  final String? message;
// nullable in case message is not returned
  @override
  final ReplyResult result;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ReplyMessageModel(success: $success, message: $message, result: $result)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ReplyMessageModel'))
      ..add(DiagnosticsProperty('success', success))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('result', result));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReplyMessageModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, result);

  /// Create a copy of ReplyMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReplyMessageModelImplCopyWith<_$ReplyMessageModelImpl> get copyWith =>
      __$$ReplyMessageModelImplCopyWithImpl<_$ReplyMessageModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReplyMessageModelImplToJson(
      this,
    );
  }
}

abstract class _ReplyMessageModel implements ReplyMessageModel {
  const factory _ReplyMessageModel(
      {required final bool success,
      final String? message,
      required final ReplyResult result}) = _$ReplyMessageModelImpl;

  factory _ReplyMessageModel.fromJson(Map<String, dynamic> json) =
      _$ReplyMessageModelImpl.fromJson;

  @override
  bool get success;
  @override
  String? get message; // nullable in case message is not returned
  @override
  ReplyResult get result;

  /// Create a copy of ReplyMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReplyMessageModelImplCopyWith<_$ReplyMessageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReplyResult _$ReplyResultFromJson(Map<String, dynamic> json) {
  return _ReplyResult.fromJson(json);
}

/// @nodoc
mixin _$ReplyResult {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'post_id')
  String get postId => throw _privateConstructorUsedError;
  String get subject => throw _privateConstructorUsedError;

  /// Serializes this ReplyResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReplyResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReplyResultCopyWith<ReplyResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReplyResultCopyWith<$Res> {
  factory $ReplyResultCopyWith(
          ReplyResult value, $Res Function(ReplyResult) then) =
      _$ReplyResultCopyWithImpl<$Res, ReplyResult>;
  @useResult
  $Res call({int id, @JsonKey(name: 'post_id') String postId, String subject});
}

/// @nodoc
class _$ReplyResultCopyWithImpl<$Res, $Val extends ReplyResult>
    implements $ReplyResultCopyWith<$Res> {
  _$ReplyResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReplyResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? postId = null,
    Object? subject = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReplyResultImplCopyWith<$Res>
    implements $ReplyResultCopyWith<$Res> {
  factory _$$ReplyResultImplCopyWith(
          _$ReplyResultImpl value, $Res Function(_$ReplyResultImpl) then) =
      __$$ReplyResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, @JsonKey(name: 'post_id') String postId, String subject});
}

/// @nodoc
class __$$ReplyResultImplCopyWithImpl<$Res>
    extends _$ReplyResultCopyWithImpl<$Res, _$ReplyResultImpl>
    implements _$$ReplyResultImplCopyWith<$Res> {
  __$$ReplyResultImplCopyWithImpl(
      _$ReplyResultImpl _value, $Res Function(_$ReplyResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReplyResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? postId = null,
    Object? subject = null,
  }) {
    return _then(_$ReplyResultImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReplyResultImpl with DiagnosticableTreeMixin implements _ReplyResult {
  const _$ReplyResultImpl(
      {required this.id,
      @JsonKey(name: 'post_id') required this.postId,
      required this.subject});

  factory _$ReplyResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReplyResultImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'post_id')
  final String postId;
  @override
  final String subject;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ReplyResult(id: $id, postId: $postId, subject: $subject)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ReplyResult'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('postId', postId))
      ..add(DiagnosticsProperty('subject', subject));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReplyResultImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.subject, subject) || other.subject == subject));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, postId, subject);

  /// Create a copy of ReplyResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReplyResultImplCopyWith<_$ReplyResultImpl> get copyWith =>
      __$$ReplyResultImplCopyWithImpl<_$ReplyResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReplyResultImplToJson(
      this,
    );
  }
}

abstract class _ReplyResult implements ReplyResult {
  const factory _ReplyResult(
      {required final int id,
      @JsonKey(name: 'post_id') required final String postId,
      required final String subject}) = _$ReplyResultImpl;

  factory _ReplyResult.fromJson(Map<String, dynamic> json) =
      _$ReplyResultImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'post_id')
  String get postId;
  @override
  String get subject;

  /// Create a copy of ReplyResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReplyResultImplCopyWith<_$ReplyResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
