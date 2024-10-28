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
    );

Map<String, dynamic> _$$UpdateUserDetailImplToJson(
        _$UpdateUserDetailImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'result': instance.result,
    };

_$UserDetailResultImpl _$$UserDetailResultImplFromJson(
        Map<String, dynamic> json) =>
    _$UserDetailResultImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      username: json['username'] as String?,
      genderId: json['gender_id'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      dob: json['dob'] as String?,
      gender: json['gender'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$$UserDetailResultImplToJson(
        _$UserDetailResultImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'gender_id': instance.genderId,
      'phone': instance.phone,
      'email': instance.email,
      'dob': instance.dob,
      'gender': instance.gender,
      'password': instance.password,
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
