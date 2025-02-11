// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_user_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateUserDetail _$UpdateUserDetailFromJson(Map<String, dynamic> json) {
  return _UpdateUserDetail.fromJson(json);
}

/// @nodoc
mixin _$UpdateUserDetail {
  @JsonKey(name: 'success')
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'result')
  UserDetailResult? get result => throw _privateConstructorUsedError;

  /// Serializes this UpdateUserDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateUserDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateUserDetailCopyWith<UpdateUserDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUserDetailCopyWith<$Res> {
  factory $UpdateUserDetailCopyWith(
          UpdateUserDetail value, $Res Function(UpdateUserDetail) then) =
      _$UpdateUserDetailCopyWithImpl<$Res, UpdateUserDetail>;
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'result') UserDetailResult? result});

  $UserDetailResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$UpdateUserDetailCopyWithImpl<$Res, $Val extends UpdateUserDetail>
    implements $UpdateUserDetailCopyWith<$Res> {
  _$UpdateUserDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateUserDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as UserDetailResult?,
    ) as $Val);
  }

  /// Create a copy of UpdateUserDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDetailResultCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $UserDetailResultCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UpdateUserDetailImplCopyWith<$Res>
    implements $UpdateUserDetailCopyWith<$Res> {
  factory _$$UpdateUserDetailImplCopyWith(_$UpdateUserDetailImpl value,
          $Res Function(_$UpdateUserDetailImpl) then) =
      __$$UpdateUserDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'result') UserDetailResult? result});

  @override
  $UserDetailResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$UpdateUserDetailImplCopyWithImpl<$Res>
    extends _$UpdateUserDetailCopyWithImpl<$Res, _$UpdateUserDetailImpl>
    implements _$$UpdateUserDetailImplCopyWith<$Res> {
  __$$UpdateUserDetailImplCopyWithImpl(_$UpdateUserDetailImpl _value,
      $Res Function(_$UpdateUserDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateUserDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? result = freezed,
  }) {
    return _then(_$UpdateUserDetailImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as UserDetailResult?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateUserDetailImpl implements _UpdateUserDetail {
  _$UpdateUserDetailImpl(
      {@JsonKey(name: 'success') this.success,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'result') this.result});

  factory _$UpdateUserDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateUserDetailImplFromJson(json);

  @override
  @JsonKey(name: 'success')
  final bool? success;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'result')
  final UserDetailResult? result;

  @override
  String toString() {
    return 'UpdateUserDetail(success: $success, message: $message, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserDetailImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, result);

  /// Create a copy of UpdateUserDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserDetailImplCopyWith<_$UpdateUserDetailImpl> get copyWith =>
      __$$UpdateUserDetailImplCopyWithImpl<_$UpdateUserDetailImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateUserDetailImplToJson(
      this,
    );
  }
}

abstract class _UpdateUserDetail implements UpdateUserDetail {
  factory _UpdateUserDetail(
          {@JsonKey(name: 'success') final bool? success,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'result') final UserDetailResult? result}) =
      _$UpdateUserDetailImpl;

  factory _UpdateUserDetail.fromJson(Map<String, dynamic> json) =
      _$UpdateUserDetailImpl.fromJson;

  @override
  @JsonKey(name: 'success')
  bool? get success;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'result')
  UserDetailResult? get result;

  /// Create a copy of UpdateUserDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateUserDetailImplCopyWith<_$UpdateUserDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserDetailResult _$UserDetailResultFromJson(Map<String, dynamic> json) {
  return _UserDetailResult.fromJson(json);
}

