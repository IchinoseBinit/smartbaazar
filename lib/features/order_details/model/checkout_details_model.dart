import 'package:freezed_annotation/freezed_annotation.dart';
part 'checkout_details_model.freezed.dart';
part 'checkout_details_model.g.dart';

@freezed
class CheckoutDetailsModel with _$CheckoutDetailsModel {
  factory CheckoutDetailsModel({
    @JsonKey(name: 'vendor') List<Vendor>? vendor,
    @JsonKey(name: 'user') List<User>? user,
    @JsonKey(name: 'coupons') List<Coupon>? coupons,
    @JsonKey(name: 'cart_total') int? cartTotal,
    @JsonKey(name: 'items') List<Item>? items,
    @JsonKey(name: 'msg') String? message,
  }) = _CheckoutDetailsModel;

  factory CheckoutDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$CheckoutDetailsModelFromJson(json);
}

@freezed
class Vendor with _$Vendor {
  factory Vendor() = _Vendor;

  factory Vendor.fromJson(Map<String, dynamic> json) =>
      _$VendorFromJson(json);
}

@freezed
class User with _$User {
  factory User({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'phone') String? phone,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) =>
      _$UserFromJson(json);
}

@freezed
class Coupon with _$Coupon {
  factory Coupon() = _Coupon;

  factory Coupon.fromJson(Map<String, dynamic> json) =>
      _$CouponFromJson(json);
}

@freezed
class Item with _$Item {
  factory Item({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'vendor_id') String? vendorId,
    @JsonKey(name: 'post_id') String? postId,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'qty') String? qty,
    @JsonKey(name: 'price') String? price,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'item_total') int? itemTotal,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) =>
      _$ItemFromJson(json);
}
