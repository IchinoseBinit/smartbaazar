// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserDataModel _$UserDataModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserDataModel {
  @JsonKey(name: 'data')
  List<UserData>? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'msg')
  String? get msg => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDataModelCopyWith<UserDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataModelCopyWith<$Res> {
  factory $UserDataModelCopyWith(
          UserDataModel value, $Res Function(UserDataModel) then) =
      _$UserDataModelCopyWithImpl<$Res, UserDataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'data') List<UserData>? data,
      @JsonKey(name: 'msg') String? msg});
}

/// @nodoc
class _$UserDataModelCopyWithImpl<$Res, $Val extends UserDataModel>
    implements $UserDataModelCopyWith<$Res> {
  _$UserDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? msg = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<UserData>?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserDataModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'data') List<UserData>? data,
      @JsonKey(name: 'msg') String? msg});
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserDataModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? msg = freezed,
  }) {
    return _then(_$UserModelImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<UserData>?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  _$UserModelImpl(
      {@JsonKey(name: 'data') final List<UserData>? data,
      @JsonKey(name: 'msg') this.msg})
      : _data = data;

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  final List<UserData>? _data;
  @override
  @JsonKey(name: 'data')
  List<UserData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'msg')
  final String? msg;

  @override
  String toString() {
    return 'UserDataModel(data: $data, msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data), msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserDataModel {
  factory _UserModel(
      {@JsonKey(name: 'data') final List<UserData>? data,
      @JsonKey(name: 'msg') final String? msg}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  @JsonKey(name: 'data')
  List<UserData>? get data;
  @override
  @JsonKey(name: 'msg')
  String? get msg;
  @override
  @JsonKey(ignore: true)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserData _$UserDataFromJson(Map<String, dynamic> json) {
  return _UserData.fromJson(json);
}

/// @nodoc
mixin _$UserData {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'country_code')
  String? get countryCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'language_code')
  String? get languageCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_type_id')
  String? get userTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'gender_id')
  String? get genderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'photo')
  String? get photo => throw _privateConstructorUsedError;
  @JsonKey(name: 'about')
  String? get about => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_hidden')
  String? get phoneHidden => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'email_verified_at')
  String? get emailVerifiedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'password')
  String? get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'remember_token')
  String? get rememberToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_admin')
  String? get isAdmin => throw _privateConstructorUsedError;
  @JsonKey(name: 'can_be_impersonated')
  String? get canBeImpersonated => throw _privateConstructorUsedError;
  @JsonKey(name: 'disable_comments')
  String? get disableComments => throw _privateConstructorUsedError;
  @JsonKey(name: 'ip_addr')
  String? get ipAddr => throw _privateConstructorUsedError;
  @JsonKey(name: 'provider')
  String? get provider => throw _privateConstructorUsedError;
  @JsonKey(name: 'provider_id')
  String? get providerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'email_token')
  String? get emailToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_token')
  String? get phoneToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'verified_email')
  String? get verifiedEmail => throw _privateConstructorUsedError;
  @JsonKey(name: 'verified_phone')
  String? get verifiedPhone => throw _privateConstructorUsedError;
  @JsonKey(name: 'accept_terms')
  String? get acceptTerms => throw _privateConstructorUsedError;
  @JsonKey(name: 'accept_marketing_offers')
  String? get acceptMarketingOffers => throw _privateConstructorUsedError;
  @JsonKey(name: 'time_zone')
  String? get timeZone => throw _privateConstructorUsedError;
  @JsonKey(name: 'blocked')
  String? get blocked => throw _privateConstructorUsedError;
  @JsonKey(name: 'closed')
  String? get closed => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_activity')
  String? get lastActivity => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_login_at')
  String? get lastLoginAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'ims')
  String? get ims => throw _privateConstructorUsedError;
  @JsonKey(name: 'brandbazar')
  String? get brandbazar => throw _privateConstructorUsedError;
  @JsonKey(name: 'brandbazar_verify')
  String? get brandbazarVerify => throw _privateConstructorUsedError;
  @JsonKey(name: 'brandbazar_status')
  String? get brandbazarStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'brandbazar_payment_status')
  String? get brandbazarPaymentStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_qr')
  String? get paymentQr => throw _privateConstructorUsedError;
  @JsonKey(name: 'bank_name')
  String? get bankName => throw _privateConstructorUsedError;
  @JsonKey(name: 'bank_branch')
  String? get bankBranch => throw _privateConstructorUsedError;
  @JsonKey(name: 'ac_holder')
  String? get acHolder => throw _privateConstructorUsedError;
  @JsonKey(name: 'ac_number')
  String? get acNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'banner')
  String? get banner => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'pan_vat')
  String? get panVat => throw _privateConstructorUsedError;
  @JsonKey(name: 'tax_certificate')
  String? get taxCertificate => throw _privateConstructorUsedError;
  @JsonKey(name: 'register_certificate')
  String? get registerCertificate => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_verify')
  String? get userVerify => throw _privateConstructorUsedError;
  @JsonKey(name: 'gender')
  String? get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'dob')
  String? get dob => throw _privateConstructorUsedError;
  @JsonKey(name: 'deleted_at')
  String? get deletedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDataCopyWith<UserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataCopyWith<$Res> {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) then) =
      _$UserDataCopyWithImpl<$Res, UserData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'country_code') String? countryCode,
      @JsonKey(name: 'language_code') String? languageCode,
      @JsonKey(name: 'user_type_id') String? userTypeId,
      @JsonKey(name: 'gender_id') String? genderId,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'photo') String? photo,
      @JsonKey(name: 'about') String? about,
      @JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'phone_hidden') String? phoneHidden,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'email_verified_at') String? emailVerifiedAt,
      @JsonKey(name: 'password') String? password,
      @JsonKey(name: 'remember_token') String? rememberToken,
      @JsonKey(name: 'is_admin') String? isAdmin,
      @JsonKey(name: 'can_be_impersonated') String? canBeImpersonated,
      @JsonKey(name: 'disable_comments') String? disableComments,
      @JsonKey(name: 'ip_addr') String? ipAddr,
      @JsonKey(name: 'provider') String? provider,
      @JsonKey(name: 'provider_id') String? providerId,
      @JsonKey(name: 'email_token') String? emailToken,
      @JsonKey(name: 'phone_token') String? phoneToken,
      @JsonKey(name: 'verified_email') String? verifiedEmail,
      @JsonKey(name: 'verified_phone') String? verifiedPhone,
      @JsonKey(name: 'accept_terms') String? acceptTerms,
      @JsonKey(name: 'accept_marketing_offers') String? acceptMarketingOffers,
      @JsonKey(name: 'time_zone') String? timeZone,
      @JsonKey(name: 'blocked') String? blocked,
      @JsonKey(name: 'closed') String? closed,
      @JsonKey(name: 'last_activity') String? lastActivity,
      @JsonKey(name: 'last_login_at') String? lastLoginAt,
      @JsonKey(name: 'ims') String? ims,
      @JsonKey(name: 'brandbazar') String? brandbazar,
      @JsonKey(name: 'brandbazar_verify') String? brandbazarVerify,
      @JsonKey(name: 'brandbazar_status') String? brandbazarStatus,
      @JsonKey(name: 'brandbazar_payment_status')
      String? brandbazarPaymentStatus,
      @JsonKey(name: 'payment_qr') String? paymentQr,
      @JsonKey(name: 'bank_name') String? bankName,
      @JsonKey(name: 'bank_branch') String? bankBranch,
      @JsonKey(name: 'ac_holder') String? acHolder,
      @JsonKey(name: 'ac_number') String? acNumber,
      @JsonKey(name: 'banner') String? banner,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'pan_vat') String? panVat,
      @JsonKey(name: 'tax_certificate') String? taxCertificate,
      @JsonKey(name: 'register_certificate') String? registerCertificate,
      @JsonKey(name: 'user_verify') String? userVerify,
      @JsonKey(name: 'gender') String? gender,
      @JsonKey(name: 'dob') String? dob,
      @JsonKey(name: 'deleted_at') String? deletedAt,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class _$UserDataCopyWithImpl<$Res, $Val extends UserData>
    implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? countryCode = freezed,
    Object? languageCode = freezed,
    Object? userTypeId = freezed,
    Object? genderId = freezed,
    Object? name = freezed,
    Object? photo = freezed,
    Object? about = freezed,
    Object? phone = freezed,
    Object? phoneHidden = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? emailVerifiedAt = freezed,
    Object? password = freezed,
    Object? rememberToken = freezed,
    Object? isAdmin = freezed,
    Object? canBeImpersonated = freezed,
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
    Object? closed = freezed,
    Object? lastActivity = freezed,
    Object? lastLoginAt = freezed,
    Object? ims = freezed,
    Object? brandbazar = freezed,
    Object? brandbazarVerify = freezed,
    Object? brandbazarStatus = freezed,
    Object? brandbazarPaymentStatus = freezed,
    Object? paymentQr = freezed,
    Object? bankName = freezed,
    Object? bankBranch = freezed,
    Object? acHolder = freezed,
    Object? acNumber = freezed,
    Object? banner = freezed,
    Object? description = freezed,
    Object? panVat = freezed,
    Object? taxCertificate = freezed,
    Object? registerCertificate = freezed,
    Object? userVerify = freezed,
    Object? gender = freezed,
    Object? dob = freezed,
    Object? deletedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerifiedAt: freezed == emailVerifiedAt
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      rememberToken: freezed == rememberToken
          ? _value.rememberToken
          : rememberToken // ignore: cast_nullable_to_non_nullable
              as String?,
      isAdmin: freezed == isAdmin
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as String?,
      canBeImpersonated: freezed == canBeImpersonated
          ? _value.canBeImpersonated
          : canBeImpersonated // ignore: cast_nullable_to_non_nullable
              as String?,
      disableComments: freezed == disableComments
          ? _value.disableComments
          : disableComments // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as String?,
      verifiedEmail: freezed == verifiedEmail
          ? _value.verifiedEmail
          : verifiedEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      verifiedPhone: freezed == verifiedPhone
          ? _value.verifiedPhone
          : verifiedPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      acceptTerms: freezed == acceptTerms
          ? _value.acceptTerms
          : acceptTerms // ignore: cast_nullable_to_non_nullable
              as String?,
      acceptMarketingOffers: freezed == acceptMarketingOffers
          ? _value.acceptMarketingOffers
          : acceptMarketingOffers // ignore: cast_nullable_to_non_nullable
              as String?,
      timeZone: freezed == timeZone
          ? _value.timeZone
          : timeZone // ignore: cast_nullable_to_non_nullable
              as String?,
      blocked: freezed == blocked
          ? _value.blocked
          : blocked // ignore: cast_nullable_to_non_nullable
              as String?,
      closed: freezed == closed
          ? _value.closed
          : closed // ignore: cast_nullable_to_non_nullable
              as String?,
      lastActivity: freezed == lastActivity
          ? _value.lastActivity
          : lastActivity // ignore: cast_nullable_to_non_nullable
              as String?,
      lastLoginAt: freezed == lastLoginAt
          ? _value.lastLoginAt
          : lastLoginAt // ignore: cast_nullable_to_non_nullable
              as String?,
      ims: freezed == ims
          ? _value.ims
          : ims // ignore: cast_nullable_to_non_nullable
              as String?,
      brandbazar: freezed == brandbazar
          ? _value.brandbazar
          : brandbazar // ignore: cast_nullable_to_non_nullable
              as String?,
      brandbazarVerify: freezed == brandbazarVerify
          ? _value.brandbazarVerify
          : brandbazarVerify // ignore: cast_nullable_to_non_nullable
              as String?,
      brandbazarStatus: freezed == brandbazarStatus
          ? _value.brandbazarStatus
          : brandbazarStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      brandbazarPaymentStatus: freezed == brandbazarPaymentStatus
          ? _value.brandbazarPaymentStatus
          : brandbazarPaymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentQr: freezed == paymentQr
          ? _value.paymentQr
          : paymentQr // ignore: cast_nullable_to_non_nullable
              as String?,
      bankName: freezed == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String?,
      bankBranch: freezed == bankBranch
          ? _value.bankBranch
          : bankBranch // ignore: cast_nullable_to_non_nullable
              as String?,
      acHolder: freezed == acHolder
          ? _value.acHolder
          : acHolder // ignore: cast_nullable_to_non_nullable
              as String?,
      acNumber: freezed == acNumber
          ? _value.acNumber
          : acNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      banner: freezed == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      panVat: freezed == panVat
          ? _value.panVat
          : panVat // ignore: cast_nullable_to_non_nullable
              as String?,
      taxCertificate: freezed == taxCertificate
          ? _value.taxCertificate
          : taxCertificate // ignore: cast_nullable_to_non_nullable
              as String?,
      registerCertificate: freezed == registerCertificate
          ? _value.registerCertificate
          : registerCertificate // ignore: cast_nullable_to_non_nullable
              as String?,
      userVerify: freezed == userVerify
          ? _value.userVerify
          : userVerify // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDataImplCopyWith<$Res>
    implements $UserDataCopyWith<$Res> {
  factory _$$UserDataImplCopyWith(
          _$UserDataImpl value, $Res Function(_$UserDataImpl) then) =
      __$$UserDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'country_code') String? countryCode,
      @JsonKey(name: 'language_code') String? languageCode,
      @JsonKey(name: 'user_type_id') String? userTypeId,
      @JsonKey(name: 'gender_id') String? genderId,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'photo') String? photo,
      @JsonKey(name: 'about') String? about,
      @JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'phone_hidden') String? phoneHidden,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'email_verified_at') String? emailVerifiedAt,
      @JsonKey(name: 'password') String? password,
      @JsonKey(name: 'remember_token') String? rememberToken,
      @JsonKey(name: 'is_admin') String? isAdmin,
      @JsonKey(name: 'can_be_impersonated') String? canBeImpersonated,
      @JsonKey(name: 'disable_comments') String? disableComments,
      @JsonKey(name: 'ip_addr') String? ipAddr,
      @JsonKey(name: 'provider') String? provider,
      @JsonKey(name: 'provider_id') String? providerId,
      @JsonKey(name: 'email_token') String? emailToken,
      @JsonKey(name: 'phone_token') String? phoneToken,
      @JsonKey(name: 'verified_email') String? verifiedEmail,
      @JsonKey(name: 'verified_phone') String? verifiedPhone,
      @JsonKey(name: 'accept_terms') String? acceptTerms,
      @JsonKey(name: 'accept_marketing_offers') String? acceptMarketingOffers,
      @JsonKey(name: 'time_zone') String? timeZone,
      @JsonKey(name: 'blocked') String? blocked,
      @JsonKey(name: 'closed') String? closed,
      @JsonKey(name: 'last_activity') String? lastActivity,
      @JsonKey(name: 'last_login_at') String? lastLoginAt,
      @JsonKey(name: 'ims') String? ims,
      @JsonKey(name: 'brandbazar') String? brandbazar,
      @JsonKey(name: 'brandbazar_verify') String? brandbazarVerify,
      @JsonKey(name: 'brandbazar_status') String? brandbazarStatus,
      @JsonKey(name: 'brandbazar_payment_status')
      String? brandbazarPaymentStatus,
      @JsonKey(name: 'payment_qr') String? paymentQr,
      @JsonKey(name: 'bank_name') String? bankName,
      @JsonKey(name: 'bank_branch') String? bankBranch,
      @JsonKey(name: 'ac_holder') String? acHolder,
      @JsonKey(name: 'ac_number') String? acNumber,
      @JsonKey(name: 'banner') String? banner,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'pan_vat') String? panVat,
      @JsonKey(name: 'tax_certificate') String? taxCertificate,
      @JsonKey(name: 'register_certificate') String? registerCertificate,
      @JsonKey(name: 'user_verify') String? userVerify,
      @JsonKey(name: 'gender') String? gender,
      @JsonKey(name: 'dob') String? dob,
      @JsonKey(name: 'deleted_at') String? deletedAt,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class __$$UserDataImplCopyWithImpl<$Res>
    extends _$UserDataCopyWithImpl<$Res, _$UserDataImpl>
    implements _$$UserDataImplCopyWith<$Res> {
  __$$UserDataImplCopyWithImpl(
      _$UserDataImpl _value, $Res Function(_$UserDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? countryCode = freezed,
    Object? languageCode = freezed,
    Object? userTypeId = freezed,
    Object? genderId = freezed,
    Object? name = freezed,
    Object? photo = freezed,
    Object? about = freezed,
    Object? phone = freezed,
    Object? phoneHidden = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? emailVerifiedAt = freezed,
    Object? password = freezed,
    Object? rememberToken = freezed,
    Object? isAdmin = freezed,
    Object? canBeImpersonated = freezed,
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
    Object? closed = freezed,
    Object? lastActivity = freezed,
    Object? lastLoginAt = freezed,
    Object? ims = freezed,
    Object? brandbazar = freezed,
    Object? brandbazarVerify = freezed,
    Object? brandbazarStatus = freezed,
    Object? brandbazarPaymentStatus = freezed,
    Object? paymentQr = freezed,
    Object? bankName = freezed,
    Object? bankBranch = freezed,
    Object? acHolder = freezed,
    Object? acNumber = freezed,
    Object? banner = freezed,
    Object? description = freezed,
    Object? panVat = freezed,
    Object? taxCertificate = freezed,
    Object? registerCertificate = freezed,
    Object? userVerify = freezed,
    Object? gender = freezed,
    Object? dob = freezed,
    Object? deletedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$UserDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerifiedAt: freezed == emailVerifiedAt
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      rememberToken: freezed == rememberToken
          ? _value.rememberToken
          : rememberToken // ignore: cast_nullable_to_non_nullable
              as String?,
      isAdmin: freezed == isAdmin
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as String?,
      canBeImpersonated: freezed == canBeImpersonated
          ? _value.canBeImpersonated
          : canBeImpersonated // ignore: cast_nullable_to_non_nullable
              as String?,
      disableComments: freezed == disableComments
          ? _value.disableComments
          : disableComments // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as String?,
      verifiedEmail: freezed == verifiedEmail
          ? _value.verifiedEmail
          : verifiedEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      verifiedPhone: freezed == verifiedPhone
          ? _value.verifiedPhone
          : verifiedPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      acceptTerms: freezed == acceptTerms
          ? _value.acceptTerms
          : acceptTerms // ignore: cast_nullable_to_non_nullable
              as String?,
      acceptMarketingOffers: freezed == acceptMarketingOffers
          ? _value.acceptMarketingOffers
          : acceptMarketingOffers // ignore: cast_nullable_to_non_nullable
              as String?,
      timeZone: freezed == timeZone
          ? _value.timeZone
          : timeZone // ignore: cast_nullable_to_non_nullable
              as String?,
      blocked: freezed == blocked
          ? _value.blocked
          : blocked // ignore: cast_nullable_to_non_nullable
              as String?,
      closed: freezed == closed
          ? _value.closed
          : closed // ignore: cast_nullable_to_non_nullable
              as String?,
      lastActivity: freezed == lastActivity
          ? _value.lastActivity
          : lastActivity // ignore: cast_nullable_to_non_nullable
              as String?,
      lastLoginAt: freezed == lastLoginAt
          ? _value.lastLoginAt
          : lastLoginAt // ignore: cast_nullable_to_non_nullable
              as String?,
      ims: freezed == ims
          ? _value.ims
          : ims // ignore: cast_nullable_to_non_nullable
              as String?,
      brandbazar: freezed == brandbazar
          ? _value.brandbazar
          : brandbazar // ignore: cast_nullable_to_non_nullable
              as String?,
      brandbazarVerify: freezed == brandbazarVerify
          ? _value.brandbazarVerify
          : brandbazarVerify // ignore: cast_nullable_to_non_nullable
              as String?,
      brandbazarStatus: freezed == brandbazarStatus
          ? _value.brandbazarStatus
          : brandbazarStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      brandbazarPaymentStatus: freezed == brandbazarPaymentStatus
          ? _value.brandbazarPaymentStatus
          : brandbazarPaymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentQr: freezed == paymentQr
          ? _value.paymentQr
          : paymentQr // ignore: cast_nullable_to_non_nullable
              as String?,
      bankName: freezed == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String?,
      bankBranch: freezed == bankBranch
          ? _value.bankBranch
          : bankBranch // ignore: cast_nullable_to_non_nullable
              as String?,
      acHolder: freezed == acHolder
          ? _value.acHolder
          : acHolder // ignore: cast_nullable_to_non_nullable
              as String?,
      acNumber: freezed == acNumber
          ? _value.acNumber
          : acNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      banner: freezed == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      panVat: freezed == panVat
          ? _value.panVat
          : panVat // ignore: cast_nullable_to_non_nullable
              as String?,
      taxCertificate: freezed == taxCertificate
          ? _value.taxCertificate
          : taxCertificate // ignore: cast_nullable_to_non_nullable
              as String?,
      registerCertificate: freezed == registerCertificate
          ? _value.registerCertificate
          : registerCertificate // ignore: cast_nullable_to_non_nullable
              as String?,
      userVerify: freezed == userVerify
          ? _value.userVerify
          : userVerify // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDataImpl implements _UserData {
  _$UserDataImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'country_code') this.countryCode,
      @JsonKey(name: 'language_code') this.languageCode,
      @JsonKey(name: 'user_type_id') this.userTypeId,
      @JsonKey(name: 'gender_id') this.genderId,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'photo') this.photo,
      @JsonKey(name: 'about') this.about,
      @JsonKey(name: 'phone') this.phone,
      @JsonKey(name: 'phone_hidden') this.phoneHidden,
      @JsonKey(name: 'username') this.username,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'email_verified_at') this.emailVerifiedAt,
      @JsonKey(name: 'password') this.password,
      @JsonKey(name: 'remember_token') this.rememberToken,
      @JsonKey(name: 'is_admin') this.isAdmin,
      @JsonKey(name: 'can_be_impersonated') this.canBeImpersonated,
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
      @JsonKey(name: 'closed') this.closed,
      @JsonKey(name: 'last_activity') this.lastActivity,
      @JsonKey(name: 'last_login_at') this.lastLoginAt,
      @JsonKey(name: 'ims') this.ims,
      @JsonKey(name: 'brandbazar') this.brandbazar,
      @JsonKey(name: 'brandbazar_verify') this.brandbazarVerify,
      @JsonKey(name: 'brandbazar_status') this.brandbazarStatus,
      @JsonKey(name: 'brandbazar_payment_status') this.brandbazarPaymentStatus,
      @JsonKey(name: 'payment_qr') this.paymentQr,
      @JsonKey(name: 'bank_name') this.bankName,
      @JsonKey(name: 'bank_branch') this.bankBranch,
      @JsonKey(name: 'ac_holder') this.acHolder,
      @JsonKey(name: 'ac_number') this.acNumber,
      @JsonKey(name: 'banner') this.banner,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'pan_vat') this.panVat,
      @JsonKey(name: 'tax_certificate') this.taxCertificate,
      @JsonKey(name: 'register_certificate') this.registerCertificate,
      @JsonKey(name: 'user_verify') this.userVerify,
      @JsonKey(name: 'gender') this.gender,
      @JsonKey(name: 'dob') this.dob,
      @JsonKey(name: 'deleted_at') this.deletedAt,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$UserDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDataImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
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
  @JsonKey(name: 'name')
  final String? name;
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
  final String? phoneHidden;
  @override
  @JsonKey(name: 'username')
  final String? username;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'email_verified_at')
  final String? emailVerifiedAt;
  @override
  @JsonKey(name: 'password')
  final String? password;
  @override
  @JsonKey(name: 'remember_token')
  final String? rememberToken;
  @override
  @JsonKey(name: 'is_admin')
  final String? isAdmin;
  @override
  @JsonKey(name: 'can_be_impersonated')
  final String? canBeImpersonated;
  @override
  @JsonKey(name: 'disable_comments')
  final String? disableComments;
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
  final String? phoneToken;
  @override
  @JsonKey(name: 'verified_email')
  final String? verifiedEmail;
  @override
  @JsonKey(name: 'verified_phone')
  final String? verifiedPhone;
  @override
  @JsonKey(name: 'accept_terms')
  final String? acceptTerms;
  @override
  @JsonKey(name: 'accept_marketing_offers')
  final String? acceptMarketingOffers;
  @override
  @JsonKey(name: 'time_zone')
  final String? timeZone;
  @override
  @JsonKey(name: 'blocked')
  final String? blocked;
  @override
  @JsonKey(name: 'closed')
  final String? closed;
  @override
  @JsonKey(name: 'last_activity')
  final String? lastActivity;
  @override
  @JsonKey(name: 'last_login_at')
  final String? lastLoginAt;
  @override
  @JsonKey(name: 'ims')
  final String? ims;
  @override
  @JsonKey(name: 'brandbazar')
  final String? brandbazar;
  @override
  @JsonKey(name: 'brandbazar_verify')
  final String? brandbazarVerify;
  @override
  @JsonKey(name: 'brandbazar_status')
  final String? brandbazarStatus;
  @override
  @JsonKey(name: 'brandbazar_payment_status')
  final String? brandbazarPaymentStatus;
  @override
  @JsonKey(name: 'payment_qr')
  final String? paymentQr;
  @override
  @JsonKey(name: 'bank_name')
  final String? bankName;
  @override
  @JsonKey(name: 'bank_branch')
  final String? bankBranch;
  @override
  @JsonKey(name: 'ac_holder')
  final String? acHolder;
  @override
  @JsonKey(name: 'ac_number')
  final String? acNumber;
  @override
  @JsonKey(name: 'banner')
  final String? banner;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'pan_vat')
  final String? panVat;
  @override
  @JsonKey(name: 'tax_certificate')
  final String? taxCertificate;
  @override
  @JsonKey(name: 'register_certificate')
  final String? registerCertificate;
  @override
  @JsonKey(name: 'user_verify')
  final String? userVerify;
  @override
  @JsonKey(name: 'gender')
  final String? gender;
  @override
  @JsonKey(name: 'dob')
  final String? dob;
  @override
  @JsonKey(name: 'deleted_at')
  final String? deletedAt;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @override
  String toString() {
    return 'UserData(id: $id, countryCode: $countryCode, languageCode: $languageCode, userTypeId: $userTypeId, genderId: $genderId, name: $name, photo: $photo, about: $about, phone: $phone, phoneHidden: $phoneHidden, username: $username, email: $email, emailVerifiedAt: $emailVerifiedAt, password: $password, rememberToken: $rememberToken, isAdmin: $isAdmin, canBeImpersonated: $canBeImpersonated, disableComments: $disableComments, ipAddr: $ipAddr, provider: $provider, providerId: $providerId, emailToken: $emailToken, phoneToken: $phoneToken, verifiedEmail: $verifiedEmail, verifiedPhone: $verifiedPhone, acceptTerms: $acceptTerms, acceptMarketingOffers: $acceptMarketingOffers, timeZone: $timeZone, blocked: $blocked, closed: $closed, lastActivity: $lastActivity, lastLoginAt: $lastLoginAt, ims: $ims, brandbazar: $brandbazar, brandbazarVerify: $brandbazarVerify, brandbazarStatus: $brandbazarStatus, brandbazarPaymentStatus: $brandbazarPaymentStatus, paymentQr: $paymentQr, bankName: $bankName, bankBranch: $bankBranch, acHolder: $acHolder, acNumber: $acNumber, banner: $banner, description: $description, panVat: $panVat, taxCertificate: $taxCertificate, registerCertificate: $registerCertificate, userVerify: $userVerify, gender: $gender, dob: $dob, deletedAt: $deletedAt, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.languageCode, languageCode) ||
                other.languageCode == languageCode) &&
            (identical(other.userTypeId, userTypeId) ||
                other.userTypeId == userTypeId) &&
            (identical(other.genderId, genderId) ||
                other.genderId == genderId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.about, about) || other.about == about) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.phoneHidden, phoneHidden) ||
                other.phoneHidden == phoneHidden) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.emailVerifiedAt, emailVerifiedAt) ||
                other.emailVerifiedAt == emailVerifiedAt) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.rememberToken, rememberToken) ||
                other.rememberToken == rememberToken) &&
            (identical(other.isAdmin, isAdmin) || other.isAdmin == isAdmin) &&
            (identical(other.canBeImpersonated, canBeImpersonated) ||
                other.canBeImpersonated == canBeImpersonated) &&
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
            (identical(other.closed, closed) || other.closed == closed) &&
            (identical(other.lastActivity, lastActivity) ||
                other.lastActivity == lastActivity) &&
            (identical(other.lastLoginAt, lastLoginAt) ||
                other.lastLoginAt == lastLoginAt) &&
            (identical(other.ims, ims) || other.ims == ims) &&
            (identical(other.brandbazar, brandbazar) ||
                other.brandbazar == brandbazar) &&
            (identical(other.brandbazarVerify, brandbazarVerify) ||
                other.brandbazarVerify == brandbazarVerify) &&
            (identical(other.brandbazarStatus, brandbazarStatus) ||
                other.brandbazarStatus == brandbazarStatus) &&
            (identical(
                    other.brandbazarPaymentStatus, brandbazarPaymentStatus) ||
                other.brandbazarPaymentStatus == brandbazarPaymentStatus) &&
            (identical(other.paymentQr, paymentQr) ||
                other.paymentQr == paymentQr) &&
            (identical(other.bankName, bankName) ||
                other.bankName == bankName) &&
            (identical(other.bankBranch, bankBranch) ||
                other.bankBranch == bankBranch) &&
            (identical(other.acHolder, acHolder) ||
                other.acHolder == acHolder) &&
            (identical(other.acNumber, acNumber) ||
                other.acNumber == acNumber) &&
            (identical(other.banner, banner) || other.banner == banner) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.panVat, panVat) || other.panVat == panVat) &&
            (identical(other.taxCertificate, taxCertificate) ||
                other.taxCertificate == taxCertificate) &&
            (identical(other.registerCertificate, registerCertificate) ||
                other.registerCertificate == registerCertificate) &&
            (identical(other.userVerify, userVerify) ||
                other.userVerify == userVerify) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.dob, dob) || other.dob == dob) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        countryCode,
        languageCode,
        userTypeId,
        genderId,
        name,
        photo,
        about,
        phone,
        phoneHidden,
        username,
        email,
        emailVerifiedAt,
        password,
        rememberToken,
        isAdmin,
        canBeImpersonated,
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
        closed,
        lastActivity,
        lastLoginAt,
        ims,
        brandbazar,
        brandbazarVerify,
        brandbazarStatus,
        brandbazarPaymentStatus,
        paymentQr,
        bankName,
        bankBranch,
        acHolder,
        acNumber,
        banner,
        description,
        panVat,
        taxCertificate,
        registerCertificate,
        userVerify,
        gender,
        dob,
        deletedAt,
        createdAt,
        updatedAt
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDataImplCopyWith<_$UserDataImpl> get copyWith =>
      __$$UserDataImplCopyWithImpl<_$UserDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDataImplToJson(
      this,
    );
  }
}