/// @nodoc
mixin _$UserDetailResult {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String? get username =>
      throw _privateConstructorUsedError; // @JsonKey(name: 'created_at_formatted') String? createdAtFormatted,
// @JsonKey(name: 'photo_url') String? photoUrl,
// @JsonKey(name: 'country_code') String? countryCode,
// @JsonKey(name: 'language_code') String? languageCode,
// @JsonKey(name: 'user_type_id') String? userTypeId,
  @JsonKey(name: 'gender_id')
  String? get genderId =>
      throw _privateConstructorUsedError; // @JsonKey(name: 'photo') String? photo,
// @JsonKey(name: 'about') String? about,
  @JsonKey(name: 'phone')
  String? get phone =>
      throw _privateConstructorUsedError; // @JsonKey(name: 'phone_hidden') int? phoneHidden,
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'dob')
  String? get dob => throw _privateConstructorUsedError;
  @JsonKey(name: 'gender')
  String? get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'password')
  String? get password => throw _privateConstructorUsedError;

  /// Serializes this UserDetailResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserDetailResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserDetailResultCopyWith<UserDetailResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailResultCopyWith<$Res> {
  factory $UserDetailResultCopyWith(
          UserDetailResult value, $Res Function(UserDetailResult) then) =
      _$UserDetailResultCopyWithImpl<$Res, UserDetailResult>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'gender_id') String? genderId,
      @JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'dob') String? dob,
      @JsonKey(name: 'gender') String? gender,
      @JsonKey(name: 'password') String? password});
}

/// @nodoc
class _$UserDetailResultCopyWithImpl<$Res, $Val extends UserDetailResult>
    implements $UserDetailResultCopyWith<$Res> {
  _$UserDetailResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserDetailResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? username = freezed,
    Object? genderId = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? dob = freezed,
    Object? gender = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      genderId: freezed == genderId
          ? _value.genderId
          : genderId // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDetailResultImplCopyWith<$Res>
    implements $UserDetailResultCopyWith<$Res> {
  factory _$$UserDetailResultImplCopyWith(_$UserDetailResultImpl value,
          $Res Function(_$UserDetailResultImpl) then) =
      __$$UserDetailResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'gender_id') String? genderId,
      @JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'dob') String? dob,
      @JsonKey(name: 'gender') String? gender,
      @JsonKey(name: 'password') String? password});
}

/// @nodoc
class __$$UserDetailResultImplCopyWithImpl<$Res>
    extends _$UserDetailResultCopyWithImpl<$Res, _$UserDetailResultImpl>
    implements _$$UserDetailResultImplCopyWith<$Res> {
  __$$UserDetailResultImplCopyWithImpl(_$UserDetailResultImpl _value,
      $Res Function(_$UserDetailResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserDetailResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? username = freezed,
    Object? genderId = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? dob = freezed,
    Object? gender = freezed,
    Object? password = freezed,
  }) {
    return _then(_$UserDetailResultImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      genderId: freezed == genderId
          ? _value.genderId
          : genderId // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDetailResultImpl implements _UserDetailResult {
  _$UserDetailResultImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'username') this.username,
      @JsonKey(name: 'gender_id') this.genderId,
      @JsonKey(name: 'phone') this.phone,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'dob') this.dob,
      @JsonKey(name: 'gender') this.gender,
      @JsonKey(name: 'password') this.password});

  factory _$UserDetailResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDetailResultImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'username')
  final String? username;
// @JsonKey(name: 'created_at_formatted') String? createdAtFormatted,
// @JsonKey(name: 'photo_url') String? photoUrl,
// @JsonKey(name: 'country_code') String? countryCode,
// @JsonKey(name: 'language_code') String? languageCode,
// @JsonKey(name: 'user_type_id') String? userTypeId,
  @override
  @JsonKey(name: 'gender_id')
  final String? genderId;
// @JsonKey(name: 'photo') String? photo,
// @JsonKey(name: 'about') String? about,
  @override
  @JsonKey(name: 'phone')
  final String? phone;
// @JsonKey(name: 'phone_hidden') int? phoneHidden,
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'dob')
  final String? dob;
  @override
  @JsonKey(name: 'gender')
  final String? gender;
  @override
  @JsonKey(name: 'password')
  final String? password;

  @override
  String toString() {
    return 'UserDetailResult(id: $id, name: $name, username: $username, genderId: $genderId, phone: $phone, email: $email, dob: $dob, gender: $gender, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDetailResultImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.genderId, genderId) ||
                other.genderId == genderId) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.dob, dob) || other.dob == dob) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, username, genderId,
      phone, email, dob, gender, password);

  /// Create a copy of UserDetailResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDetailResultImplCopyWith<_$UserDetailResultImpl> get copyWith =>
      __$$UserDetailResultImplCopyWithImpl<_$UserDetailResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDetailResultImplToJson(
      this,
    );
  }
}

