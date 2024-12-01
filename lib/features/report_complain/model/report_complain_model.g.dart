// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_complain_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReportComplainModelImpl _$$ReportComplainModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ReportComplainModelImpl(
      reportTypeId: json['report_type_id'] as String,
      email: json['email'] as String,
      message: json['message'] as String,
      captchaKey: json['captcha_key'] as String?,
    );

Map<String, dynamic> _$$ReportComplainModelImplToJson(
        _$ReportComplainModelImpl instance) =>
    <String, dynamic>{
      'report_type_id': instance.reportTypeId,
      'email': instance.email,
      'message': instance.message,
      'captcha_key': instance.captchaKey,
    };
