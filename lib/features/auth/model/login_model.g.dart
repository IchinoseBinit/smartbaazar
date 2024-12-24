// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginDataImpl _$$LoginDataImplFromJson(Map<String, dynamic> json) =>
    _$LoginDataImpl(
      result: LoginDataResult.fromJson(json['result'] as Map<String, dynamic>),
      extra: LoginDataExtra.fromJson(json['extra'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LoginDataImplToJson(_$LoginDataImpl instance) =>
    <String, dynamic>{
      'result': instance.result,
      'extra': instance.extra,
    };

_$LoginDataResultImpl _$$LoginDataResultImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginDataResultImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      username: json['username'] as String,
      photo_url: json['photo_url'] as String?,
      gender_id: json['gender_id'] as String?,
      photo: json['photo'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      dob: json['dob'] as String?,
    );

Map<String, dynamic> _$$LoginDataResultImplToJson(
        _$LoginDataResultImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'photo_url': instance.photo_url,
      'gender_id': instance.gender_id,
      'photo': instance.photo,
      'phone': instance.phone,
      'email': instance.email,
      'dob': instance.dob,
    };

_$LoginDataExtraImpl _$$LoginDataExtraImplFromJson(Map<String, dynamic> json) =>
    _$LoginDataExtraImpl(
      authToken: json['authToken'] as String,
      refreshToken: json['refreshToken'] as String,
    );

Map<String, dynamic> _$$LoginDataExtraImplToJson(
        _$LoginDataExtraImpl instance) =>
    <String, dynamic>{
      'authToken': instance.authToken,
      'refreshToken': instance.refreshToken,
    };
