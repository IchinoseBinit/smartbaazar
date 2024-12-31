// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_feed_dropdown.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductsFeedDropdownImpl _$$ProductsFeedDropdownImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductsFeedDropdownImpl(
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProductsFeedDropdownImplToJson(
        _$ProductsFeedDropdownImpl instance) =>
    <String, dynamic>{
      'products': instance.products,
    };

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      id: json['id'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
    };
