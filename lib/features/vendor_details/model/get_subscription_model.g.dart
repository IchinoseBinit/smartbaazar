// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_subscription_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetSubscriptionModelImpl _$$GetSubscriptionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GetSubscriptionModelImpl(
      subscriptions: (json['subscriptions'] as List<dynamic>)
          .map((e) => Subscription.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetSubscriptionModelImplToJson(
        _$GetSubscriptionModelImpl instance) =>
    <String, dynamic>{
      'subscriptions': instance.subscriptions,
    };

_$SubscriptionImpl _$$SubscriptionImplFromJson(Map<String, dynamic> json) =>
    _$SubscriptionImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      vendorId: json['vendorId'] as String,
      followedDate: json['followed_date'] as String,
      status: json['status'] as String,
      vendor: Vendor.fromJson(json['vendor'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SubscriptionImplToJson(_$SubscriptionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'vendorId': instance.vendorId,
      'followed_date': instance.followedDate,
      'status': instance.status,
      'vendor': instance.vendor,
    };

_$VendorImpl _$$VendorImplFromJson(Map<String, dynamic> json) => _$VendorImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      username: json['username'] as String,
    );

Map<String, dynamic> _$$VendorImplToJson(_$VendorImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
    };
