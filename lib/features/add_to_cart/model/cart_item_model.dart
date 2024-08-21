import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_item_model.freezed.dart';
part 'cart_item_model.g.dart';

@freezed
class CartItem with _$CartItem {
  factory CartItem({
    required String id,
    // required String userId,
    @JsonKey(name: 'vendor_id') String? vendorId,
    //  required String? vendorId,
    @JsonKey(name: 'post_id') String? postId,
    required String name,
    required String qty,
    required String price,
    required String image,
    // required String createdAt,
    // required String updatedAt,
  }) = _CartItem;

  factory CartItem.fromJson(Map<String, dynamic> json) =>
      _$CartItemFromJson(json);
}

@freezed
class Vendor with _$Vendor {
  factory Vendor({
    required String id,
    required String name,
  }) = _Vendor;

  factory Vendor.fromJson(Map<String, dynamic> json) => _$VendorFromJson(json);
}
