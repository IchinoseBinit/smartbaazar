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
          : GetForYouFeedData.fromJson(json['data'] as Map<String, dynamic>),
      msg: json['msg'] as String?,
    );

Map<String, dynamic> _$$GetForYouFeedModelImplToJson(
        _$GetForYouFeedModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'msg': instance.msg,
    };

_$GetForYouFeedDataImpl _$$GetForYouFeedDataImplFromJson(
        Map<String, dynamic> json) =>
    _$GetForYouFeedDataImpl(
      feedPost: (json['feed_post'] as List<dynamic>?)
          ?.map((e) => FeedPost.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetForYouFeedDataImplToJson(
        _$GetForYouFeedDataImpl instance) =>
    <String, dynamic>{
      'feed_post': instance.feedPost,
    };

_$FeedPostImpl _$$FeedPostImplFromJson(Map<String, dynamic> json) =>
    _$FeedPostImpl(
      id: json['id'] as String?,
      userId: json['user_id'] as String?,
      image: json['image'] as String?,
      caption: json['caption'] as String?,
      like: json['like'] as String?,
      approved: json['approved'] as String?,
      offers: json['offers'] as String?,
      captionTitle: json['caption_title'] as String?,
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      wow: json['wow'] as String?,
      views: json['views'] as String?,
      wow_status: json['wow_status'] as String?,
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
      'wow_status': instance.wow_status,
      'created_at': instance.createdAt,
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
      interested: json['interested'] as String?,
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
      distance: (json['distance'] as num?)?.toDouble(),
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
