// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_comment_of_feed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeedCommentModelImpl _$$FeedCommentModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FeedCommentModelImpl(
      id: json['id'] as String?,
      appFeedId: json['appFeedId'] as String?,
      userId: json['userId'] as String?,
      parentId: json['parentId'] as String?,
      comment: json['comment'] as String?,
      createdAt: json['createdAt'] as String?,
      photo: json['photo'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$FeedCommentModelImplToJson(
        _$FeedCommentModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'appFeedId': instance.appFeedId,
      'userId': instance.userId,
      'parentId': instance.parentId,
      'comment': instance.comment,
      'createdAt': instance.createdAt,
      'photo': instance.photo,
      'name': instance.name,
    };
