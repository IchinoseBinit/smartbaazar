// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_feed_of_following_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetFeedOfFollowingModelImpl _$$GetFeedOfFollowingModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GetFeedOfFollowingModelImpl(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      msg: json['msg'] as String?,
    );

Map<String, dynamic> _$$GetFeedOfFollowingModelImplToJson(
        _$GetFeedOfFollowingModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'msg': instance.msg,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      feedPost: (json['feed_post'] as List<dynamic>?)
          ?.map((e) => FeedPost.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'feed_post': instance.feedPost,
    };

_$FeedPostImpl _$$FeedPostImplFromJson(Map<String, dynamic> json) =>
    _$FeedPostImpl(
      id: json['id'] as String?,
      image: json['image'] as String?,
      caption: json['caption'] as String?,
      captionTitle: json['caption_title'] as String?,
      views: json['views'] as String?,
      wow: json['wow'],
      userId: json['user_id'] as String?,
      offers: json['offers'] as String?,
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
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
      'image': instance.image,
      'caption': instance.caption,
      'caption_title': instance.captionTitle,
      'views': instance.views,
      'wow': instance.wow,
      'user_id': instance.userId,
      'offers': instance.offers,
      'products': instance.products,
      'feed_detail': instance.feedDetail,
      'interested': instance.interested,
      'userdetail': instance.userDetail,
    };

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      id: json['id'] as String?,
      title: json['title'] as String?,
      price: json['price'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'image': instance.image,
    };

_$FeedDetailImpl _$$FeedDetailImplFromJson(Map<String, dynamic> json) =>
    _$FeedDetailImpl(
      captionTitle: json['caption_title'] as String?,
      caption: json['caption'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$FeedDetailImplToJson(_$FeedDetailImpl instance) =>
    <String, dynamic>{
      'caption_title': instance.captionTitle,
      'caption': instance.caption,
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
      distance: json['distance'],
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
