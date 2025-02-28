// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'smart_biz_login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BizLoginResponseImpl _$$BizLoginResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BizLoginResponseImpl(
      responseCode: json['responseCode'] as String?,
      message: json['message'] as String?,
      totalSize: (json['totalSize'] as num?)?.toInt(),
      limit: (json['limit'] as num?)?.toInt(),
      offset: (json['offset'] as num?)?.toInt(),
      data: json['data'] == null
          ? null
          : BizLoginData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BizLoginResponseImplToJson(
        _$BizLoginResponseImpl instance) =>
    <String, dynamic>{
      'responseCode': instance.responseCode,
      'message': instance.message,
      'totalSize': instance.totalSize,
      'limit': instance.limit,
      'offset': instance.offset,
      'data': instance.data,
    };

_$BizLoginDataImpl _$$BizLoginDataImplFromJson(Map<String, dynamic> json) =>
    _$BizLoginDataImpl(
      token: json['token'] as String?,
      isActive: (json['isActive'] as num?)?.toInt(),
      isPhoneVerified: (json['isPhoneVerified'] as num?)?.toInt(),
      isProfileVerified: (json['isProfileVerified'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$BizLoginDataImplToJson(_$BizLoginDataImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'isActive': instance.isActive,
      'isPhoneVerified': instance.isPhoneVerified,
      'isProfileVerified': instance.isProfileVerified,
    };
