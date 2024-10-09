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
  @JsonKey(name: 'extra')
  Extra? get extra => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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
      @JsonKey(name: 'result') UserDetailResult? result,
      @JsonKey(name: 'extra') Extra? extra});

  $UserDetailResultCopyWith<$Res>? get result;
  $ExtraCopyWith<$Res>? get extra;
}

/// @nodoc
class _$UpdateUserDetailCopyWithImpl<$Res, $Val extends UpdateUserDetail>
    implements $UpdateUserDetailCopyWith<$Res> {
  _$UpdateUserDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? result = freezed,
    Object? extra = freezed,
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
      extra: freezed == extra
          ? _value.extra
          : extra // ignore: cast_nullable_to_non_nullable
              as Extra?,
    ) as $Val);
  }

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

  @override
  @pragma('vm:prefer-inline')
  $ExtraCopyWith<$Res>? get extra {
    if (_value.extra == null) {
      return null;
    }

    return $ExtraCopyWith<$Res>(_value.extra!, (value) {
      return _then(_value.copyWith(extra: value) as $Val);
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
      @JsonKey(name: 'result') UserDetailResult? result,
      @JsonKey(name: 'extra') Extra? extra});

  @override
  $UserDetailResultCopyWith<$Res>? get result;
  @override
  $ExtraCopyWith<$Res>? get extra;
}

/// @nodoc
class __$$UpdateUserDetailImplCopyWithImpl<$Res>
    extends _$UpdateUserDetailCopyWithImpl<$Res, _$UpdateUserDetailImpl>
    implements _$$UpdateUserDetailImplCopyWith<$Res> {
  __$$UpdateUserDetailImplCopyWithImpl(_$UpdateUserDetailImpl _value,
      $Res Function(_$UpdateUserDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? result = freezed,
    Object? extra = freezed,
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
      extra: freezed == extra
          ? _value.extra
          : extra // ignore: cast_nullable_to_non_nullable
              as Extra?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateUserDetailImpl implements _UpdateUserDetail {
  _$UpdateUserDetailImpl(
      {@JsonKey(name: 'success') this.success,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'result') this.result,
      @JsonKey(name: 'extra') this.extra});

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
  @JsonKey(name: 'extra')
  final Extra? extra;

  @override
  String toString() {
    return 'UpdateUserDetail(success: $success, message: $message, result: $result, extra: $extra)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserDetailImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.extra, extra) || other.extra == extra));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, result, extra);

  @JsonKey(ignore: true)
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
      @JsonKey(name: 'result') final UserDetailResult? result,
      @JsonKey(name: 'extra') final Extra? extra}) = _$UpdateUserDetailImpl;

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
  @override
  @JsonKey(name: 'extra')
  Extra? get extra;
  @override
  @JsonKey(ignore: true)
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
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at_formatted')
  String? get createdAtFormatted => throw _privateConstructorUsedError;
  @JsonKey(name: 'photo_url')
  String? get photoUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'country_code')
  String? get countryCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'language_code')
  String? get languageCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_type_id')
  String? get userTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'gender_id')
  String? get genderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'photo')
  String? get photo => throw _privateConstructorUsedError;
  @JsonKey(name: 'about')
  String? get about => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_hidden')
  int? get phoneHidden => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'dob')
  String? get dob => throw _privateConstructorUsedError;
  @JsonKey(name: 'gender')
  String? get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'password')
  String? get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'remember_token')
  String? get rememberToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'can_be_impersonate')
  String? get canBeImpersonate => throw _privateConstructorUsedError;
  @JsonKey(name: 'disable_comments')
  int? get disableComments => throw _privateConstructorUsedError;
  @JsonKey(name: 'ip_addr')
  String? get ipAddr => throw _privateConstructorUsedError;
  @JsonKey(name: 'provider')
  String? get provider => throw _privateConstructorUsedError;
  @JsonKey(name: 'provider_id')
  String? get providerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'email_token')
  String? get emailToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_token')
  int? get phoneToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'verified_email')
  String? get verifiedEmail => throw _privateConstructorUsedError;
  @JsonKey(name: 'verified_phone')
  int? get verifiedPhone => throw _privateConstructorUsedError;
  @JsonKey(name: 'accept_terms')
  String? get acceptTerms => throw _privateConstructorUsedError;
  @JsonKey(name: 'accept_marketing_offers')
  int? get acceptMarketingOffers => throw _privateConstructorUsedError;
  @JsonKey(name: 'time_zone')
  String? get timeZone => throw _privateConstructorUsedError;
  @JsonKey(name: 'blocked')
  String? get blocked => throw _privateConstructorUsedError;
  @JsonKey(name: 'ims')
  String? get ims => throw _privateConstructorUsedError;
  @JsonKey(name: 'closed')
  String? get closed => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_activity')
  String? get lastActivity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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
      @JsonKey(name: 'created_at_formatted') String? createdAtFormatted,
      @JsonKey(name: 'photo_url') String? photoUrl,
      @JsonKey(name: 'country_code') String? countryCode,
      @JsonKey(name: 'language_code') String? languageCode,
      @JsonKey(name: 'user_type_id') String? userTypeId,
      @JsonKey(name: 'gender_id') String? genderId,
      @JsonKey(name: 'photo') String? photo,
      @JsonKey(name: 'about') String? about,
      @JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'phone_hidden') int? phoneHidden,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'dob') String? dob,
      @JsonKey(name: 'gender') String? gender,
      @JsonKey(name: 'password') String? password,
      @JsonKey(name: 'remember_token') String? rememberToken,
      @JsonKey(name: 'can_be_impersonate') String? canBeImpersonate,
      @JsonKey(name: 'disable_comments') int? disableComments,
      @JsonKey(name: 'ip_addr') String? ipAddr,
      @JsonKey(name: 'provider') String? provider,
      @JsonKey(name: 'provider_id') String? providerId,
      @JsonKey(name: 'email_token') String? emailToken,
      @JsonKey(name: 'phone_token') int? phoneToken,
      @JsonKey(name: 'verified_email') String? verifiedEmail,
      @JsonKey(name: 'verified_phone') int? verifiedPhone,
      @JsonKey(name: 'accept_terms') String? acceptTerms,
      @JsonKey(name: 'accept_marketing_offers') int? acceptMarketingOffers,
      @JsonKey(name: 'time_zone') String? timeZone,
      @JsonKey(name: 'blocked') String? blocked,
      @JsonKey(name: 'ims') String? ims,
      @JsonKey(name: 'closed') String? closed,
      @JsonKey(name: 'last_activity') String? lastActivity});
}

