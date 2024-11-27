// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_us_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContactUsModelImpl _$$ContactUsModelImplFromJson(Map<String, dynamic> json) =>
    _$ContactUsModelImpl(
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      email: json['email'] as String,
      message: json['message'] as String,
      countryCode: json['country_code'] as String,
      countryName: json['country_name'] as String,
      companyName: json['company_name'] as String,
    );

Map<String, dynamic> _$$ContactUsModelImplToJson(
        _$ContactUsModelImpl instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'message': instance.message,
      'country_code': instance.countryCode,
      'country_name': instance.countryName,
      'company_name': instance.companyName,
    };
