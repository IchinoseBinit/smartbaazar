// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_posts_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomePostsImpl _$$HomePostsImplFromJson(Map<String, dynamic> json) =>
    _$HomePostsImpl(
      sponsored_post: (json['sponsored_post'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      trending: (json['trending'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      hot_products: (json['hot_products'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      new_products: (json['new_products'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      jobs: (json['jobs'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      events: (json['events'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      b2b_products: (json['b2b_products'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HomePostsImplToJson(_$HomePostsImpl instance) =>
    <String, dynamic>{
      'sponsored_post': instance.sponsored_post,
      'trending': instance.trending,
      'hot_products': instance.hot_products,
      'new_products': instance.new_products,
      'jobs': instance.jobs,
      'events': instance.events,
      'b2b_products': instance.b2b_products,
    };
