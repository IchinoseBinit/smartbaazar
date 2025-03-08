// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_subscription_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubscriptionResponseImpl _$$SubscriptionResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SubscriptionResponseImpl(
      subscriptions: json['subscriptions'] == null
          ? null
          : Subscriptions.fromJson(
              json['subscriptions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SubscriptionResponseImplToJson(
        _$SubscriptionResponseImpl instance) =>
    <String, dynamic>{
      'subscriptions': instance.subscriptions,
    };

_$SubscriptionsImpl _$$SubscriptionsImplFromJson(Map<String, dynamic> json) =>
    _$SubscriptionsImpl(
      current_page: (json['current_page'] as num?)?.toInt(),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => SubscriptionData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SubscriptionsImplToJson(_$SubscriptionsImpl instance) =>
    <String, dynamic>{
      'current_page': instance.current_page,
      'data': instance.data,
    };

_$SubscriptionDataImpl _$$SubscriptionDataImplFromJson(
        Map<String, dynamic> json) =>
    _$SubscriptionDataImpl(
      id: json['id'] as String?,
      user_id: json['user_id'] as String?,
      vendor_id: json['vendor_id'] as String?,
      followed_date: json['followed_date'] as String?,
      status: json['status'] as String?,
      vendor_card: json['vendor_card'] == null
          ? null
          : SubscriptionVendorCard.fromJson(
              json['vendor_card'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SubscriptionDataImplToJson(
        _$SubscriptionDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.user_id,
      'vendor_id': instance.vendor_id,
      'followed_date': instance.followed_date,
      'status': instance.status,
      'vendor_card': instance.vendor_card,
    };

_$SubscriptionVendorCardImpl _$$SubscriptionVendorCardImplFromJson(
        Map<String, dynamic> json) =>
    _$SubscriptionVendorCardImpl(
      name: json['name'] as String?,
      photo: json['photo'] as String?,
      phone: json['phone'] as String?,
      profile_url: json['profile_url'] as String?,
      storycount: (json['storycount'] as num?)?.toInt(),
      dealzcircle: (json['dealzcircle'] as num?)?.toInt(),
      subscribed: (json['subscribed'] as num?)?.toInt(),
      connection: (json['connection'] as num?)?.toInt(),
      prize_worth: (json['prize_worth'] as num?)?.toInt(),
      has_sponsored_gifts: json['has_sponsored_gifts'] as bool?,
      nearestbranch: json['nearestbranch'] as String?,
      longitude: json['longitude'] as String?,
      latitude: json['latitude'] as String?,
      membership_id: json['membership_id'] as String?,
      membership_title: json['membership_title'] as String?,
      membership_color: json['membership_color'] as String?,
    );

Map<String, dynamic> _$$SubscriptionVendorCardImplToJson(
        _$SubscriptionVendorCardImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'photo': instance.photo,
      'phone': instance.phone,
      'profile_url': instance.profile_url,
      'storycount': instance.storycount,
      'dealzcircle': instance.dealzcircle,
      'subscribed': instance.subscribed,
      'connection': instance.connection,
      'prize_worth': instance.prize_worth,
      'has_sponsored_gifts': instance.has_sponsored_gifts,
      'nearestbranch': instance.nearestbranch,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'membership_id': instance.membership_id,
      'membership_title': instance.membership_title,
      'membership_color': instance.membership_color,
    };
