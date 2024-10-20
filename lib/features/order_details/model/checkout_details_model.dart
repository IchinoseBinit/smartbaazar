import 'package:freezed_annotation/freezed_annotation.dart';

part 'checkout_details_model.freezed.dart';
part 'checkout_details_model.g.dart';

@freezed
class CheckoutDetailsModel with _$CheckoutDetailsModel {
  const factory CheckoutDetailsModel({
    @JsonKey(name: 'data') CheckoutData? data,
    @JsonKey(name: 'msg') String? message,
  }) = _CheckoutDetailsModel;

  factory CheckoutDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$CheckoutDetailsModelFromJson(json);
}

@freezed
class CheckoutData with _$CheckoutData {
  const factory CheckoutData({
    List<Vendor>? vendor,
    List<User>? user,
    List<dynamic>? coupons,
    @JsonKey(name: 'cart_total') int? cartTotal,
    List<Item>? items,
  }) = _CheckoutData;

  factory CheckoutData.fromJson(Map<String, dynamic> json) =>
      _$CheckoutDataFromJson(json);
}

@freezed
class Vendor with _$Vendor {
  const factory Vendor({
    String? id,
    String? name,
    @JsonKey(name: 'payment_qr') String? paymentQr,
  }) = _Vendor;

  factory Vendor.fromJson(Map<String, dynamic> json) => _$VendorFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    String? id,
    String? name,
    String? email,
    String? phone,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class Item with _$Item {
  const factory Item({
    String? id,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'vendor_id') String? vendorId,
    @JsonKey(name: 'post_id') String? postId,
    String? name,
    required String qty,
    required String price,
    String? image,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'item_total') int? itemTotal,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}
