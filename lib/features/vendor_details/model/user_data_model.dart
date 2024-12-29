import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_data_model.freezed.dart';
part 'user_data_model.g.dart';

@freezed
class UserDataModel with _$UserDataModel {
  factory UserDataModel({
    @JsonKey(name: 'data') List<UserData>? data,
    @JsonKey(name: 'msg') String? msg,
  }) = _UserModel;

  factory UserDataModel.fromJson(Map<String, dynamic> json) =>
      _$UserDataModelFromJson(json);
}

@freezed
class UserData with _$UserData {
  factory UserData({
    @JsonKey(name: 'id') String? id,
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
    @JsonKey(name: 'brandbazar_payment_status') String? brandbazarPaymentStatus,
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
    @JsonKey(name: "membership_plan_id") required String? membershipPlanId,
    @JsonKey(name: "membership_payment_status")
    required String? membershipPaymentStatus,
    @JsonKey(name: "membership_start") required String? membershipStart,
    @JsonKey(name: "membership_end") required String? membershipEnd,
    @JsonKey(name: "membership_status") required String? membershipStatus,
    @JsonKey(name: "bio") required String? bio,
    @JsonKey(name: "opening_hours") required String? openingHours,
    @JsonKey(name: "users_location") required String? usersLocation,
    @JsonKey(name: "branch_location") required String? branchLocation,
    @JsonKey(name: "device_token") required String? deviceToken,
    @JsonKey(name: 'deleted_at') String? deletedAt,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