abstract class _UserDetailResult implements UserDetailResult {
  factory _UserDetailResult(
          {@JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'username') final String? username,
          @JsonKey(name: 'gender_id') final String? genderId,
          @JsonKey(name: 'phone') final String? phone,
          @JsonKey(name: 'email') final String? email,
          @JsonKey(name: 'dob') final String? dob,
          @JsonKey(name: 'gender') final String? gender,
          @JsonKey(name: 'password') final String? password}) =
      _$UserDetailResultImpl;

  factory _UserDetailResult.fromJson(Map<String, dynamic> json) =
      _$UserDetailResultImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'username')
  String?
      get username; // @JsonKey(name: 'created_at_formatted') String? createdAtFormatted,
// @JsonKey(name: 'photo_url') String? photoUrl,
// @JsonKey(name: 'country_code') String? countryCode,
// @JsonKey(name: 'language_code') String? languageCode,
// @JsonKey(name: 'user_type_id') String? userTypeId,
  @override
  @JsonKey(name: 'gender_id')
  String? get genderId; // @JsonKey(name: 'photo') String? photo,
// @JsonKey(name: 'about') String? about,
  @override
  @JsonKey(name: 'phone')
  String? get phone; // @JsonKey(name: 'phone_hidden') int? phoneHidden,
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'dob')
  String? get dob;
  @override
  @JsonKey(name: 'gender')
  String? get gender;
  @override
  @JsonKey(name: 'password')
  String? get password;

  /// Create a copy of UserDetailResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserDetailResultImplCopyWith<_$UserDetailResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SendPhoneVerification _$SendPhoneVerificationFromJson(
    Map<String, dynamic> json) {
  return _SendPhoneVerification.fromJson(json);
}

/// @nodoc
mixin _$SendPhoneVerification {
  @JsonKey(name: 'success')
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'phoneVerificationSent')
  bool? get phoneVerificationSent => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this SendPhoneVerification to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SendPhoneVerification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SendPhoneVerificationCopyWith<SendPhoneVerification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendPhoneVerificationCopyWith<$Res> {
  factory $SendPhoneVerificationCopyWith(SendPhoneVerification value,
          $Res Function(SendPhoneVerification) then) =
      _$SendPhoneVerificationCopyWithImpl<$Res, SendPhoneVerification>;
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'phoneVerificationSent') bool? phoneVerificationSent,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class _$SendPhoneVerificationCopyWithImpl<$Res,
        $Val extends SendPhoneVerification>
    implements $SendPhoneVerificationCopyWith<$Res> {
  _$SendPhoneVerificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SendPhoneVerification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? phoneVerificationSent = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      phoneVerificationSent: freezed == phoneVerificationSent
          ? _value.phoneVerificationSent
          : phoneVerificationSent // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendPhoneVerificationImplCopyWith<$Res>
    implements $SendPhoneVerificationCopyWith<$Res> {
  factory _$$SendPhoneVerificationImplCopyWith(
          _$SendPhoneVerificationImpl value,
          $Res Function(_$SendPhoneVerificationImpl) then) =
      __$$SendPhoneVerificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'phoneVerificationSent') bool? phoneVerificationSent,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class __$$SendPhoneVerificationImplCopyWithImpl<$Res>
    extends _$SendPhoneVerificationCopyWithImpl<$Res,
        _$SendPhoneVerificationImpl>
    implements _$$SendPhoneVerificationImplCopyWith<$Res> {
  __$$SendPhoneVerificationImplCopyWithImpl(_$SendPhoneVerificationImpl _value,
      $Res Function(_$SendPhoneVerificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of SendPhoneVerification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? phoneVerificationSent = freezed,
    Object? message = freezed,
  }) {
    return _then(_$SendPhoneVerificationImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      phoneVerificationSent: freezed == phoneVerificationSent
          ? _value.phoneVerificationSent
          : phoneVerificationSent // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SendPhoneVerificationImpl implements _SendPhoneVerification {
  _$SendPhoneVerificationImpl(
      {@JsonKey(name: 'success') this.success,
      @JsonKey(name: 'phoneVerificationSent') this.phoneVerificationSent,
      @JsonKey(name: 'message') this.message});

  factory _$SendPhoneVerificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendPhoneVerificationImplFromJson(json);

  @override
  @JsonKey(name: 'success')
  final bool? success;
  @override
  @JsonKey(name: 'phoneVerificationSent')
  final bool? phoneVerificationSent;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'SendPhoneVerification(success: $success, phoneVerificationSent: $phoneVerificationSent, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendPhoneVerificationImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.phoneVerificationSent, phoneVerificationSent) ||
                other.phoneVerificationSent == phoneVerificationSent) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, success, phoneVerificationSent, message);

  /// Create a copy of SendPhoneVerification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendPhoneVerificationImplCopyWith<_$SendPhoneVerificationImpl>
      get copyWith => __$$SendPhoneVerificationImplCopyWithImpl<
          _$SendPhoneVerificationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendPhoneVerificationImplToJson(
      this,
    );
  }
}

