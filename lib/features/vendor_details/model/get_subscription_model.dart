import 'package:freezed_annotation/freezed_annotation.dart';

import '../../add_to_cart/model/cart_item_model.dart';

part 'get_subscription_model.freezed.dart';
part 'get_subscription_model.g.dart';

@freezed
class GetSubscriptionModel with _$GetSubscriptionModel {
  const factory GetSubscriptionModel({
     List<Subscription>? subscriptions,
  }) = _GetSubscriptionModel;

  factory GetSubscriptionModel.fromJson(Map<String, dynamic> json) =>
      _$GetSubscriptionModelFromJson(json);
}

@freezed
class Subscription with _$Subscription {
  const factory Subscription({
     String? id,
     String? userId,
     String? vendorId,
    @JsonKey(name: 'followed_date') required String? followedDate,
     String? status,
     Vendor? vendor,
  }) = _Subscription;

  factory Subscription.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionFromJson(json);
}

// @freezed
// class Vendor with _$Vendor {
//   const factory Vendor({
//     required String? id,
//     required String? name,
//     required String? username,
//   }) = _Vendor;

//   factory Vendor.fromJson(Map<String, dynamic> json) =>
//       _$VendorFromJson(json);
// }
