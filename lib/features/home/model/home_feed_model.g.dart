// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_feed_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeedStoryResponseImpl _$$FeedStoryResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$FeedStoryResponseImpl(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      msg: json['msg'] as String?,
    );

Map<String, dynamic> _$$FeedStoryResponseImplToJson(
        _$FeedStoryResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'msg': instance.msg,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      feedStory: (json['feed_story'] as List<dynamic>)
          .map((e) => FeedStory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'feed_story': instance.feedStory,
    };

_$FeedStoryImpl _$$FeedStoryImplFromJson(Map<String, dynamic> json) =>
    _$FeedStoryImpl(
      id: json['id'] as String,
      vendorName: json['vendor_name'] as String,
      vendorImage: json['vendor_image'] as String,
      storyCount: (json['story_count'] as num).toInt(),
      hasSponsoredGifts: json['has_sponsored_gifts'] as bool,
      posts: (json['posts'] as List<dynamic>)
          .map((e) => Post.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FeedStoryImplToJson(_$FeedStoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'vendor_name': instance.vendorName,
      'vendor_image': instance.vendorImage,
      'story_count': instance.storyCount,
      'has_sponsored_gifts': instance.hasSponsoredGifts,
      'posts': instance.posts,
    };

_$PostImpl _$$PostImplFromJson(Map<String, dynamic> json) => _$PostImpl(
      vendorName: json['vendor_name'] as String,
      vendorImage: json['vendor_image'] as String,
      storyCount: (json['story_count'] as num).toInt(),
      hasSponsoredGifts: json['has_sponsored_gifts'] as bool,
      id: json['id'] as String,
      title: json['title'] as String,
      image: json['image'] as String,
      similarProductCount: (json['similarproductcount'] as num).toInt(),
      commentCount: json['comment_count'] as String,
      averageRating: (json['average_rating'] as num).toDouble(),
      discountPercentage: (json['discount_percentage'] as num?)?.toDouble(),
      wow: json['wow'] as String?,
    );

Map<String, dynamic> _$$PostImplToJson(_$PostImpl instance) =>
    <String, dynamic>{
      'vendor_name': instance.vendorName,
      'vendor_image': instance.vendorImage,
      'story_count': instance.storyCount,
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
