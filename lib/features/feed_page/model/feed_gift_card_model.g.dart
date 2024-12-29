// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_gift_card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeedGiftCardModelImpl _$$FeedGiftCardModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FeedGiftCardModelImpl(
      buyOrWinCard: (json['buy_or_win_card'] as List<dynamic>?)
          ?.map((e) => BuyOrWinCard.fromJson(e as Map<String, dynamic>))
          .toList(),
      userDetail: json['userDetail'] == null
          ? null
          : UserDetail.fromJson(json['userDetail'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FeedGiftCardModelImplToJson(
        _$FeedGiftCardModelImpl instance) =>
    <String, dynamic>{
      'buy_or_win_card': instance.buyOrWinCard,
      'userDetail': instance.userDetail,
    };

_$BuyOrWinCardImpl _$$BuyOrWinCardImplFromJson(Map<String, dynamic> json) =>
    _$BuyOrWinCardImpl(
      vendorImage: json['vendor_image'] as String?,
      vendorName: json['vendor_name'] as String?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      worth: json['worth'] as String?,
      wow: json['wow'] as String?,
      giftQty: json['gift_qty'] as String?,
      winners: (json['winners'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$BuyOrWinCardImplToJson(_$BuyOrWinCardImpl instance) =>
    <String, dynamic>{
      'vendor_image': instance.vendorImage,
      'vendor_name': instance.vendorName,
      'name': instance.name,
      'image': instance.image,
      'worth': instance.worth,
      'wow': instance.wow,
      'gift_qty': instance.giftQty,
      'winners': instance.winners,
    };

_$UserDetailImpl _$$UserDetailImplFromJson(Map<String, dynamic> json) =>
    _$UserDetailImpl(
      userId: json['user_id'] as String?,
      vendorImage: json['vendor_image'] as String?,
      vendorName: json['vendor_name'] as String?,
      membershipPlanId: json['membership_plan_id'] as String?,
      membershipStatus: json['membership_status'] as String?,
      membershipId: json['membership_id'] as String?,
      membershipTitle: json['membership_title'] as String?,
      membershipColor: json['membership_color'] as String?,
      storyCount: (json['storyCount'] as num?)?.toInt(),
      subscribers: (json['subscribers'] as num?)?.toInt(),
      livePrizes: (json['livePrizes'] as num?)?.toInt(),
      totalContribution: json['total_contribution'] as String?,
    );

Map<String, dynamic> _$$UserDetailImplToJson(_$UserDetailImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'vendor_image': instance.vendorImage,
      'vendor_name': instance.vendorName,
      'membership_plan_id': instance.membershipPlanId,
      'membership_status': instance.membershipStatus,
      'membership_id': instance.membershipId,
      'membership_title': instance.membershipTitle,
      'membership_color': instance.membershipColor,
      'storyCount': instance.storyCount,
      'subscribers': instance.subscribers,
      'livePrizes': instance.livePrizes,
      'total_contribution': instance.totalContribution,
    };
