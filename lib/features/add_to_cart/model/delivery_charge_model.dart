import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_charge_model.freezed.dart';
part 'delivery_charge_model.g.dart';

@freezed
class ParcelFareResponse with _$ParcelFareResponse {
  const factory ParcelFareResponse({
    @JsonKey(name: 'response_code') String? responseCode,
    String? message,
    @JsonKey(name: 'total_size') int? totalSize,
    int? limit,
    int? offset,
    ParcelData? data,
    List<dynamic>? errors,
  }) = _ParcelFareResponse;

  factory ParcelFareResponse.fromJson(Map<String, dynamic> json) => _$ParcelFareResponseFromJson(json);
}

@freezed
class ParcelData with _$ParcelData {
  const factory ParcelData({
    String? id,
    @JsonKey(name: 'zone_id') String? zoneId,
    @JsonKey(name: 'area_id') String? areaId,
    @JsonKey(name: 'base_fare') int? baseFare,
    @JsonKey(name: 'base_fare_per_km') int? baseFarePerKm,
    List<Fare>? fare,
    @JsonKey(name: 'estimated_distance') double? estimatedDistance,
    @JsonKey(name: 'estimated_duration') String? estimatedDuration,
    @JsonKey(name: 'estimated_fare') int? estimatedFare,
    @JsonKey(name: 'discount_fare') int? discountFare,
    @JsonKey(name: 'discount_amount') int? discountAmount,
    @JsonKey(name: 'coupon_applicable') bool? couponApplicable,
    @JsonKey(name: 'request type') String? requestType,
    @JsonKey(name: 'encoded_polyline') String? encodedPolyline,
    @JsonKey(name: 'return_fee') int? returnFee,
    @JsonKey(name: 'cancellation_fee') int? cancellationFee,
    @JsonKey(name: 'extra_estimated_fare') int? extraEstimatedFare,
    @JsonKey(name: 'extra_discount_fare') int? extraDiscountFare,
    @JsonKey(name: 'extra_discount_amount') int? extraDiscountAmount,
    @JsonKey(name: 'extra_return_fee') int? extraReturnFee,
    @JsonKey(name: 'extra_cancellation_fee') int? extraCancellationFee,
    @JsonKey(name: 'extra_fare_amount') int? extraFareAmount,
    @JsonKey(name: 'extra_fare_fee') int? extraFareFee,
    @JsonKey(name: 'extra_fare_reason') String? extraFareReason,
    @JsonKey(name: 'est_id') int? estId,
  }) = _ParcelData;

  factory ParcelData.fromJson(Map<String, dynamic> json) => _$ParcelDataFromJson(json);
}

@freezed
class Fare with _$Fare {
  const factory Fare({
    int? id,
    @JsonKey(name: 'parcel_fare_id') String? parcelFareId,
    @JsonKey(name: 'parcel_weight_id') String? parcelWeightId,
    @JsonKey(name: 'parcel_category_id') String? parcelCategoryId,
    @JsonKey(name: 'base_fare') int? baseFare,
    @JsonKey(name: 'return_fee') int? returnFee,
    @JsonKey(name: 'cancellation_fee') int? cancellationFee,
    @JsonKey(name: 'fare_per_km') String? farePerKm,
    @JsonKey(name: 'zone_id') String? zoneId,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _Fare;

  factory Fare.fromJson(Map<String, dynamic> json) => _$FareFromJson(json);
}
