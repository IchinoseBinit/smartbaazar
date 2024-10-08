import 'package:freezed_annotation/freezed_annotation.dart';

part 'dispute_model.freezed.dart';
part 'dispute_model.g.dart';

@freezed
class DisputeModel with _$DisputeModel {
  const factory DisputeModel({
    @JsonKey(name: 'disputes_received') List<Dispute>? disputesReceived,
    @JsonKey(name: 'disputes_filed') List<Dispute>? disputesFiled,
  }) = _DisputeModel;

  factory DisputeModel.fromJson(Map<String, dynamic> json) => _$DisputeModelFromJson(json);
}

@freezed
class Dispute with _$Dispute {
  const factory Dispute({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'vendor_id') String? vendorId,
    @JsonKey(name: 'vendor_name') String? vendorName,
    @JsonKey(name: 'vendor_link') String? vendorLink,
    @JsonKey(name: 'issue') String? issue,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'post_id') String? postId,
    @JsonKey(name: 'order_id') String? orderId,
    @JsonKey(name: 'city') String? city,
    @JsonKey(name: 'city_code') String? cityCode,
    @JsonKey(name: 'street') String? street,
    @JsonKey(name: 'longitude') String? longitude,
    @JsonKey(name: 'latitude') String? latitude,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'image_url') String? imageUrl,
  }) = _Dispute;

  factory Dispute.fromJson(Map<String, dynamic> json) => _$DisputeFromJson(json);
}
