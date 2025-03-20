// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trending_card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrendingResponseImpl _$$TrendingResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$TrendingResponseImpl(
      trending: (json['trending'] as List<dynamic>)
          .map((e) => TrendingVendor.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TrendingResponseImplToJson(
        _$TrendingResponseImpl instance) =>
    <String, dynamic>{
      'trending': instance.trending,
    };

_$TrendingVendorImpl _$$TrendingVendorImplFromJson(Map<String, dynamic> json) =>
    _$TrendingVendorImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      username: json['username'] as String?,
      membershipPlanId: json['membership_plan_id'] as String?,
      membershipStatus: json['membership_status'] as String?,
      photo: json['photo'] as String?,
      phone: json['phone'] as String?,
      branchLocation: json['branch_location'] as String?,
      nearestBranch: json['nearestBranch'],
      vendor_card: json['vendor_card'] == null
          ? null
          : TrendingVendorCard.fromJson(
              json['vendor_card'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TrendingVendorImplToJson(
        _$TrendingVendorImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'membership_plan_id': instance.membershipPlanId,
      'membership_status': instance.membershipStatus,
      'photo': instance.photo,
      'phone': instance.phone,
      'branch_location': instance.branchLocation,
      'nearestBranch': instance.nearestBranch,
      'vendor_card': instance.vendor_card,
    };

_$TrendingVendorCardImpl _$$TrendingVendorCardImplFromJson(
        Map<String, dynamic> json) =>
    _$TrendingVendorCardImpl(
      name: json['name'] as String?,
      photo: json['photo'] as String?,
      longitude: json['longitude'] as String?,
      latitude: json['latitude'] as String?,
      subscribers: (json['subscribers'] as num?)?.toInt(),
      phone: json['phone'] as String?,
      profile_url: json['profile_url'] as String?,
      storycount: (json['storycount'] as num?)?.toInt(),
      prize_worth: (json['prize_worth'] as num?)?.toInt(),
      has_sponsored_gifts: json['has_sponsored_gifts'] as bool?,
      nearestbranch: json['nearestbranch'] as String?,
      membership_id: json['membership_id'] as String?,
      membership_title: json['membership_title'] as String?,
      membership_color: json['membership_color'] as String?,
      connection: (json['connection'] as num?)?.toInt(),
      subscribed: (json['subscribed'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$TrendingVendorCardImplToJson(
        _$TrendingVendorCardImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'photo': instance.photo,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'subscribers': instance.subscribers,
      'phone': instance.phone,
      'profile_url': instance.profile_url,
      'storycount': instance.storycount,
      'prize_worth': instance.prize_worth,
      'has_sponsored_gifts': instance.has_sponsored_gifts,
      'nearestbranch': instance.nearestbranch,
      'membership_id': instance.membership_id,
      'membership_title': instance.membership_title,
      'membership_color': instance.membership_color,
      'connection': instance.connection,
      'subscribed': instance.subscribed,
    };
