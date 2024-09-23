import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_subscription_model.freezed.dart';
part 'get_subscription_model.g.dart';

@freezed
class GetSubscriptionModel with _$GetSubscriptionModel {
  const factory GetSubscriptionModel({
    required List<Subscription> subscriptions,
  }) = _GetSubscriptionModel;

  factory GetSubscriptionModel.fromJson(Map<String, dynamic> json) =>
      _$GetSubscriptionModelFromJson(json);
}

@freezed
class Subscription with _$Subscription {
  const factory Subscription({
    required String id,
    required String userId,
    required String vendorId,
    @JsonKey(name: 'followed_date') required String followedDate,
    required String status,
    required Vendor vendor,
  }) = _Subscription;

  factory Subscription.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionFromJson(json);
}

@freezed
class Vendor with _$Vendor {
  const factory Vendor({
    required String id,
    required String name,
    required String username,
  }) = _Vendor;

  factory Vendor.fromJson(Map<String, dynamic> json) =>
      _$VendorFromJson(json);
}