/// @nodoc
class _$UserDetailResultCopyWithImpl<$Res, $Val extends UserDetailResult>
    implements $UserDetailResultCopyWith<$Res> {
  _$UserDetailResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? username = freezed,
    Object? createdAtFormatted = freezed,
    Object? photoUrl = freezed,
    Object? countryCode = freezed,
    Object? languageCode = freezed,
    Object? userTypeId = freezed,
    Object? genderId = freezed,
    Object? photo = freezed,
    Object? about = freezed,
    Object? phone = freezed,
    Object? phoneHidden = freezed,
    Object? email = freezed,
    Object? dob = freezed,
    Object? gender = freezed,
    Object? password = freezed,
    Object? rememberToken = freezed,
    Object? canBeImpersonate = freezed,
    Object? disableComments = freezed,
    Object? ipAddr = freezed,
    Object? provider = freezed,
    Object? providerId = freezed,
    Object? emailToken = freezed,
    Object? phoneToken = freezed,
    Object? verifiedEmail = freezed,
    Object? verifiedPhone = freezed,
    Object? acceptTerms = freezed,
    Object? acceptMarketingOffers = freezed,
    Object? timeZone = freezed,
    Object? blocked = freezed,
    Object? ims = freezed,
    Object? closed = freezed,
    Object? lastActivity = freezed,
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
      createdAtFormatted: freezed == createdAtFormatted
          ? _value.createdAtFormatted
          : createdAtFormatted // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      languageCode: freezed == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String?,
      userTypeId: freezed == userTypeId
          ? _value.userTypeId
          : userTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      genderId: freezed == genderId
          ? _value.genderId
          : genderId // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      about: freezed == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneHidden: freezed == phoneHidden
          ? _value.phoneHidden
          : phoneHidden // ignore: cast_nullable_to_non_nullable
              as int?,
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
      rememberToken: freezed == rememberToken
          ? _value.rememberToken
          : rememberToken // ignore: cast_nullable_to_non_nullable
              as String?,
      canBeImpersonate: freezed == canBeImpersonate
          ? _value.canBeImpersonate
          : canBeImpersonate // ignore: cast_nullable_to_non_nullable
              as String?,
      disableComments: freezed == disableComments
          ? _value.disableComments
          : disableComments // ignore: cast_nullable_to_non_nullable
              as int?,
      ipAddr: freezed == ipAddr
          ? _value.ipAddr
          : ipAddr // ignore: cast_nullable_to_non_nullable
              as String?,
      provider: freezed == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String?,
      providerId: freezed == providerId
          ? _value.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as String?,
      emailToken: freezed == emailToken
          ? _value.emailToken
          : emailToken // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneToken: freezed == phoneToken
          ? _value.phoneToken
          : phoneToken // ignore: cast_nullable_to_non_nullable
              as int?,
      verifiedEmail: freezed == verifiedEmail
          ? _value.verifiedEmail
          : verifiedEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      verifiedPhone: freezed == verifiedPhone
          ? _value.verifiedPhone
          : verifiedPhone // ignore: cast_nullable_to_non_nullable
              as int?,
      acceptTerms: freezed == acceptTerms
          ? _value.acceptTerms
          : acceptTerms // ignore: cast_nullable_to_non_nullable
              as String?,
      acceptMarketingOffers: freezed == acceptMarketingOffers
          ? _value.acceptMarketingOffers
          : acceptMarketingOffers // ignore: cast_nullable_to_non_nullable
              as int?,
      timeZone: freezed == timeZone
          ? _value.timeZone
          : timeZone // ignore: cast_nullable_to_non_nullable
              as String?,
      blocked: freezed == blocked
          ? _value.blocked
          : blocked // ignore: cast_nullable_to_non_nullable
              as String?,
      ims: freezed == ims
          ? _value.ims
          : ims // ignore: cast_nullable_to_non_nullable
              as String?,
      closed: freezed == closed
          ? _value.closed
          : closed // ignore: cast_nullable_to_non_nullable
              as String?,
      lastActivity: freezed == lastActivity
          ? _value.lastActivity
          : lastActivity // ignore: cast_nullable_to_non_nullable
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
      @JsonKey(name: 'created_at_formatted') String? createdAtFormatted,
      @JsonKey(name: 'photo_url') String? photoUrl,
      @JsonKey(name: 'country_code') String? countryCode,
      @JsonKey(name: 'language_code') String? languageCode,
      @JsonKey(name: 'user_type_id') String? userTypeId,
      @JsonKey(name: 'gender_id') String? genderId,
      @JsonKey(name: 'photo') String? photo,
      @JsonKey(name: 'about') String? about,
      @JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'phone_hidden') int? phoneHidden,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'dob') String? dob,
      @JsonKey(name: 'gender') String? gender,
      @JsonKey(name: 'password') String? password,
      @JsonKey(name: 'remember_token') String? rememberToken,
      @JsonKey(name: 'can_be_impersonate') String? canBeImpersonate,
      @JsonKey(name: 'disable_comments') int? disableComments,
      @JsonKey(name: 'ip_addr') String? ipAddr,
      @JsonKey(name: 'provider') String? provider,
      @JsonKey(name: 'provider_id') String? providerId,
      @JsonKey(name: 'email_token') String? emailToken,
      @JsonKey(name: 'phone_token') int? phoneToken,
      @JsonKey(name: 'verified_email') String? verifiedEmail,
      @JsonKey(name: 'verified_phone') int? verifiedPhone,
      @JsonKey(name: 'accept_terms') String? acceptTerms,
      @JsonKey(name: 'accept_marketing_offers') int? acceptMarketingOffers,
      @JsonKey(name: 'time_zone') String? timeZone,
      @JsonKey(name: 'blocked') String? blocked,
      @JsonKey(name: 'ims') String? ims,
      @JsonKey(name: 'closed') String? closed,
      @JsonKey(name: 'last_activity') String? lastActivity});
}

