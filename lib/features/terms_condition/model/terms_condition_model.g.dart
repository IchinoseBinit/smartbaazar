// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'terms_condition_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TermsConditionsModelImpl _$$TermsConditionsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TermsConditionsModelImpl(
      success: json['success'] as bool,
      message: json['message'] as String?,
      result: Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TermsConditionsModelImplToJson(
        _$TermsConditionsModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'result': instance.result,
    };

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      id: (json['id'] as num).toInt(),
      parentId: (json['parentId'] as num?)?.toInt(),
      type: json['type'] as String,
      name: json['name'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parentId': instance.parentId,
      'type': instance.type,
      'name': instance.name,
      'title': instance.title,
      'content': instance.content,
    };