abstract class _SendPhoneVerification implements SendPhoneVerification {
  factory _SendPhoneVerification(
      {@JsonKey(name: 'success') final bool? success,
      @JsonKey(name: 'phoneVerificationSent') final bool? phoneVerificationSent,
      @JsonKey(name: 'message')
      final String? message}) = _$SendPhoneVerificationImpl;

  factory _SendPhoneVerification.fromJson(Map<String, dynamic> json) =
      _$SendPhoneVerificationImpl.fromJson;

  @override
  @JsonKey(name: 'success')
  bool? get success;
  @override
  @JsonKey(name: 'phoneVerificationSent')
  bool? get phoneVerificationSent;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of SendPhoneVerification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendPhoneVerificationImplCopyWith<_$SendPhoneVerificationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Mail _$MailFromJson(Map<String, dynamic> json) {
  return _Mail.fromJson(json);
}

/// @nodoc
mixin _$Mail {
  @JsonKey(name: 'success')
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this Mail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Mail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MailCopyWith<Mail> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MailCopyWith<$Res> {
  factory $MailCopyWith(Mail value, $Res Function(Mail) then) =
      _$MailCopyWithImpl<$Res, Mail>;
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class _$MailCopyWithImpl<$Res, $Val extends Mail>
    implements $MailCopyWith<$Res> {
  _$MailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Mail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MailImplCopyWith<$Res> implements $MailCopyWith<$Res> {
  factory _$$MailImplCopyWith(
          _$MailImpl value, $Res Function(_$MailImpl) then) =
      __$$MailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class __$$MailImplCopyWithImpl<$Res>
    extends _$MailCopyWithImpl<$Res, _$MailImpl>
    implements _$$MailImplCopyWith<$Res> {
  __$$MailImplCopyWithImpl(_$MailImpl _value, $Res Function(_$MailImpl) _then)
      : super(_value, _then);

  /// Create a copy of Mail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
  }) {
    return _then(_$MailImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MailImpl implements _Mail {
  _$MailImpl(
      {@JsonKey(name: 'success') this.success,
      @JsonKey(name: 'message') this.message});

  factory _$MailImpl.fromJson(Map<String, dynamic> json) =>
      _$$MailImplFromJson(json);

  @override
  @JsonKey(name: 'success')
  final bool? success;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'Mail(success: $success, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MailImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message);

  /// Create a copy of Mail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MailImplCopyWith<_$MailImpl> get copyWith =>
      __$$MailImplCopyWithImpl<_$MailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MailImplToJson(
      this,
    );
  }
}

abstract class _Mail implements Mail {
  factory _Mail(
      {@JsonKey(name: 'success') final bool? success,
      @JsonKey(name: 'message') final String? message}) = _$MailImpl;

  factory _Mail.fromJson(Map<String, dynamic> json) = _$MailImpl.fromJson;

  @override
  @JsonKey(name: 'success')
  bool? get success;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of Mail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MailImplCopyWith<_$MailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
