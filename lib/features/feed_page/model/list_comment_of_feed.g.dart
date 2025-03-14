// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_comment_of_feed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeedCommentModelImpl _$$FeedCommentModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FeedCommentModelImpl(
      id: json['id'] as String?,
      app_feed_id: json['app_feed_id'] as String?,
      user_id: json['user_id'] as String?,
      parent_id: json['parent_id'] as String?,
      comment: json['comment'] as String?,
      created_at: json['created_at'] as String?,
      photo: json['photo'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$FeedCommentModelImplToJson(
        _$FeedCommentModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'app_feed_id': instance.app_feed_id,
      'user_id': instance.user_id,
      'parent_id': instance.parent_id,
      'comment': instance.comment,
      'created_at': instance.created_at,
      'photo': instance.photo,
      'name': instance.name,
    };
