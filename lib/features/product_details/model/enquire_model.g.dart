// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enquire_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EnquireResponseImpl _$$EnquireResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$EnquireResponseImpl(
      data: json['data'] == null
          ? null
          : EnquireData.fromJson(json['data'] as Map<String, dynamic>),
      msg: json['msg'] as String?,
    );

Map<String, dynamic> _$$EnquireResponseImplToJson(
        _$EnquireResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'msg': instance.msg,
    };

_$EnquireDataImpl _$$EnquireDataImplFromJson(Map<String, dynamic> json) =>
    _$EnquireDataImpl(
      enquire: (json['enquire'] as num?)?.toInt(),
      vendor_id: json['vendor_id'] as String?,
      thread: json['thread'] == null
          ? null
          : Thread.fromJson(json['thread'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EnquireDataImplToJson(_$EnquireDataImpl instance) =>
    <String, dynamic>{
      'enquire': instance.enquire,
      'vendor_id': instance.vendor_id,
      'thread': instance.thread,
    };

_$ThreadImpl _$$ThreadImplFromJson(Map<String, dynamic> json) => _$ThreadImpl(
      id: json['id'] as String?,
      post_id: json['post_id'] as String?,
      subject: json['subject'] as String?,
    );

Map<String, dynamic> _$$ThreadImplToJson(_$ThreadImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'post_id': instance.post_id,
      'subject': instance.subject,
    };
