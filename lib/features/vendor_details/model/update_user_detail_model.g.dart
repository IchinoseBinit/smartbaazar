// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateUserDetailImpl _$$UpdateUserDetailImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateUserDetailImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      result: json['result'] == null
          ? null
          : UserDetailResult.fromJson(json['result'] as Map<String, dynamic>),
      extra: json['extra'] == null
          ? null
          : Extra.fromJson(json['extra'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UpdateUserDetailImplToJson(
        _$UpdateUserDetailImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'result': instance.result,
      'extra': instance.extra,
    };

_$UserDetailResultImpl _$$UserDetailResultImplFromJson(
        Map<String, dynamic> json) =>
    _$UserDetailResultImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      username: json['username'] as String?,
      createdAtFormatted: json['created_at_formatted'] as String?,
      photoUrl: json['photo_url'] as String?,
      countryCode: json['country_code'] as String?,
      languageCode: json['language_code'] as String?,
      userTypeId: json['user_type_id'] as String?,
      genderId: json['gender_id'] as String?,
      photo: json['photo'] as String?,
      about: json['about'] as String?,
      phone: json['phone'] as String?,
      phoneHidden: (json['phone_hidden'] as num?)?.toInt(),
      email: json['email'] as String?,
      dob: json['dob'] as String?,
      gender: json['gender'] as String?,
      password: json['password'] as String?,
      rememberToken: json['remember_token'] as String?,
      canBeImpersonate: json['can_be_impersonate'] as String?,
      disableComments: (json['disable_comments'] as num?)?.toInt(),
      ipAddr: json['ip_addr'] as String?,
      provider: json['provider'] as String?,
      providerId: json['provider_id'] as String?,
      emailToken: json['email_token'] as String?,
      phoneToken: (json['phone_token'] as num?)?.toInt(),
      verifiedEmail: json['verified_email'] as String?,
      verifiedPhone: (json['verified_phone'] as num?)?.toInt(),
      acceptTerms: json['accept_terms'] as String?,
      acceptMarketingOffers: (json['accept_marketing_offers'] as num?)?.toInt(),
      timeZone: json['time_zone'] as String?,
      blocked: json['blocked'] as String?,
      ims: json['ims'] as String?,
      closed: json['closed'] as String?,
      lastActivity: json['last_activity'] as String?,
    );

Map<String, dynamic> _$$UserDetailResultImplToJson(
        _$UserDetailResultImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'created_at_formatted': instance.createdAtFormatted,
      'photo_url': instance.photoUrl,
      'country_code': instance.countryCode,
      'language_code': instance.languageCode,
      'user_type_id': instance.userTypeId,
      'gender_id': instance.genderId,
      'photo': instance.photo,
      'about': instance.about,
      'phone': instance.phone,
      'phone_hidden': instance.phoneHidden,
      'email': instance.email,
      'dob': instance.dob,
      'gender': instance.gender,
      'password': instance.password,
      'remember_token': instance.rememberToken,
      'can_be_impersonate': instance.canBeImpersonate,
      'disable_comments': instance.disableComments,
      'ip_addr': instance.ipAddr,
      'provider': instance.provider,
      'provider_id': instance.providerId,
      'email_token': instance.emailToken,
      'phone_token': instance.phoneToken,
      'verified_email': instance.verifiedEmail,
      'verified_phone': instance.verifiedPhone,
      'accept_terms': instance.acceptTerms,
      'accept_marketing_offers': instance.acceptMarketingOffers,
      'time_zone': instance.timeZone,
      'blocked': instance.blocked,
      'ims': instance.ims,
      'closed': instance.closed,
      'last_activity': instance.lastActivity,
    };

_$ExtraImpl _$$ExtraImplFromJson(Map<String, dynamic> json) => _$ExtraImpl(
      emailOrPhoneChanged: json['emailOrPhoneChanged'] as bool?,
      sendPhoneVerification: json['sendPhoneVerification'] == null
          ? null
          : SendPhoneVerification.fromJson(
              json['sendPhoneVerification'] as Map<String, dynamic>),
      mail: json['mail'] == null
          ? null
          : Mail.fromJson(json['mail'] as Map<String, dynamic>),
      photo: json['photo'] as List<dynamic>?,
    );

Map<String, dynamic> _$$ExtraImplToJson(_$ExtraImpl instance) =>
    <String, dynamic>{
      'emailOrPhoneChanged': instance.emailOrPhoneChanged,
      'sendPhoneVerification': instance.sendPhoneVerification,
      'mail': instance.mail,
      'photo': instance.photo,
    };

_$SendPhoneVerificationImpl _$$SendPhoneVerificationImplFromJson(
        Map<String, dynamic> json) =>
    _$SendPhoneVerificationImpl(
      success: json['success'] as bool?,
      phoneVerificationSent: json['phoneVerificationSent'] as bool?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$SendPhoneVerificationImplToJson(
        _$SendPhoneVerificationImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'phoneVerificationSent': instance.phoneVerificationSent,
      'message': instance.message,
    };

_$MailImpl _$$MailImplFromJson(Map<String, dynamic> json) => _$MailImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$MailImplToJson(_$MailImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
    };
