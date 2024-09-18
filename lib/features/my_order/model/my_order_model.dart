import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_order_model.freezed.dart';
part 'my_order_model.g.dart';

@freezed
class OrderResponse with _$OrderResponse {
  const factory OrderResponse({
    @JsonKey(name: "orders_received") required OrdersReceived ordersReceived,
    @JsonKey(name: "orders_placed") required OrdersPlaced ordersPlaced,
  }) = _OrderResponse;

  factory OrderResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderResponseFromJson(json);
}

@freezed
class OrdersPlaced with _$OrdersPlaced {
  const factory OrdersPlaced({
    @JsonKey(name: "current_page") required int? currentPage,
    @JsonKey(name: "data") required List<OrdersPlacedDatum> data,
    @JsonKey(name: "first_page_url") required String? firstPageUrl,
    @JsonKey(name: "from") required int? from,
    @JsonKey(name: "last_page") required int? lastPage,
    @JsonKey(name: "last_page_url") required String? lastPageUrl,
    @JsonKey(name: "links") required List<Link> links,
    @JsonKey(name: "next_page_url") required String? nextPageUrl,
    @JsonKey(name: "path") required String? path,
    @JsonKey(name: "per_page") required int? perPage,
    @JsonKey(name: "prev_page_url") required dynamic prevPageUrl,
    @JsonKey(name: "to") required int? to,
    @JsonKey(name: "total") required int? total,
  }) = _OrdersPlaced;

  factory OrdersPlaced.fromJson(Map<String, dynamic> json) =>
      _$OrdersPlacedFromJson(json);
}

@freezed
class OrdersPlacedDatum with _$OrdersPlacedDatum {
  const factory OrdersPlacedDatum({
    @JsonKey(name: "id") required String? id,
    @JsonKey(name: "user_id") required String? userId,
    @JsonKey(name: "vendor_id") required String? vendorId,
    @JsonKey(name: "post_id") required String? postId,
    @JsonKey(name: "order_id") String? orderId,
    @JsonKey(name: "qty") required String? qty,
    @JsonKey(name: "price") required String? price,
    @JsonKey(name: "shipping_charge") required String? shippingCharge,
    @JsonKey(name: "total") required String? total,
    @JsonKey(name: "payment_method") required String? paymentMethod,
    @JsonKey(name: "payment_proof") dynamic paymentProof,
    @JsonKey(name: "delivery_method") String? deliveryMethod,
    @JsonKey(name: "delivery_address") String? deliveryAddress,
    @JsonKey(name: "coupon") String? coupon,
    @JsonKey(name: "status") required String? status,
    @JsonKey(name: "created_at") required DateTime createdAt,
    @JsonKey(name: "updated_at") dynamic updatedAt,
    @JsonKey(name: "post_title") required String? postTitle,
    @JsonKey(name: "customer_name") required String? customerName,
    @JsonKey(name: "customer_contact") required String? customerContact,
    @JsonKey(name: "vendor_name") required String? vendorName,
    @JsonKey(name: "vendor_contact") required String? vendorContact,
    @JsonKey(name: "post_photo_url") required String? postPhotoUrl,
  }) = _OrdersPlacedDatum;

  factory OrdersPlacedDatum.fromJson(Map<String, dynamic> json) =>
      _$OrdersPlacedDatumFromJson(json);
}

@freezed
class Link with _$Link {
  const factory Link({
    @JsonKey(name: "url") String? url,
    @JsonKey(name: "label") required String label,
    @JsonKey(name: "active") required bool active,
  }) = _Link;

  factory Link.fromJson(Map<String, dynamic> json) => _$LinkFromJson(json);
}

@freezed
class OrdersReceived with _$OrdersReceived {
  const factory OrdersReceived({
    @JsonKey(name: "current_page") required int? currentPage,
    @JsonKey(name: "data") required List<OrdersReceivedDatum> data,
    @JsonKey(name: "first_page_url") required String? firstPageUrl,
    @JsonKey(name: "from") required int? from,
    @JsonKey(name: "last_page") required int? lastPage,
    @JsonKey(name: "last_page_url") required String? lastPageUrl,
    @JsonKey(name: "links") required List<Link> links,
    @JsonKey(name: "next_page_url") required String? nextPageUrl,
    @JsonKey(name: "path") required String? path,
    @JsonKey(name: "per_page") required int? perPage,
    @JsonKey(name: "prev_page_url") dynamic prevPageUrl,
    @JsonKey(name: "to") required int? to,
    @JsonKey(name: "total") required int? total,
  }) = _OrdersReceived;

  factory OrdersReceived.fromJson(Map<String, dynamic> json) =>
      _$OrdersReceivedFromJson(json);
}

@freezed
class OrdersReceivedDatum with _$OrdersReceivedDatum {
  const factory OrdersReceivedDatum({
    @JsonKey(name: "id") required String? id,
    @JsonKey(name: "user_id") required String? userId,
    @JsonKey(name: "vendor_id") required String? vendorId,
    @JsonKey(name: "post_id") required String? postId,
    @JsonKey(name: "order_id") dynamic orderId,
    @JsonKey(name: "qty") required String? qty,
    @JsonKey(name: "price") required String? price,
    @JsonKey(name: "shipping_charge") required String? shippingCharge,
    @JsonKey(name: "total") required String? total,
    @JsonKey(name: "payment_method") required String? paymentMethod,
    @JsonKey(name: "payment_proof") dynamic paymentProof,
    @JsonKey(name: "delivery_method") String? deliveryMethod,
    @JsonKey(name: "delivery_address") String? deliveryAddress,
    @JsonKey(name: "coupon") required String? coupon,
    @JsonKey(name: "status") required String? status,
    @JsonKey(name: "created_at") required DateTime createdAt,
    @JsonKey(name: "updated_at") dynamic updatedAt,
    @JsonKey(name: "post_title") required String? postTitle,
    @JsonKey(name: "customer_name") required String? customerName,
    @JsonKey(name: "customer_contact") String? customerContact,
    @JsonKey(name: "vendor_name") required String? vendorName,
    @JsonKey(name: "vendor_contact") required String? vendorContact,
    @JsonKey(name: "post_photo_url") required String? postPhotoUrl,
  }) = _OrdersReceivedDatum;

  factory OrdersReceivedDatum.fromJson(Map<String, dynamic> json) =>
      _$OrdersReceivedDatumFromJson(json);
}
