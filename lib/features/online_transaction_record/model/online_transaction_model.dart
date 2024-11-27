import 'package:freezed_annotation/freezed_annotation.dart';

part 'online_transaction_model.freezed.dart';
part 'online_transaction_model.g.dart';

@freezed
class OnlineTransactionModel with _$OnlineTransactionModel {
  const factory OnlineTransactionModel({
    @JsonKey(name: "data") required Data data,
    @JsonKey(name: "msg") required String msg,
  }) = _OnlineTransactionModel;
  factory OnlineTransactionModel.fromJson(Map<String, dynamic> json) =>
      _$OnlineTransactionModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "all_payments") required List<Payment> allPayments,
    @JsonKey(name: "hold_payments") required List<Payment> holdPayments,
    @JsonKey(name: "release_payments") required List<dynamic> releasePayments,
  }) = _Data;
  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Payment with _$Payment {
  const factory Payment({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "order_id") required String orderId,
    @JsonKey(name: "post_id") required String postId,
    @JsonKey(name: "transaction_id") required String? transactionId,
    @JsonKey(name: "user_id") required String userId,
    @JsonKey(name: "vendor_id") required String vendorId,
    @JsonKey(name: "amount") required String amount,
    @JsonKey(name: "del_cost") required String delCost,
    @JsonKey(name: "total") required String total,
    @JsonKey(name: "coupon") required String coupon,
    @JsonKey(name: "status") required String status,
    @JsonKey(name: "method") required String? method,
    @JsonKey(name: "created_at") required DateTime createdAt,
    @JsonKey(name: "updated_at") required dynamic updatedAt,
    @JsonKey(name: "release_date") required dynamic releaseDate,
  }) = _Payment;
  factory Payment.fromJson(Map<String, dynamic> json) =>
      _$PaymentFromJson(json);
}
