// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dropdown_value_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryImpl _$$CategoryImplFromJson(Map<String, dynamic> json) =>
    _$CategoryImpl(
      id: (json['id'] as num).toInt(),
      parentId: json['parentId'] as String?,
      name: json['name'] as String,
      slug: json['slug'] as String,
      description: json['description'] as String?,
      iconClass: json['iconClass'] as String?,
      picture: json['picture'] as String,
    );

Map<String, dynamic> _$$CategoryImplToJson(_$CategoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parentId': instance.parentId,
      'name': instance.name,
      'slug': instance.slug,
      'description': instance.description,
      'iconClass': instance.iconClass,
      'picture': instance.picture,
    };

_$ProductTypeImpl _$$ProductTypeImplFromJson(Map<String, dynamic> json) =>
    _$ProductTypeImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$ProductTypeImplToJson(_$ProductTypeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$CityListImpl _$$CityListImplFromJson(Map<String, dynamic> json) =>
    _$CityListImpl(
      id: (json['id'] as num).toInt(),
      countryCode: json['country_code'] as String?,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$CityListImplToJson(_$CityListImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'country_code': instance.countryCode,
      'name': instance.name,
    };