abstract class _UserData implements UserData {
  factory _UserData(
      {@JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'country_code') final String? countryCode,
      @JsonKey(name: 'language_code') final String? languageCode,
      @JsonKey(name: 'user_type_id') final String? userTypeId,
      @JsonKey(name: 'gender_id') final String? genderId,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'photo') final String? photo,
      @JsonKey(name: 'about') final String? about,
      @JsonKey(name: 'phone') final String? phone,
      @JsonKey(name: 'phone_hidden') final String? phoneHidden,
      @JsonKey(name: 'username') final String? username,
      @JsonKey(name: 'email') final String? email,
      @JsonKey(name: 'email_verified_at') final String? emailVerifiedAt,
      @JsonKey(name: 'password') final String? password,
      @JsonKey(name: 'remember_token') final String? rememberToken,
      @JsonKey(name: 'is_admin') final String? isAdmin,
      @JsonKey(name: 'can_be_impersonated') final String? canBeImpersonated,
      @JsonKey(name: 'disable_comments') final String? disableComments,
      @JsonKey(name: 'ip_addr') final String? ipAddr,
      @JsonKey(name: 'provider') final String? provider,
      @JsonKey(name: 'provider_id') final String? providerId,
      @JsonKey(name: 'email_token') final String? emailToken,
      @JsonKey(name: 'phone_token') final String? phoneToken,
      @JsonKey(name: 'verified_email') final String? verifiedEmail,
      @JsonKey(name: 'verified_phone') final String? verifiedPhone,
      @JsonKey(name: 'accept_terms') final String? acceptTerms,
      @JsonKey(name: 'accept_marketing_offers')
      final String? acceptMarketingOffers,
      @JsonKey(name: 'time_zone') final String? timeZone,
      @JsonKey(name: 'blocked') final String? blocked,
      @JsonKey(name: 'closed') final String? closed,
      @JsonKey(name: 'last_activity') final String? lastActivity,
      @JsonKey(name: 'last_login_at') final String? lastLoginAt,
      @JsonKey(name: 'ims') final String? ims,
      @JsonKey(name: 'brandbazar') final String? brandbazar,
      @JsonKey(name: 'brandbazar_verify') final String? brandbazarVerify,
      @JsonKey(name: 'brandbazar_status') final String? brandbazarStatus,
      @JsonKey(name: 'brandbazar_payment_status')
      final String? brandbazarPaymentStatus,
      @JsonKey(name: 'payment_qr') final String? paymentQr,
      @JsonKey(name: 'bank_name') final String? bankName,
      @JsonKey(name: 'bank_branch') final String? bankBranch,
      @JsonKey(name: 'ac_holder') final String? acHolder,
      @JsonKey(name: 'ac_number') final String? acNumber,
      @JsonKey(name: 'banner') final String? banner,
      @JsonKey(name: 'description') final String? description,
      @JsonKey(name: 'pan_vat') final String? panVat,
      @JsonKey(name: 'tax_certificate') final String? taxCertificate,
      @JsonKey(name: 'register_certificate') final String? registerCertificate,
      @JsonKey(name: 'user_verify') final String? userVerify,
      @JsonKey(name: 'gender') final String? gender,
      @JsonKey(name: 'dob') final String? dob,
      @JsonKey(name: 'deleted_at') final String? deletedAt,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'updated_at') final String? updatedAt}) = _$UserDataImpl;

  factory _UserData.fromJson(Map<String, dynamic> json) =
      _$UserDataImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
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
  @JsonKey(name: 'name')
  String? get name;
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
  String? get phoneHidden;
  @override
  @JsonKey(name: 'username')
  String? get username;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'email_verified_at')
  String? get emailVerifiedAt;
  @override
  @JsonKey(name: 'password')
  String? get password;
  @override
  @JsonKey(name: 'remember_token')
  String? get rememberToken;
  @override
  @JsonKey(name: 'is_admin')
  String? get isAdmin;
  @override
  @JsonKey(name: 'can_be_impersonated')
  String? get canBeImpersonated;
  @override
  @JsonKey(name: 'disable_comments')
  String? get disableComments;
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
  String? get phoneToken;
  @override
  @JsonKey(name: 'verified_email')
  String? get verifiedEmail;
  @override
  @JsonKey(name: 'verified_phone')
  String? get verifiedPhone;
  @override
  @JsonKey(name: 'accept_terms')
  String? get acceptTerms;
  @override
  @JsonKey(name: 'accept_marketing_offers')
  String? get acceptMarketingOffers;
  @override
  @JsonKey(name: 'time_zone')
  String? get timeZone;
  @override
  @JsonKey(name: 'blocked')
  String? get blocked;
  @override
  @JsonKey(name: 'closed')
  String? get closed;
  @override
  @JsonKey(name: 'last_activity')
  String? get lastActivity;
  @override
  @JsonKey(name: 'last_login_at')
  String? get lastLoginAt;
  @override
  @JsonKey(name: 'ims')
  String? get ims;
  @override
  @JsonKey(name: 'brandbazar')
  String? get brandbazar;
  @override
  @JsonKey(name: 'brandbazar_verify')
  String? get brandbazarVerify;
  @override
  @JsonKey(name: 'brandbazar_status')
  String? get brandbazarStatus;
  @override
  @JsonKey(name: 'brandbazar_payment_status')
  String? get brandbazarPaymentStatus;
  @override
  @JsonKey(name: 'payment_qr')
  String? get paymentQr;
  @override
  @JsonKey(name: 'bank_name')
  String? get bankName;
  @override
  @JsonKey(name: 'bank_branch')
  String? get bankBranch;
  @override
  @JsonKey(name: 'ac_holder')
  String? get acHolder;
  @override
  @JsonKey(name: 'ac_number')
  String? get acNumber;
  @override
  @JsonKey(name: 'banner')
  String? get banner;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'pan_vat')
  String? get panVat;
  @override
  @JsonKey(name: 'tax_certificate')
  String? get taxCertificate;
  @override
  @JsonKey(name: 'register_certificate')
  String? get registerCertificate;
  @override
  @JsonKey(name: 'user_verify')
  String? get userVerify;
  @override
  @JsonKey(name: 'gender')
  String? get gender;
  @override
  @JsonKey(name: 'dob')
  String? get dob;
  @override
  @JsonKey(name: 'deleted_at')
  String? get deletedAt;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$UserDataImplCopyWith<_$UserDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
