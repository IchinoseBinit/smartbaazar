// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'screen_category_mode.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryModelImpl _$$CategoryModelImplFromJson(Map<String, dynamic> json) =>
    _$CategoryModelImpl(
      id: (json['id'] as num).toInt(),
      parentId: json['parent_id'] as String?,
      name: json['name'] as String,
      slug: json['slug'] as String,
      description: json['description'] as String?,
      picture: json['picture'] as String?,
      iconClass: json['icon_class'] as String?,
      type: json['type'] as String?,
      hideDescription: json['hide_description'] as String?,
      parentClosure: json['parentClosure'] == null
          ? null
          : ParentClosure.fromJson(
              json['parentClosure'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CategoryModelImplToJson(_$CategoryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parent_id': instance.parentId,
      'name': instance.name,
      'slug': instance.slug,
      'description': instance.description,
      'picture': instance.picture,
      'icon_class': instance.iconClass,
      'type': instance.type,
      'hide_description': instance.hideDescription,
      'parentClosure': instance.parentClosure,
    };

_$ParentClosureImpl _$$ParentClosureImplFromJson(Map<String, dynamic> json) =>
    _$ParentClosureImpl(
      id: (json['id'] as num).toInt(),
      parentId: json['parent_id'] as String?,
      name: json['name'] as String,
      slug: json['slug'] as String,
      description: json['description'] as String?,
      picture: json['picture'] as String?,
      iconClass: json['icon_class'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$ParentClosureImplToJson(_$ParentClosureImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parent_id': instance.parentId,
      'name': instance.name,
      'slug': instance.slug,
      'description': instance.description,
      'picture': instance.picture,
      'icon_class': instance.iconClass,
      'type': instance.type,
    };