/// @nodoc
class __$$UserDetailResultImplCopyWithImpl<$Res>
    extends _$UserDetailResultCopyWithImpl<$Res, _$UserDetailResultImpl>
    implements _$$UserDetailResultImplCopyWith<$Res> {
  __$$UserDetailResultImplCopyWithImpl(_$UserDetailResultImpl _value,
      $Res Function(_$UserDetailResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? username = freezed,
    Object? createdAtFormatted = freezed,
    Object? photoUrl = freezed,
    Object? countryCode = freezed,
    Object? languageCode = freezed,
    Object? userTypeId = freezed,
    Object? genderId = freezed,
    Object? photo = freezed,
    Object? about = freezed,
    Object? phone = freezed,
    Object? phoneHidden = freezed,
    Object? email = freezed,
    Object? dob = freezed,
    Object? gender = freezed,
    Object? password = freezed,
    Object? rememberToken = freezed,
    Object? canBeImpersonate = freezed,
    Object? disableComments = freezed,
    Object? ipAddr = freezed,
    Object? provider = freezed,
    Object? providerId = freezed,
    Object? emailToken = freezed,
    Object? phoneToken = freezed,
    Object? verifiedEmail = freezed,
    Object? verifiedPhone = freezed,
    Object? acceptTerms = freezed,
    Object? acceptMarketingOffers = freezed,
    Object? timeZone = freezed,
    Object? blocked = freezed,
    Object? ims = freezed,
    Object? closed = freezed,
    Object? lastActivity = freezed,
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
      createdAtFormatted: freezed == createdAtFormatted
          ? _value.createdAtFormatted
          : createdAtFormatted // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      languageCode: freezed == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String?,
      userTypeId: freezed == userTypeId
          ? _value.userTypeId
          : userTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      genderId: freezed == genderId
          ? _value.genderId
          : genderId // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      about: freezed == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneHidden: freezed == phoneHidden
          ? _value.phoneHidden
          : phoneHidden // ignore: cast_nullable_to_non_nullable
              as int?,
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
      rememberToken: freezed == rememberToken
          ? _value.rememberToken
          : rememberToken // ignore: cast_nullable_to_non_nullable
              as String?,
      canBeImpersonate: freezed == canBeImpersonate
          ? _value.canBeImpersonate
          : canBeImpersonate // ignore: cast_nullable_to_non_nullable
              as String?,
      disableComments: freezed == disableComments
          ? _value.disableComments
          : disableComments // ignore: cast_nullable_to_non_nullable
              as int?,
      ipAddr: freezed == ipAddr
          ? _value.ipAddr
          : ipAddr // ignore: cast_nullable_to_non_nullable
              as String?,
      provider: freezed == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String?,
      providerId: freezed == providerId
          ? _value.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as String?,
      emailToken: freezed == emailToken
          ? _value.emailToken
          : emailToken // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneToken: freezed == phoneToken
          ? _value.phoneToken
          : phoneToken // ignore: cast_nullable_to_non_nullable
              as int?,
      verifiedEmail: freezed == verifiedEmail
          ? _value.verifiedEmail
          : verifiedEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      verifiedPhone: freezed == verifiedPhone
          ? _value.verifiedPhone
          : verifiedPhone // ignore: cast_nullable_to_non_nullable
              as int?,
      acceptTerms: freezed == acceptTerms
          ? _value.acceptTerms
          : acceptTerms // ignore: cast_nullable_to_non_nullable
              as String?,
      acceptMarketingOffers: freezed == acceptMarketingOffers
          ? _value.acceptMarketingOffers
          : acceptMarketingOffers // ignore: cast_nullable_to_non_nullable
              as int?,
      timeZone: freezed == timeZone
          ? _value.timeZone
          : timeZone // ignore: cast_nullable_to_non_nullable
              as String?,
      blocked: freezed == blocked
          ? _value.blocked
          : blocked // ignore: cast_nullable_to_non_nullable
              as String?,
      ims: freezed == ims
          ? _value.ims
          : ims // ignore: cast_nullable_to_non_nullable
              as String?,
      closed: freezed == closed
          ? _value.closed
          : closed // ignore: cast_nullable_to_non_nullable
              as String?,
      lastActivity: freezed == lastActivity
          ? _value.lastActivity
          : lastActivity // ignore: cast_nullable_to_non_nullable
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
      @JsonKey(name: 'created_at_formatted') this.createdAtFormatted,
      @JsonKey(name: 'photo_url') this.photoUrl,
      @JsonKey(name: 'country_code') this.countryCode,
      @JsonKey(name: 'language_code') this.languageCode,
      @JsonKey(name: 'user_type_id') this.userTypeId,
      @JsonKey(name: 'gender_id') this.genderId,
      @JsonKey(name: 'photo') this.photo,
      @JsonKey(name: 'about') this.about,
      @JsonKey(name: 'phone') this.phone,
      @JsonKey(name: 'phone_hidden') this.phoneHidden,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'dob') this.dob,
      @JsonKey(name: 'gender') this.gender,
      @JsonKey(name: 'password') this.password,
      @JsonKey(name: 'remember_token') this.rememberToken,
      @JsonKey(name: 'can_be_impersonate') this.canBeImpersonate,
      @JsonKey(name: 'disable_comments') this.disableComments,
      @JsonKey(name: 'ip_addr') this.ipAddr,
      @JsonKey(name: 'provider') this.provider,
      @JsonKey(name: 'provider_id') this.providerId,
      @JsonKey(name: 'email_token') this.emailToken,
      @JsonKey(name: 'phone_token') this.phoneToken,
      @JsonKey(name: 'verified_email') this.verifiedEmail,
      @JsonKey(name: 'verified_phone') this.verifiedPhone,
      @JsonKey(name: 'accept_terms') this.acceptTerms,
      @JsonKey(name: 'accept_marketing_offers') this.acceptMarketingOffers,
      @JsonKey(name: 'time_zone') this.timeZone,
      @JsonKey(name: 'blocked') this.blocked,
      @JsonKey(name: 'ims') this.ims,
      @JsonKey(name: 'closed') this.closed,
      @JsonKey(name: 'last_activity') this.lastActivity});

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
  @override
  @JsonKey(name: 'created_at_formatted')
  final String? createdAtFormatted;
  @override
  @JsonKey(name: 'photo_url')
  final String? photoUrl;
  @override
  @JsonKey(name: 'country_code')
  final String? countryCode;
  @override
  @JsonKey(name: 'language_code')
  final String? languageCode;
  @override
  @JsonKey(name: 'user_type_id')
  final String? userTypeId;
  @override
  @JsonKey(name: 'gender_id')
  final String? genderId;
  @override
  @JsonKey(name: 'photo')
  final String? photo;
  @override
  @JsonKey(name: 'about')
  final String? about;
  @override
  @JsonKey(name: 'phone')
  final String? phone;
  @override
  @JsonKey(name: 'phone_hidden')
  final int? phoneHidden;
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
  @JsonKey(name: 'remember_token')
  final String? rememberToken;
  @override
  @JsonKey(name: 'can_be_impersonate')
  final String? canBeImpersonate;
  @override
  @JsonKey(name: 'disable_comments')
  final int? disableComments;
  @override
  @JsonKey(name: 'ip_addr')
  final String? ipAddr;
  @override
  @JsonKey(name: 'provider')
  final String? provider;
  @override
  @JsonKey(name: 'provider_id')
  final String? providerId;
  @override
  @JsonKey(name: 'email_token')
  final String? emailToken;
  @override
  @JsonKey(name: 'phone_token')
  final int? phoneToken;
  @override
  @JsonKey(name: 'verified_email')
  final String? verifiedEmail;
  @override
  @JsonKey(name: 'verified_phone')
  final int? verifiedPhone;
  @override
  @JsonKey(name: 'accept_terms')
  final String? acceptTerms;
  @override
  @JsonKey(name: 'accept_marketing_offers')
  final int? acceptMarketingOffers;
  @override
  @JsonKey(name: 'time_zone')
  final String? timeZone;
  @override
  @JsonKey(name: 'blocked')
  final String? blocked;
  @override
  @JsonKey(name: 'ims')
  final String? ims;
  @override
  @JsonKey(name: 'closed')
  final String? closed;
  @override
  @JsonKey(name: 'last_activity')
  final String? lastActivity;

  @override
  String toString() {
    return 'UserDetailResult(id: $id, name: $name, username: $username, createdAtFormatted: $createdAtFormatted, photoUrl: $photoUrl, countryCode: $countryCode, languageCode: $languageCode, userTypeId: $userTypeId, genderId: $genderId, photo: $photo, about: $about, phone: $phone, phoneHidden: $phoneHidden, email: $email, dob: $dob, gender: $gender, password: $password, rememberToken: $rememberToken, canBeImpersonate: $canBeImpersonate, disableComments: $disableComments, ipAddr: $ipAddr, provider: $provider, providerId: $providerId, emailToken: $emailToken, phoneToken: $phoneToken, verifiedEmail: $verifiedEmail, verifiedPhone: $verifiedPhone, acceptTerms: $acceptTerms, acceptMarketingOffers: $acceptMarketingOffers, timeZone: $timeZone, blocked: $blocked, ims: $ims, closed: $closed, lastActivity: $lastActivity)';
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
            (identical(other.createdAtFormatted, createdAtFormatted) ||
                other.createdAtFormatted == createdAtFormatted) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.languageCode, languageCode) ||
                other.languageCode == languageCode) &&
            (identical(other.userTypeId, userTypeId) ||
                other.userTypeId == userTypeId) &&
            (identical(other.genderId, genderId) ||
                other.genderId == genderId) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.about, about) || other.about == about) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.phoneHidden, phoneHidden) ||
                other.phoneHidden == phoneHidden) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.dob, dob) || other.dob == dob) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.rememberToken, rememberToken) ||
                other.rememberToken == rememberToken) &&
            (identical(other.canBeImpersonate, canBeImpersonate) ||
                other.canBeImpersonate == canBeImpersonate) &&
            (identical(other.disableComments, disableComments) ||
                other.disableComments == disableComments) &&
            (identical(other.ipAddr, ipAddr) || other.ipAddr == ipAddr) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.providerId, providerId) ||
                other.providerId == providerId) &&
            (identical(other.emailToken, emailToken) ||
                other.emailToken == emailToken) &&
            (identical(other.phoneToken, phoneToken) ||
                other.phoneToken == phoneToken) &&
            (identical(other.verifiedEmail, verifiedEmail) ||
                other.verifiedEmail == verifiedEmail) &&
            (identical(other.verifiedPhone, verifiedPhone) ||
                other.verifiedPhone == verifiedPhone) &&
            (identical(other.acceptTerms, acceptTerms) ||
                other.acceptTerms == acceptTerms) &&
            (identical(other.acceptMarketingOffers, acceptMarketingOffers) ||
                other.acceptMarketingOffers == acceptMarketingOffers) &&
            (identical(other.timeZone, timeZone) ||
                other.timeZone == timeZone) &&
            (identical(other.blocked, blocked) || other.blocked == blocked) &&
            (identical(other.ims, ims) || other.ims == ims) &&
            (identical(other.closed, closed) || other.closed == closed) &&
            (identical(other.lastActivity, lastActivity) ||
                other.lastActivity == lastActivity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        username,
        createdAtFormatted,
        photoUrl,
        countryCode,
        languageCode,
        userTypeId,
        genderId,
        photo,
        about,
        phone,
        phoneHidden,
        email,
        dob,
        gender,
        password,
        rememberToken,
        canBeImpersonate,
        disableComments,
        ipAddr,
        provider,
        providerId,
        emailToken,
        phoneToken,
        verifiedEmail,
        verifiedPhone,
        acceptTerms,
        acceptMarketingOffers,
        timeZone,
        blocked,
        ims,
        closed,
        lastActivity
      ]);

  @JsonKey(ignore: true)
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
      @JsonKey(name: 'created_at_formatted') final String? createdAtFormatted,
      @JsonKey(name: 'photo_url') final String? photoUrl,
      @JsonKey(name: 'country_code') final String? countryCode,
      @JsonKey(name: 'language_code') final String? languageCode,
      @JsonKey(name: 'user_type_id') final String? userTypeId,
      @JsonKey(name: 'gender_id') final String? genderId,
      @JsonKey(name: 'photo') final String? photo,
      @JsonKey(name: 'about') final String? about,
      @JsonKey(name: 'phone') final String? phone,
      @JsonKey(name: 'phone_hidden') final int? phoneHidden,
      @JsonKey(name: 'email') final String? email,
      @JsonKey(name: 'dob') final String? dob,
      @JsonKey(name: 'gender') final String? gender,
      @JsonKey(name: 'password') final String? password,
      @JsonKey(name: 'remember_token') final String? rememberToken,
      @JsonKey(name: 'can_be_impersonate') final String? canBeImpersonate,
      @JsonKey(name: 'disable_comments') final int? disableComments,
      @JsonKey(name: 'ip_addr') final String? ipAddr,
      @JsonKey(name: 'provider') final String? provider,
      @JsonKey(name: 'provider_id') final String? providerId,
      @JsonKey(name: 'email_token') final String? emailToken,
      @JsonKey(name: 'phone_token') final int? phoneToken,
      @JsonKey(name: 'verified_email') final String? verifiedEmail,
      @JsonKey(name: 'verified_phone') final int? verifiedPhone,
      @JsonKey(name: 'accept_terms') final String? acceptTerms,
      @JsonKey(name: 'accept_marketing_offers')
      final int? acceptMarketingOffers,
      @JsonKey(name: 'time_zone') final String? timeZone,
      @JsonKey(name: 'blocked') final String? blocked,
      @JsonKey(name: 'ims') final String? ims,
      @JsonKey(name: 'closed') final String? closed,
      @JsonKey(name: 'last_activity')
      final String? lastActivity}) = _$UserDetailResultImpl;

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
  String? get username;
  @override
  @JsonKey(name: 'created_at_formatted')
  String? get createdAtFormatted;
  @override
  @JsonKey(name: 'photo_url')
  String? get photoUrl;
  @override
  @JsonKey(name: 'country_code')
  String? get countryCode;
  @override
  @JsonKey(name: 'language_code')
  String? get languageCode;
  @override
  @JsonKey(name: 'user_type_id')
  String? get userTypeId;
  @override
  @JsonKey(name: 'gender_id')
  String? get genderId;
  @override
  @JsonKey(name: 'photo')
  String? get photo;
  @override
  @JsonKey(name: 'about')
  String? get about;
  @override
  @JsonKey(name: 'phone')
  String? get phone;
  @override
  @JsonKey(name: 'phone_hidden')
  int? get phoneHidden;
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
  @override
  @JsonKey(name: 'remember_token')
  String? get rememberToken;
  @override
  @JsonKey(name: 'can_be_impersonate')
  String? get canBeImpersonate;
  @override
  @JsonKey(name: 'disable_comments')
  int? get disableComments;
  @override
  @JsonKey(name: 'ip_addr')
  String? get ipAddr;
  @override
  @JsonKey(name: 'provider')
  String? get provider;
  @override
  @JsonKey(name: 'provider_id')
  String? get providerId;
  @override
  @JsonKey(name: 'email_token')
  String? get emailToken;
  @override
  @JsonKey(name: 'phone_token')
  int? get phoneToken;
  @override
  @JsonKey(name: 'verified_email')
  String? get verifiedEmail;
  @override
  @JsonKey(name: 'verified_phone')
  int? get verifiedPhone;
  @override
  @JsonKey(name: 'accept_terms')
  String? get acceptTerms;
  @override
  @JsonKey(name: 'accept_marketing_offers')
  int? get acceptMarketingOffers;
  @override
  @JsonKey(name: 'time_zone')
  String? get timeZone;
  @override
  @JsonKey(name: 'blocked')
  String? get blocked;
  @override
  @JsonKey(name: 'ims')
  String? get ims;
  @override
  @JsonKey(name: 'closed')
  String? get closed;
  @override
  @JsonKey(name: 'last_activity')
  String? get lastActivity;
  @override
  @JsonKey(ignore: true)
  _$$UserDetailResultImplCopyWith<_$UserDetailResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Extra _$ExtraFromJson(Map<String, dynamic> json) {
  return _Extra.fromJson(json);
}

