// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'faq_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FAQModelImpl _$$FAQModelImplFromJson(Map<String, dynamic> json) =>
    _$FAQModelImpl(
      success: json['success'] as bool,
      message: json['message'] as String?,
      result: FAQResult.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FAQModelImplToJson(_$FAQModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'result': instance.result,
    };

_$FAQResultImpl _$$FAQResultImplFromJson(Map<String, dynamic> json) =>
    _$FAQResultImpl(
      id: (json['id'] as num).toInt(),
      parentId: (json['parentId'] as num?)?.toInt(),
      type: json['type'] as String,
      name: json['name'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
    );

Map<String, dynamic> _$$FAQResultImplToJson(_$FAQResultImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parentId': instance.parentId,
      'type': instance.type,
      'name': instance.name,
      'title': instance.title,
      'content': instance.content,
    };
