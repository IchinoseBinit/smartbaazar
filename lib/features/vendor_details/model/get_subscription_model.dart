import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_subscription_model.freezed.dart';
part 'get_subscription_model.g.dart';

@freezed
class GetSubscriptionModel with _$GetSubscriptionModel {
  const factory GetSubscriptionModel({
    required List<Subscription>? subscriptions,
  }) = _GetSubscriptionModel;

  factory GetSubscriptionModel.fromJson(Map<String, dynamic> json) =>
      _$GetSubscriptionModelFromJson(json);
}

@freezed
class Subscription with _$Subscription {
  const factory Subscription({
    String? id,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'vendor_id') String? vendorId,
    @JsonKey(name: 'followed_date') String? followedDate,
    String? status,
    @JsonKey(name: 'vendor_card') Vendor? vendor,
  }) = _Subscription;

  factory Subscription.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionFromJson(json);
}

@freezed
class Vendor with _$Vendor {
  const factory Vendor({
    
    String? name,
    String? photo,
    String? phone,
    @JsonKey(name: 'profile_url') String? profileUrl,
    @JsonKey(name: 'storycount') int? storyCount,
    @JsonKey(name: 'dealzcircle') int? dealzCircle,
    int? connection,
    @JsonKey(name: 'prize_worth') int? prizeWorth,
    @JsonKey(name: 'has_sponsored_gifts') bool? hasSponsoredGifts,
    String? nearestbranch,
    @JsonKey(name: 'membership_id') String? membershipId,
    @JsonKey(name: 'membership_title') String? membershipTitle,
    @JsonKey(name: 'membership_color') String? membershipColor,
  }) = _Vendor;

  factory Vendor.fromJson(Map<String, dynamic> json) =>
      _$VendorFromJson(json);
}
