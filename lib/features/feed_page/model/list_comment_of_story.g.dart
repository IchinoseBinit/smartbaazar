// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_comment_of_story.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentModelImpl _$$CommentModelImplFromJson(Map<String, dynamic> json) =>
    _$CommentModelImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      photo: json['photo'] as String?,
      comment: json['comment'] as String?,
      parentId: json['parent_id'] as String?,
      replies: (json['replies'] as List<dynamic>?)
          ?.map((e) => CommentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CommentModelImplToJson(_$CommentModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'photo': instance.photo,
      'comment': instance.comment,
      'parent_id': instance.parentId,
      'replies': instance.replies,
    };
