import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_user_detail_model.freezed.dart';
part 'update_user_detail_model.g.dart';

@freezed
class UpdateUserDetail with _$UpdateUserDetail {
  factory UpdateUserDetail({
    @JsonKey(name: 'success') bool? success,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'result') UserDetailResult? result,
    @JsonKey(name: 'extra') Extra? extra,
  }) = _UpdateUserDetail;

  factory UpdateUserDetail.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserDetailFromJson(json);
}

@freezed
class UserDetailResult with _$UserDetailResult {
  factory UserDetailResult({
    @JsonKey(name: 'id') int? id,
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
    @JsonKey(name: 'last_activity') String? lastActivity,
  }) = _UserDetailResult;

  factory UserDetailResult.fromJson(Map<String, dynamic> json) =>
      _$UserDetailResultFromJson(json);
}

@freezed
class Extra with _$Extra {
  factory Extra({
    @JsonKey(name: 'emailOrPhoneChanged') bool? emailOrPhoneChanged,
    @JsonKey(name: 'sendPhoneVerification') SendPhoneVerification? sendPhoneVerification,
    @JsonKey(name: 'mail') Mail? mail,
    @JsonKey(name: 'photo') List<dynamic>? photo,
  }) = _Extra;

  factory Extra.fromJson(Map<String, dynamic> json) => _$ExtraFromJson(json);
}

@freezed
class SendPhoneVerification with _$SendPhoneVerification {
  factory SendPhoneVerification({
    @JsonKey(name: 'success') bool? success,
    @JsonKey(name: 'phoneVerificationSent') bool? phoneVerificationSent,
    @JsonKey(name: 'message') String? message,
  }) = _SendPhoneVerification;

  factory SendPhoneVerification.fromJson(Map<String, dynamic> json) =>
      _$SendPhoneVerificationFromJson(json);
}

@freezed
class Mail with _$Mail {
  factory Mail({
    @JsonKey(name: 'success') bool? success,
    @JsonKey(name: 'message') String? message,
  }) = _Mail;

  factory Mail.fromJson(Map<String, dynamic> json) => _$MailFromJson(json);
}
