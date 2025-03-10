import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_delivery_rate_model.freezed.dart';
part 'get_delivery_rate_model.g.dart';

@freezed
class ParcelFareResponse with _$ParcelFareResponse {
  const factory ParcelFareResponse({
    String? responseCode,
    String? message,
    int? totalSize,
    int? limit,
    int? offset,
    ParcelFareData? data,
    List<dynamic>? errors,
  }) = _ParcelFareResponse;

  factory ParcelFareResponse.fromJson(Map<String, dynamic> json) => _$ParcelFareResponseFromJson(json);
}

@freezed
class ParcelFareData with _$ParcelFareData {
  const factory ParcelFareData({
    String? id,
    String? zoneId,
    String? areaId,
    int? baseFare,
    int? baseFarePerKm,
    List<Fare>? fare,
    double? estimatedDistance,
    String? estimatedDuration,
    int? estimatedFare,
    int? discountFare,
    int? discountAmount,
    bool? couponApplicable,
    String? requestType,
    String? encodedPolyline,
    int? returnFee,
    int? cancellationFee,
    int? extraEstimatedFare,
    int? extraDiscountFare,
    int? extraDiscountAmount,
    int? extraReturnFee,
    int? extraCancellationFee,
    int? extraFareAmount,
    int? extraFareFee,
    String? extraFareReason,
    int? estId,
  }) = _ParcelFareData;

  factory ParcelFareData.fromJson(Map<String, dynamic> json) => _$ParcelFareDataFromJson(json);
}

@freezed
class Fare with _$Fare {
  const factory Fare({
    int? id,
    String? parcelFareId,
    String? parcelWeightId,
    String? parcelCategoryId,
    int? baseFare,
    int? returnFee,
    int? cancellationFee,
    String? farePerKm,
    String? zoneId,
    String? createdAt,
    String? updatedAt,
  }) = _Fare;

  factory Fare.fromJson(Map<String, dynamic> json) => _$FareFromJson(json);
}
