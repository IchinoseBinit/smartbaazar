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
    );

Map<String, dynamic> _$$FeedDataImplToJson(_$FeedDataImpl instance) =>
    <String, dynamic>{
      'feed_post': instance.feedPost,
    };

_$FeedPostImpl _$$FeedPostImplFromJson(Map<String, dynamic> json) =>
    _$FeedPostImpl(
      id: json['id'] as String?,
      userId: json['user_id'] as String?,
      image: json['image'] as String?,
      caption: json['caption'] as String?,
      like: json['like'],
      approved: json['approved'] as String?,
      offers: json['offers'] == null
          ? null
          : Offers.fromJson(json['offers'] as Map<String, dynamic>),
      captionTitle: json['caption_title'] as String?,
      products: json['products'] as String?,
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

_$OffersImpl _$$OffersImplFromJson(Map<String, dynamic> json) => _$OffersImpl(
      offers: json['offers'],
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OffersImplToJson(_$OffersImpl instance) =>
    <String, dynamic>{
      'offers': instance.offers,
      'products': instance.products,
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
