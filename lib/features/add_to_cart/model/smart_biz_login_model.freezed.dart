// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'smart_biz_login_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BizLoginResponse _$BizLoginResponseFromJson(Map<String, dynamic> json) {
  return _BizLoginResponse.fromJson(json);
}

/// @nodoc
mixin _$BizLoginResponse {
  String? get responseCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get totalSize => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;
  int? get offset => throw _privateConstructorUsedError;
  BizLoginData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BizLoginResponseCopyWith<BizLoginResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BizLoginResponseCopyWith<$Res> {
  factory $BizLoginResponseCopyWith(
          BizLoginResponse value, $Res Function(BizLoginResponse) then) =
      _$BizLoginResponseCopyWithImpl<$Res, BizLoginResponse>;
  @useResult
  $Res call(
      {String? responseCode,
      String? message,
      int? totalSize,
      int? limit,
      int? offset,
      BizLoginData? data});

  $BizLoginDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$BizLoginResponseCopyWithImpl<$Res, $Val extends BizLoginResponse>
    implements $BizLoginResponseCopyWith<$Res> {
  _$BizLoginResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseCode = freezed,
    Object? message = freezed,
    Object? totalSize = freezed,
    Object? limit = freezed,
    Object? offset = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      responseCode: freezed == responseCode
          ? _value.responseCode
          : responseCode // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      totalSize: freezed == totalSize
          ? _value.totalSize
          : totalSize // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BizLoginData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BizLoginDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $BizLoginDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BizLoginResponseImplCopyWith<$Res>
    implements $BizLoginResponseCopyWith<$Res> {
  factory _$$BizLoginResponseImplCopyWith(_$BizLoginResponseImpl value,
          $Res Function(_$BizLoginResponseImpl) then) =
      __$$BizLoginResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? responseCode,
      String? message,
      int? totalSize,
      int? limit,
      int? offset,
      BizLoginData? data});

  @override
  $BizLoginDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$BizLoginResponseImplCopyWithImpl<$Res>
    extends _$BizLoginResponseCopyWithImpl<$Res, _$BizLoginResponseImpl>
    implements _$$BizLoginResponseImplCopyWith<$Res> {
  __$$BizLoginResponseImplCopyWithImpl(_$BizLoginResponseImpl _value,
      $Res Function(_$BizLoginResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseCode = freezed,
    Object? message = freezed,
    Object? totalSize = freezed,
    Object? limit = freezed,
    Object? offset = freezed,
    Object? data = freezed,
  }) {
    return _then(_$BizLoginResponseImpl(
      responseCode: freezed == responseCode
          ? _value.responseCode
          : responseCode // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      totalSize: freezed == totalSize
          ? _value.totalSize
          : totalSize // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BizLoginData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BizLoginResponseImpl implements _BizLoginResponse {
  const _$BizLoginResponseImpl(
      {this.responseCode,
      this.message,
      this.totalSize,
      this.limit,
      this.offset,
      this.data});

  factory _$BizLoginResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BizLoginResponseImplFromJson(json);

  @override
  final String? responseCode;
  @override
  final String? message;
  @override
  final int? totalSize;
  @override
  final int? limit;
  @override
  final int? offset;
  @override
  final BizLoginData? data;

  @override
  String toString() {
    return 'BizLoginResponse(responseCode: $responseCode, message: $message, totalSize: $totalSize, limit: $limit, offset: $offset, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BizLoginResponseImpl &&
            (identical(other.responseCode, responseCode) ||
                other.responseCode == responseCode) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.totalSize, totalSize) ||
                other.totalSize == totalSize) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, responseCode, message, totalSize, limit, offset, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BizLoginResponseImplCopyWith<_$BizLoginResponseImpl> get copyWith =>
      __$$BizLoginResponseImplCopyWithImpl<_$BizLoginResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BizLoginResponseImplToJson(
      this,
    );
  }
}

abstract class _BizLoginResponse implements BizLoginResponse {
  const factory _BizLoginResponse(
      {final String? responseCode,
      final String? message,
      final int? totalSize,
      final int? limit,
      final int? offset,
      final BizLoginData? data}) = _$BizLoginResponseImpl;

  factory _BizLoginResponse.fromJson(Map<String, dynamic> json) =
      _$BizLoginResponseImpl.fromJson;

  @override
  String? get responseCode;
  @override
  String? get message;
  @override
  int? get totalSize;
  @override
  int? get limit;
  @override
  int? get offset;
  @override
  BizLoginData? get data;
  @override
  @JsonKey(ignore: true)
  _$$BizLoginResponseImplCopyWith<_$BizLoginResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BizLoginData _$BizLoginDataFromJson(Map<String, dynamic> json) {
  return _BizLoginData.fromJson(json);
}

/// @nodoc
mixin _$BizLoginData {
  String? get token => throw _privateConstructorUsedError;
  int? get isActive => throw _privateConstructorUsedError;
  int? get isPhoneVerified => throw _privateConstructorUsedError;
  int? get isProfileVerified => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BizLoginDataCopyWith<BizLoginData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BizLoginDataCopyWith<$Res> {
  factory $BizLoginDataCopyWith(
          BizLoginData value, $Res Function(BizLoginData) then) =
      _$BizLoginDataCopyWithImpl<$Res, BizLoginData>;
  @useResult
  $Res call(
      {String? token,
      int? isActive,
      int? isPhoneVerified,
      int? isProfileVerified});
}

/// @nodoc
class _$BizLoginDataCopyWithImpl<$Res, $Val extends BizLoginData>
    implements $BizLoginDataCopyWith<$Res> {
  _$BizLoginDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? isActive = freezed,
    Object? isPhoneVerified = freezed,
    Object? isProfileVerified = freezed,
  }) {
    return _then(_value.copyWith(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as int?,
      isPhoneVerified: freezed == isPhoneVerified
          ? _value.isPhoneVerified
          : isPhoneVerified // ignore: cast_nullable_to_non_nullable
              as int?,
      isProfileVerified: freezed == isProfileVerified
          ? _value.isProfileVerified
          : isProfileVerified // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BizLoginDataImplCopyWith<$Res>
    implements $BizLoginDataCopyWith<$Res> {
  factory _$$BizLoginDataImplCopyWith(
          _$BizLoginDataImpl value, $Res Function(_$BizLoginDataImpl) then) =
      __$$BizLoginDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? token,
      int? isActive,
      int? isPhoneVerified,
      int? isProfileVerified});
}

/// @nodoc
class __$$BizLoginDataImplCopyWithImpl<$Res>
    extends _$BizLoginDataCopyWithImpl<$Res, _$BizLoginDataImpl>
    implements _$$BizLoginDataImplCopyWith<$Res> {
  __$$BizLoginDataImplCopyWithImpl(
      _$BizLoginDataImpl _value, $Res Function(_$BizLoginDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? isActive = freezed,
    Object? isPhoneVerified = freezed,
    Object? isProfileVerified = freezed,
  }) {
    return _then(_$BizLoginDataImpl(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as int?,
      isPhoneVerified: freezed == isPhoneVerified
          ? _value.isPhoneVerified
          : isPhoneVerified // ignore: cast_nullable_to_non_nullable
              as int?,
      isProfileVerified: freezed == isProfileVerified
          ? _value.isProfileVerified
          : isProfileVerified // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BizLoginDataImpl implements _BizLoginData {
  const _$BizLoginDataImpl(
      {this.token,
      this.isActive,
      this.isPhoneVerified,
      this.isProfileVerified});

  factory _$BizLoginDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$BizLoginDataImplFromJson(json);

  @override
  final String? token;
  @override
  final int? isActive;
  @override
  final int? isPhoneVerified;
  @override
  final int? isProfileVerified;

  @override
  String toString() {
    return 'BizLoginData(token: $token, isActive: $isActive, isPhoneVerified: $isPhoneVerified, isProfileVerified: $isProfileVerified)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BizLoginDataImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isPhoneVerified, isPhoneVerified) ||
                other.isPhoneVerified == isPhoneVerified) &&
            (identical(other.isProfileVerified, isProfileVerified) ||
                other.isProfileVerified == isProfileVerified));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, token, isActive, isPhoneVerified, isProfileVerified);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BizLoginDataImplCopyWith<_$BizLoginDataImpl> get copyWith =>
      __$$BizLoginDataImplCopyWithImpl<_$BizLoginDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BizLoginDataImplToJson(
      this,
    );
  }
}

abstract class _BizLoginData implements BizLoginData {
  const factory _BizLoginData(
      {final String? token,
      final int? isActive,
      final int? isPhoneVerified,
      final int? isProfileVerified}) = _$BizLoginDataImpl;

  factory _BizLoginData.fromJson(Map<String, dynamic> json) =
      _$BizLoginDataImpl.fromJson;

  @override
  String? get token;
  @override
  int? get isActive;
  @override
  int? get isPhoneVerified;
  @override
  int? get isProfileVerified;
  @override
  @JsonKey(ignore: true)
  _$$BizLoginDataImplCopyWith<_$BizLoginDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