/// @nodoc
mixin _$Extra {
  @JsonKey(name: 'emailOrPhoneChanged')
  bool? get emailOrPhoneChanged => throw _privateConstructorUsedError;
  @JsonKey(name: 'sendPhoneVerification')
  SendPhoneVerification? get sendPhoneVerification =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'mail')
  Mail? get mail => throw _privateConstructorUsedError;
  @JsonKey(name: 'photo')
  List<dynamic>? get photo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExtraCopyWith<Extra> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExtraCopyWith<$Res> {
  factory $ExtraCopyWith(Extra value, $Res Function(Extra) then) =
      _$ExtraCopyWithImpl<$Res, Extra>;
  @useResult
  $Res call(
      {@JsonKey(name: 'emailOrPhoneChanged') bool? emailOrPhoneChanged,
      @JsonKey(name: 'sendPhoneVerification')
      SendPhoneVerification? sendPhoneVerification,
      @JsonKey(name: 'mail') Mail? mail,
      @JsonKey(name: 'photo') List<dynamic>? photo});

  $SendPhoneVerificationCopyWith<$Res>? get sendPhoneVerification;
  $MailCopyWith<$Res>? get mail;
}

/// @nodoc
class _$ExtraCopyWithImpl<$Res, $Val extends Extra>
    implements $ExtraCopyWith<$Res> {
  _$ExtraCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailOrPhoneChanged = freezed,
    Object? sendPhoneVerification = freezed,
    Object? mail = freezed,
    Object? photo = freezed,
  }) {
    return _then(_value.copyWith(
      emailOrPhoneChanged: freezed == emailOrPhoneChanged
          ? _value.emailOrPhoneChanged
          : emailOrPhoneChanged // ignore: cast_nullable_to_non_nullable
              as bool?,
      sendPhoneVerification: freezed == sendPhoneVerification
          ? _value.sendPhoneVerification
          : sendPhoneVerification // ignore: cast_nullable_to_non_nullable
              as SendPhoneVerification?,
      mail: freezed == mail
          ? _value.mail
          : mail // ignore: cast_nullable_to_non_nullable
              as Mail?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SendPhoneVerificationCopyWith<$Res>? get sendPhoneVerification {
    if (_value.sendPhoneVerification == null) {
      return null;
    }

    return $SendPhoneVerificationCopyWith<$Res>(_value.sendPhoneVerification!,
        (value) {
      return _then(_value.copyWith(sendPhoneVerification: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MailCopyWith<$Res>? get mail {
    if (_value.mail == null) {
      return null;
    }

    return $MailCopyWith<$Res>(_value.mail!, (value) {
      return _then(_value.copyWith(mail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ExtraImplCopyWith<$Res> implements $ExtraCopyWith<$Res> {
  factory _$$ExtraImplCopyWith(
          _$ExtraImpl value, $Res Function(_$ExtraImpl) then) =
      __$$ExtraImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'emailOrPhoneChanged') bool? emailOrPhoneChanged,
      @JsonKey(name: 'sendPhoneVerification')
      SendPhoneVerification? sendPhoneVerification,
      @JsonKey(name: 'mail') Mail? mail,
      @JsonKey(name: 'photo') List<dynamic>? photo});

  @override
  $SendPhoneVerificationCopyWith<$Res>? get sendPhoneVerification;
  @override
  $MailCopyWith<$Res>? get mail;
}

/// @nodoc
class __$$ExtraImplCopyWithImpl<$Res>
    extends _$ExtraCopyWithImpl<$Res, _$ExtraImpl>
    implements _$$ExtraImplCopyWith<$Res> {
  __$$ExtraImplCopyWithImpl(
      _$ExtraImpl _value, $Res Function(_$ExtraImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailOrPhoneChanged = freezed,
    Object? sendPhoneVerification = freezed,
    Object? mail = freezed,
    Object? photo = freezed,
  }) {
    return _then(_$ExtraImpl(
      emailOrPhoneChanged: freezed == emailOrPhoneChanged
          ? _value.emailOrPhoneChanged
          : emailOrPhoneChanged // ignore: cast_nullable_to_non_nullable
              as bool?,
      sendPhoneVerification: freezed == sendPhoneVerification
          ? _value.sendPhoneVerification
          : sendPhoneVerification // ignore: cast_nullable_to_non_nullable
              as SendPhoneVerification?,
      mail: freezed == mail
          ? _value.mail
          : mail // ignore: cast_nullable_to_non_nullable
              as Mail?,
      photo: freezed == photo
          ? _value._photo
          : photo // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExtraImpl implements _Extra {
  _$ExtraImpl(
      {@JsonKey(name: 'emailOrPhoneChanged') this.emailOrPhoneChanged,
      @JsonKey(name: 'sendPhoneVerification') this.sendPhoneVerification,
      @JsonKey(name: 'mail') this.mail,
      @JsonKey(name: 'photo') final List<dynamic>? photo})
      : _photo = photo;

  factory _$ExtraImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExtraImplFromJson(json);

  @override
  @JsonKey(name: 'emailOrPhoneChanged')
  final bool? emailOrPhoneChanged;
  @override
  @JsonKey(name: 'sendPhoneVerification')
  final SendPhoneVerification? sendPhoneVerification;
  @override
  @JsonKey(name: 'mail')
  final Mail? mail;
  final List<dynamic>? _photo;
  @override
  @JsonKey(name: 'photo')
  List<dynamic>? get photo {
    final value = _photo;
    if (value == null) return null;
    if (_photo is EqualUnmodifiableListView) return _photo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Extra(emailOrPhoneChanged: $emailOrPhoneChanged, sendPhoneVerification: $sendPhoneVerification, mail: $mail, photo: $photo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExtraImpl &&
            (identical(other.emailOrPhoneChanged, emailOrPhoneChanged) ||
                other.emailOrPhoneChanged == emailOrPhoneChanged) &&
            (identical(other.sendPhoneVerification, sendPhoneVerification) ||
                other.sendPhoneVerification == sendPhoneVerification) &&
            (identical(other.mail, mail) || other.mail == mail) &&
            const DeepCollectionEquality().equals(other._photo, _photo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, emailOrPhoneChanged,
      sendPhoneVerification, mail, const DeepCollectionEquality().hash(_photo));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExtraImplCopyWith<_$ExtraImpl> get copyWith =>
      __$$ExtraImplCopyWithImpl<_$ExtraImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExtraImplToJson(
      this,
    );
  }
}

abstract class _Extra implements Extra {
  factory _Extra(
      {@JsonKey(name: 'emailOrPhoneChanged') final bool? emailOrPhoneChanged,
      @JsonKey(name: 'sendPhoneVerification')
      final SendPhoneVerification? sendPhoneVerification,
      @JsonKey(name: 'mail') final Mail? mail,
      @JsonKey(name: 'photo') final List<dynamic>? photo}) = _$ExtraImpl;

  factory _Extra.fromJson(Map<String, dynamic> json) = _$ExtraImpl.fromJson;

  @override
  @JsonKey(name: 'emailOrPhoneChanged')
  bool? get emailOrPhoneChanged;
  @override
  @JsonKey(name: 'sendPhoneVerification')
  SendPhoneVerification? get sendPhoneVerification;
  @override
  @JsonKey(name: 'mail')
  Mail? get mail;
  @override
  @JsonKey(name: 'photo')
  List<dynamic>? get photo;
  @override
  @JsonKey(ignore: true)
  _$$ExtraImplCopyWith<_$ExtraImpl> get copyWith =>
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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, success, phoneVerificationSent, message);

  @JsonKey(ignore: true)
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
  @override
  @JsonKey(ignore: true)
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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message);

  @JsonKey(ignore: true)
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
  @override
  @JsonKey(ignore: true)
  _$$MailImplCopyWith<_$MailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
