// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alert_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AlertModelImpl _$$AlertModelImplFromJson(Map<String, dynamic> json) =>
    _$AlertModelImpl(
      alerts: (json['alerts'] as List<dynamic>?)
          ?.map((e) => Alert.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AlertModelImplToJson(_$AlertModelImpl instance) =>
    <String, dynamic>{
      'alerts': instance.alerts,
    };

_$AlertImpl _$$AlertImplFromJson(Map<String, dynamic> json) => _$AlertImpl(
      id: json['id'] as String?,
      userId: json['user_id'] as String?,
      title: json['title'] as String?,
      body: json['body'] as String?,
      image: json['image'] as String?,
      clickAction: json['click_action'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$AlertImplToJson(_$AlertImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'title': instance.title,
      'body': instance.body,
      'image': instance.image,
      'click_action': instance.clickAction,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
