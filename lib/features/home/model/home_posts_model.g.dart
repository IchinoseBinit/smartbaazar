// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_posts_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomePostsImpl _$$HomePostsImplFromJson(Map<String, dynamic> json) =>
    _$HomePostsImpl(
      sponsored_posts: (json['sponsored_posts'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      trending: (json['trending'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HomePostsImplToJson(_$HomePostsImpl instance) =>
    <String, dynamic>{
      'sponsored_posts': instance.sponsored_posts,
      'trending': instance.trending,
    };
