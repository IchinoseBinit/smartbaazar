import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_subscription_model.freezed.dart';
part 'get_subscription_model.g.dart';

@freezed
class SubscriptionResponse with _$SubscriptionResponse {
  factory SubscriptionResponse({
    Subscriptions? subscriptions,
  }) = _SubscriptionResponse;

  factory SubscriptionResponse.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionResponseFromJson(json);
}

@freezed
class Subscriptions with _$Subscriptions {
  factory Subscriptions({
    int? current_page,
    List<SubscriptionData>? data,
  }) = _Subscriptions;

  factory Subscriptions.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionsFromJson(json);
}

@freezed
class SubscriptionData with _$SubscriptionData {
  factory SubscriptionData({
    String? id,
    String? user_id,
    String? vendor_id,
    String? followed_date,
    String? status,
    SubscriptionVendorCard? vendor_card,
  }) = _SubscriptionData;

  factory SubscriptionData.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionDataFromJson(json);
}

@freezed
class SubscriptionVendorCard with _$SubscriptionVendorCard {
  factory SubscriptionVendorCard({
    String? name,
    String? photo,
    String? phone,
    String? profile_url,
    int? storycount,
    int? dealzcircle,
    int? subscribed,
    int? connection,
    int? prize_worth,
    bool? has_sponsored_gifts,
    String? nearestbranch,
    String? longitude,
    String? latitude,
    String? membership_id,
    String? membership_title,
    String? membership_color,
  }) = _SubscriptionVendorCard;

  factory SubscriptionVendorCard.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionVendorCardFromJson(json);
}
