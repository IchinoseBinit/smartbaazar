// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_feed_stories_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetFeedStoriesModelImpl _$$GetFeedStoriesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GetFeedStoriesModelImpl(
      data: json['data'] == null
          ? null
          : FeedStoryData.fromJson(json['data'] as Map<String, dynamic>),
      msg: json['msg'] as String?,
    );

Map<String, dynamic> _$$GetFeedStoriesModelImplToJson(
        _$GetFeedStoriesModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'msg': instance.msg,
    };

_$FeedStoryDataImpl _$$FeedStoryDataImplFromJson(Map<String, dynamic> json) =>
    _$FeedStoryDataImpl(
      feedstory: json['feedstory'] == null
          ? null
          : FeedStory.fromJson(json['feedstory'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FeedStoryDataImplToJson(_$FeedStoryDataImpl instance) =>
    <String, dynamic>{
      'feedstory': instance.feedstory,
    };

_$FeedStoryImpl _$$FeedStoryImplFromJson(Map<String, dynamic> json) =>
    _$FeedStoryImpl(
      posts: (json['posts'] as List<dynamic>?)
          ?.map((e) => Post.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FeedStoryImplToJson(_$FeedStoryImpl instance) =>
    <String, dynamic>{
      'posts': instance.posts,
    };

_$PostImpl _$$PostImplFromJson(Map<String, dynamic> json) => _$PostImpl(
      vendorId: json['vendor_id'],
      vendorName: json['vendor_name'] as String?,
      vendorImage: json['vendor_image'] as String?,
      storyCount: (json['story_count'] as num?)?.toInt(),
      hasSponsoredGifts: json['has_sponsored_gifts'] as bool?,
      id: json['id'],
      title: json['title'] as String?,
      image: json['image'] as String?,
      price: json['price'],
      discountedPrice: json['discounted_price'],
      description: json['description'] as String?,
      similarProductCount: json['similarproductcount'],
      commentCount: json['comment_count'],
      averageRating: json['average_rating'],
      discountPercentage: json['discount_percentage'],
      wow: json['wow'],
      wowStatus: json['wow_status'],
    );

Map<String, dynamic> _$$PostImplToJson(_$PostImpl instance) =>
    <String, dynamic>{
      'vendor_id': instance.vendorId,
      'vendor_name': instance.vendorName,
      'vendor_image': instance.vendorImage,
      'story_count': instance.storyCount,
      'has_sponsored_gifts': instance.hasSponsoredGifts,
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'price': instance.price,
      'discounted_price': instance.discountedPrice,
      'description': instance.description,
      'similarproductcount': instance.similarProductCount,
      'comment_count': instance.commentCount,
      'average_rating': instance.averageRating,
      'discount_percentage': instance.discountPercentage,
      'wow': instance.wow,
      'wow_status': instance.wowStatus,
    };
