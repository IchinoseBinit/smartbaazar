import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_return_model.freezed.dart';
part 'my_return_model.g.dart';

@freezed
class MyReturnModel with _$MyReturnModel {
  const factory MyReturnModel({
    @JsonKey(name: 'return_received') required ReturnData? returnReceived,
    @JsonKey(name: 'return_placed') required ReturnData? returnPlaced,
  }) = _MyReturnModel;

  factory MyReturnModel.fromJson(Map<String, dynamic> json) =>
      _$MyReturnModelFromJson(json);
}

@freezed
class ReturnData with _$ReturnData {
  const factory ReturnData({
    // @JsonKey(name: "current_page") required int? currentPage,
    required List<ReturnItem>? data,
    // @JsonKey(name: "first_page_url") required String? firstPageUrl,
    // int? from,
    // @JsonKey(name: "last_page") required int? lastPage,
    // @JsonKey(name: "last_page_url") required String? lastPageUrl,
    required List<Link>? links,
    // @JsonKey(name: "next_page_url") required String? nextPageUrl,
    required String? path,
    // @JsonKey(name: "per_page") required int? perPage,
    // @JsonKey(name: "prev_page_url") String? prevPageUrl,
    // int? to,
    // required int? total,
  }) = _ReturnData;

  factory ReturnData.fromJson(Map<String, dynamic> json) =>
      _$ReturnDataFromJson(json);
}

@freezed
class ReturnItem with _$ReturnItem {
  const factory ReturnItem({
    // required String? id,
     @JsonKey(name: "user_id") required String? userId,
    @JsonKey(name: "user_name") required String? userName,
     @JsonKey(name: "vendor_id") required String? vendorId,
    @JsonKey(name: "vendor_name") required String? vendorName,
    @JsonKey(name: "post_id") required String? postId,
    @JsonKey(name: "post_name") required String? postName,
    @JsonKey(name: "order_id") required String? orderId,
    // required String? qty,
    required String? amount,
    @JsonKey(name: "created_at") required String? createdAt,
    @JsonKey(name: "product_title") required String? productTitle,
    @JsonKey(name: "customer_name") required String? customerName,
    @JsonKey(name: "customer_contact") String? customerContact,
    @JsonKey(name: "vendor_contact") String? vendorContact,
  }) = _ReturnItem;

  factory ReturnItem.fromJson(Map<String, dynamic> json) =>
      _$ReturnItemFromJson(json);
}

@freezed
class Link with _$Link {
  const factory Link({
    String? url,
    required String? label,
    required bool active,
  }) = _Link;

  factory Link.fromJson(Map<String, dynamic> json) => _$LinkFromJson(json);
}
