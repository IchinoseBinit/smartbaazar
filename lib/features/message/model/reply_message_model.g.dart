// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reply_message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReplyMessageModelImpl _$$ReplyMessageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ReplyMessageModelImpl(
      success: json['success'] as bool,
      message: json['message'] as String?,
      result: ReplyResult.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ReplyMessageModelImplToJson(
        _$ReplyMessageModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'result': instance.result,
    };

_$ReplyResultImpl _$$ReplyResultImplFromJson(Map<String, dynamic> json) =>
    _$ReplyResultImpl(
      id: (json['id'] as num).toInt(),
      postId: json['post_id'] as String,
      subject: json['subject'] as String,
    );

Map<String, dynamic> _$$ReplyResultImplToJson(_$ReplyResultImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'post_id': instance.postId,
      'subject': instance.subject,
    };
