// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchDetailsImpl _$$SearchDetailsImplFromJson(Map<String, dynamic> json) =>
    _$SearchDetailsImpl(
      currentPage: (json['currentPage'] as num).toInt(),
      posts: (json['posts'] as List<dynamic>)
          .map((e) => Post.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SearchDetailsImplToJson(_$SearchDetailsImpl instance) =>
    <String, dynamic>{
      'currentPage': instance.currentPage,
      'posts': instance.posts,
    };

_$PostImpl _$$PostImplFromJson(Map<String, dynamic> json) => _$PostImpl(
      id: json['id'] as String,
      title: json['title'] as String?,
      contact_name: json['contact_name'] as String?,
      price: json['price'] as String?,
      pickup: json['pickup'] as String?,
      visits: json['visits'] as String?,
      discounted_price: json['discounted_price'] as String?,
      brand_new: json['brand_new'] as String?,
      used: json['used'] as String?,
      services: json['services'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$PostImplToJson(_$PostImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'contact_name': instance.contact_name,
      'price': instance.price,
      'pickup': instance.pickup,
      'visits': instance.visits,
      'discounted_price': instance.discounted_price,
      'brand_new': instance.brand_new,
      'used': instance.used,
      'services': instance.services,
      'image': instance.image,
    };
