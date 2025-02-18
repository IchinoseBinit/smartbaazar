// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_subscription_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetSubscriptionModelImpl _$$GetSubscriptionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GetSubscriptionModelImpl(
      subscriptions: (json['subscriptions'] as List<dynamic>?)
          ?.map((e) => Subscription.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetSubscriptionModelImplToJson(
        _$GetSubscriptionModelImpl instance) =>
    <String, dynamic>{
      'subscriptions': instance.subscriptions,
    };

_$SubscriptionImpl _$$SubscriptionImplFromJson(Map<String, dynamic> json) =>
    _$SubscriptionImpl(
      id: json['id'] as String?,
      userId: json['user_id'] as String?,
      vendorId: json['vendor_id'] as String?,
      followedDate: json['followed_date'] as String?,
      status: json['status'] as String?,
      vendor: json['vendor_card'] == null
          ? null
          : Vendor.fromJson(json['vendor_card'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SubscriptionImplToJson(_$SubscriptionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'vendor_id': instance.vendorId,
      'followed_date': instance.followedDate,
      'status': instance.status,
      'vendor_card': instance.vendor,
    };

_$VendorImpl _$$VendorImplFromJson(Map<String, dynamic> json) => _$VendorImpl(
      name: json['name'] as String?,
      photo: json['photo'] as String?,
      phone: json['phone'] as String?,
      profileUrl: json['profile_url'] as String?,
      storyCount: (json['storycount'] as num?)?.toInt(),
      dealzCircle: (json['dealzcircle'] as num?)?.toInt(),
      connection: (json['connection'] as num?)?.toInt(),
      prizeWorth: (json['prize_worth'] as num?)?.toInt(),
      hasSponsoredGifts: json['has_sponsored_gifts'] as bool?,
      nearestbranch: json['nearestbranch'] as String?,
      membershipId: json['membership_id'] as String?,
      membershipTitle: json['membership_title'] as String?,
      membershipColor: json['membership_color'] as String?,
    );

Map<String, dynamic> _$$VendorImplToJson(_$VendorImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'photo': instance.photo,
      'phone': instance.phone,
      'profile_url': instance.profileUrl,
      'storycount': instance.storyCount,
      'dealzcircle': instance.dealzCircle,
      'connection': instance.connection,
      'prize_worth': instance.prizeWorth,
      'has_sponsored_gifts': instance.hasSponsoredGifts,
      'nearestbranch': instance.nearestbranch,
      'membership_id': instance.membershipId,
      'membership_title': instance.membershipTitle,
      'membership_color': instance.membershipColor,
    };
