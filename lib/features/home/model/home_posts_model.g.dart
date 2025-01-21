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
      sliders: (json['sliders'] as List<dynamic>)
          .map((e) => SliderModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HomePostsImplToJson(_$HomePostsImpl instance) =>
    <String, dynamic>{
      'sponsored_posts': instance.sponsored_posts,
      'trending': instance.trending,
      'sliders': instance.sliders,
    };

_$SliderModelImpl _$$SliderModelImplFromJson(Map<String, dynamic> json) =>
    _$SliderModelImpl(
      id: json['id'] as String,
      image: json['image'] as String,
      description: json['description'] as String,
      link: json['link'] as String,
      page: json['page'] as String,
      status: json['status'] as String,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$SliderModelImplToJson(_$SliderModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'description': instance.description,
      'link': instance.link,
      'page': instance.page,
      'status': instance.status,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
