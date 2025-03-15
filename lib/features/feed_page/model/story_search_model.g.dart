// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'story_search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StorySearchModelImpl _$$StorySearchModelImplFromJson(
        Map<String, dynamic> json) =>
    _$StorySearchModelImpl(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      msg: json['msg'] as String?,
    );

Map<String, dynamic> _$$StorySearchModelImplToJson(
        _$StorySearchModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'msg': instance.msg,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      homeStory: json['home_story'] == null
          ? null
          : HomeStory.fromJson(json['home_story'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'home_story': instance.homeStory,
    };

_$HomeStoryImpl _$$HomeStoryImplFromJson(Map<String, dynamic> json) =>
    _$HomeStoryImpl(
      story: json['story'] == null
          ? null
          : Story.fromJson(json['story'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HomeStoryImplToJson(_$HomeStoryImpl instance) =>
    <String, dynamic>{
      'story': instance.story,
    };

_$StoryImpl _$$StoryImplFromJson(Map<String, dynamic> json) => _$StoryImpl(
      posts: (json['posts'] as List<dynamic>?)
          ?.map((e) => Post.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$StoryImplToJson(_$StoryImpl instance) =>
    <String, dynamic>{
      'posts': instance.posts,
    };

_$PostImpl _$$PostImplFromJson(Map<String, dynamic> json) => _$PostImpl(
      vendorId: json['vendor_id'] as String?,
      vendorName: json['vendor_name'] as String?,
      vendorImage: json['vendor_image'] as String?,
      hasSponsoredGifts: json['has_sponsored_gifts'] as bool?,
      id: json['id'] as String?,
      title: json['title'] as String?,
      image: json['image'] as String?,
      similarProductCount: (json['similarproductcount'] as num?)?.toInt(),
      commentCount: (json['comment_count'] as num?)?.toInt(),
      averageRating: (json['average_rating'] as num?)?.toDouble(),
      discountPercentage: (json['discount_percentage'] as num?)?.toInt(),
      wow: json['wow'] as String?,
    );

Map<String, dynamic> _$$PostImplToJson(_$PostImpl instance) =>
    <String, dynamic>{
      'vendor_id': instance.vendorId,
      'vendor_name': instance.vendorName,
      'vendor_image': instance.vendorImage,
      'has_sponsored_gifts': instance.hasSponsoredGifts,
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'similarproductcount': instance.similarProductCount,
      'comment_count': instance.commentCount,
      'average_rating': instance.averageRating,
      'discount_percentage': instance.discountPercentage,
      'wow': instance.wow,
    };
