import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_order_model.freezed.dart';
part 'my_order_model.g.dart';

@freezed
class MyOrderModel with _$MyOrderModel {
  const factory MyOrderModel({
    required String? id,
    required String? userId,
    required String? vendorId,
    required String? postId,
    String? orderId,
    required String? qty,
    required String? price,
    required String? total,
    required String? paymentMethod,
    String? paymentProof,
    String? deliveryMethod,
    String? deliveryAddress,
    required String? coupon,
    required String? status,
    required String? createdAt,
    String? updatedAt,
  }) = _Order;

  factory MyOrderModel.fromJson(Map<String, dynamic> json) => _$MyOrderModelFromJson(json);
}
