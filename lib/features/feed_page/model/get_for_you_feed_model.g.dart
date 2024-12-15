// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_for_you_feed_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetForYouFeedModelImpl _$$GetForYouFeedModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GetForYouFeedModelImpl(
      data: json['data'] == null
          ? null
          : FeedData.fromJson(json['data'] as Map<String, dynamic>),
      message: json['msg'] as String?,
    );

Map<String, dynamic> _$$GetForYouFeedModelImplToJson(
        _$GetForYouFeedModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'msg': instance.message,
    };

_$FeedDataImpl _$$FeedDataImplFromJson(Map<String, dynamic> json) =>
    _$FeedDataImpl(
      feedPost: (json['feed_post'] as List<dynamic>?)
          ?.map((e) => FeedPost.fromJson(e as Map<String, dynamic>))
          .toList(),
      story: (json['story'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, Story.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$FeedDataImplToJson(_$FeedDataImpl instance) =>
    <String, dynamic>{
      'feed_post': instance.feedPost,
      'story': instance.story,
    };

_$FeedPostImpl _$$FeedPostImplFromJson(Map<String, dynamic> json) =>
    _$FeedPostImpl(
      id: json['id'] as String?,
      userId: json['user_id'] as String?,
      image: json['image'] as String?,
      caption: json['caption'] as String?,
      like: json['like'],
      approved: json['approved'] as String?,
      offers: json['offers'],
      captionTitle: json['caption_title'] as String?,
      products: json['products'],
      wow: json['wow'],
      views: json['views'] as String?,
      createdAt: json['created_at'] as String?,
      feedDetail: json['feed_detail'] == null
          ? null
          : FeedDetail.fromJson(json['feed_detail'] as Map<String, dynamic>),
      interested: json['interested'] == null
          ? null
          : Interested.fromJson(json['interested'] as Map<String, dynamic>),
      userDetail: json['userdetail'] == null
          ? null
          : UserDetail.fromJson(json['userdetail'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FeedPostImplToJson(_$FeedPostImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'image': instance.image,
      'caption': instance.caption,
      'like': instance.like,
      'approved': instance.approved,
      'offers': instance.offers,
      'caption_title': instance.captionTitle,
      'products': instance.products,
      'wow': instance.wow,
      'views': instance.views,
      'created_at': instance.createdAt,
      'feed_detail': instance.feedDetail,
      'interested': instance.interested,
      'userdetail': instance.userDetail,
    };

_$FeedDetailImpl _$$FeedDetailImplFromJson(Map<String, dynamic> json) =>
    _$FeedDetailImpl(
      captionTitle: json['cation_title'] as String?,
      caption: json['cation'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$FeedDetailImplToJson(_$FeedDetailImpl instance) =>
    <String, dynamic>{
      'cation_title': instance.captionTitle,
      'cation': instance.caption,
      'image': instance.image,
    };

_$InterestedImpl _$$InterestedImplFromJson(Map<String, dynamic> json) =>
    _$InterestedImpl(
      interested: json['interested'],
      engagement: (json['engagement'] as num?)?.toInt(),
      views: json['views'] as String?,
    );

Map<String, dynamic> _$$InterestedImplToJson(_$InterestedImpl instance) =>
    <String, dynamic>{
      'interested': instance.interested,
      'engagement': instance.engagement,
      'views': instance.views,
    };

_$UserDetailImpl _$$UserDetailImplFromJson(Map<String, dynamic> json) =>
    _$UserDetailImpl(
      vendorName: json['vendor_name'] as String?,
      subscribers: (json['subscribers'] as num?)?.toInt(),
      productCount: (json['productCount'] as num?)?.toInt(),
      hasSponsoredGifts: json['has_sponsored_gifts'] as bool?,
      storyCount: (json['storyCount'] as num?)?.toInt(),
      livePrize: (json['live_prize'] as num?)?.toInt(),
      distance: json['distance'] as List<dynamic>?,
      vendorImage: json['vendor_image'] as String?,
      membershipId: json['membership_id'] as String?,
      membershipTitle: json['membership_title'] as String?,
      membershipColor: json['membership_color'] as String?,
    );

Map<String, dynamic> _$$UserDetailImplToJson(_$UserDetailImpl instance) =>
    <String, dynamic>{
      'vendor_name': instance.vendorName,
      'subscribers': instance.subscribers,
      'productCount': instance.productCount,
      'has_sponsored_gifts': instance.hasSponsoredGifts,
      'storyCount': instance.storyCount,
      'live_prize': instance.livePrize,
      'distance': instance.distance,
      'vendor_image': instance.vendorImage,
      'membership_id': instance.membershipId,
      'membership_title': instance.membershipTitle,
      'membership_color': instance.membershipColor,
    };

_$StoryImpl _$$StoryImplFromJson(Map<String, dynamic> json) => _$StoryImpl(
      vendorName: json['vendor_name'] as String?,
      vendorImage: json['vendor_image'] as String?,
      storyCount: (json['story_count'] as num?)?.toInt(),
      hasSponsoredGifts: json['has_sponsored_gifts'] as bool?,
      posts: (json['posts'] as List<dynamic>?)
          ?.map((e) => StoryPost.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$StoryImplToJson(_$StoryImpl instance) =>
    <String, dynamic>{
      'vendor_name': instance.vendorName,
      'vendor_image': instance.vendorImage,
      'story_count': instance.storyCount,
      'has_sponsored_gifts': instance.hasSponsoredGifts,
      'posts': instance.posts,
    };

_$StoryPostImpl _$$StoryPostImplFromJson(Map<String, dynamic> json) =>
    _$StoryPostImpl(
      id: json['id'] as String?,
      title: json['title'] as String?,
      image: json['image'] as String?,
      similarProductCount: (json['similarproductcount'] as num?)?.toInt(),
      commentCount: json['comment_count'] as String?,
      averageRating: (json['average_rating'] as num?)?.toInt(),
      discountPercentage: json['discount_percentage'],
      wow: json['wow'],
    );

Map<String, dynamic> _$$StoryPostImplToJson(_$StoryPostImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'similarproductcount': instance.similarProductCount,
      'comment_count': instance.commentCount,
      'average_rating': instance.averageRating,
      'discount_percentage': instance.discountPercentage,
      'wow': instance.wow,
    };
