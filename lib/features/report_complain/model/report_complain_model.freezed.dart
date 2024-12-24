// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_complain_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReportComplainModel _$ReportComplainModelFromJson(Map<String, dynamic> json) {
  return _ReportComplainModel.fromJson(json);
}

/// @nodoc
mixin _$ReportComplainModel {
  @JsonKey(name: 'report_type_id')
  String get reportTypeId => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'captcha_key')
  String? get captchaKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReportComplainModelCopyWith<ReportComplainModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportComplainModelCopyWith<$Res> {
  factory $ReportComplainModelCopyWith(
          ReportComplainModel value, $Res Function(ReportComplainModel) then) =
      _$ReportComplainModelCopyWithImpl<$Res, ReportComplainModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'report_type_id') String reportTypeId,
      String email,
      String message,
      @JsonKey(name: 'captcha_key') String? captchaKey});
}

/// @nodoc
class _$ReportComplainModelCopyWithImpl<$Res, $Val extends ReportComplainModel>
    implements $ReportComplainModelCopyWith<$Res> {
  _$ReportComplainModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reportTypeId = null,
    Object? email = null,
    Object? message = null,
    Object? captchaKey = freezed,
  }) {
    return _then(_value.copyWith(
      reportTypeId: null == reportTypeId
          ? _value.reportTypeId
          : reportTypeId // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      captchaKey: freezed == captchaKey
          ? _value.captchaKey
          : captchaKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReportComplainModelImplCopyWith<$Res>
    implements $ReportComplainModelCopyWith<$Res> {
  factory _$$ReportComplainModelImplCopyWith(_$ReportComplainModelImpl value,
          $Res Function(_$ReportComplainModelImpl) then) =
      __$$ReportComplainModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'report_type_id') String reportTypeId,
      String email,
      String message,
      @JsonKey(name: 'captcha_key') String? captchaKey});
}

/// @nodoc
class __$$ReportComplainModelImplCopyWithImpl<$Res>
    extends _$ReportComplainModelCopyWithImpl<$Res, _$ReportComplainModelImpl>
    implements _$$ReportComplainModelImplCopyWith<$Res> {
  __$$ReportComplainModelImplCopyWithImpl(_$ReportComplainModelImpl _value,
      $Res Function(_$ReportComplainModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reportTypeId = null,
    Object? email = null,
    Object? message = null,
    Object? captchaKey = freezed,
  }) {
    return _then(_$ReportComplainModelImpl(
      reportTypeId: null == reportTypeId
          ? _value.reportTypeId
          : reportTypeId // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      captchaKey: freezed == captchaKey
          ? _value.captchaKey
          : captchaKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReportComplainModelImpl implements _ReportComplainModel {
  const _$ReportComplainModelImpl(
      {@JsonKey(name: 'report_type_id') required this.reportTypeId,
      required this.email,
      required this.message,
      @JsonKey(name: 'captcha_key') this.captchaKey});

  factory _$ReportComplainModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReportComplainModelImplFromJson(json);

  @override
  @JsonKey(name: 'report_type_id')
  final String reportTypeId;
  @override
  final String email;
  @override
  final String message;
  @override
  @JsonKey(name: 'captcha_key')
  final String? captchaKey;

  @override
  String toString() {
    return 'ReportComplainModel(reportTypeId: $reportTypeId, email: $email, message: $message, captchaKey: $captchaKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportComplainModelImpl &&
            (identical(other.reportTypeId, reportTypeId) ||
                other.reportTypeId == reportTypeId) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.captchaKey, captchaKey) ||
                other.captchaKey == captchaKey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, reportTypeId, email, message, captchaKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportComplainModelImplCopyWith<_$ReportComplainModelImpl> get copyWith =>
      __$$ReportComplainModelImplCopyWithImpl<_$ReportComplainModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReportComplainModelImplToJson(
      this,
    );
  }
}

abstract class _ReportComplainModel implements ReportComplainModel {
  const factory _ReportComplainModel(
          {@JsonKey(name: 'report_type_id') required final String reportTypeId,
          required final String email,
          required final String message,
          @JsonKey(name: 'captcha_key') final String? captchaKey}) =
      _$ReportComplainModelImpl;

  factory _ReportComplainModel.fromJson(Map<String, dynamic> json) =
      _$ReportComplainModelImpl.fromJson;

  @override
  @JsonKey(name: 'report_type_id')
  String get reportTypeId;
  @override
  String get email;
  @override
  String get message;
  @override
  @JsonKey(name: 'captcha_key')
  String? get captchaKey;
  @override
  @JsonKey(ignore: true)
  _$$ReportComplainModelImplCopyWith<_$ReportComplainModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
