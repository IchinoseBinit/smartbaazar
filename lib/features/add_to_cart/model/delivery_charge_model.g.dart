// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_charge_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ParcelFareResponseImpl _$$ParcelFareResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ParcelFareResponseImpl(
      responseCode: json['response_code'] as String?,
      message: json['message'] as String?,
      totalSize: (json['total_size'] as num?)?.toInt(),
      limit: (json['limit'] as num?)?.toInt(),
      offset: (json['offset'] as num?)?.toInt(),
      data: json['data'] == null
          ? null
          : ParcelData.fromJson(json['data'] as Map<String, dynamic>),
      errors: json['errors'] as List<dynamic>?,
    );

Map<String, dynamic> _$$ParcelFareResponseImplToJson(
        _$ParcelFareResponseImpl instance) =>
    <String, dynamic>{
      'response_code': instance.responseCode,
      'message': instance.message,
      'total_size': instance.totalSize,
      'limit': instance.limit,
      'offset': instance.offset,
      'data': instance.data,
      'errors': instance.errors,
    };

_$ParcelDataImpl _$$ParcelDataImplFromJson(Map<String, dynamic> json) =>
    _$ParcelDataImpl(
      id: json['id'] as String?,
      zoneId: json['zone_id'] as String?,
      areaId: json['area_id'] as String?,
      baseFare: (json['base_fare'] as num?)?.toInt(),
      baseFarePerKm: (json['base_fare_per_km'] as num?)?.toInt(),
      fare: (json['fare'] as List<dynamic>?)
          ?.map((e) => Fare.fromJson(e as Map<String, dynamic>))
          .toList(),
      estimatedDistance: (json['estimated_distance'] as num?)?.toDouble(),
      estimatedDuration: json['estimated_duration'] as String?,
      estimatedFare: (json['estimated_fare'] as num?)?.toInt(),
      discountFare: (json['discount_fare'] as num?)?.toInt(),
      discountAmount: (json['discount_amount'] as num?)?.toInt(),
      couponApplicable: json['coupon_applicable'] as bool?,
      requestType: json['request type'] as String?,
      encodedPolyline: json['encoded_polyline'] as String?,
      returnFee: (json['return_fee'] as num?)?.toInt(),
      cancellationFee: (json['cancellation_fee'] as num?)?.toInt(),
      extraEstimatedFare: (json['extra_estimated_fare'] as num?)?.toInt(),
      extraDiscountFare: (json['extra_discount_fare'] as num?)?.toInt(),
      extraDiscountAmount: (json['extra_discount_amount'] as num?)?.toInt(),
      extraReturnFee: (json['extra_return_fee'] as num?)?.toInt(),
      extraCancellationFee: (json['extra_cancellation_fee'] as num?)?.toInt(),
      extraFareAmount: (json['extra_fare_amount'] as num?)?.toInt(),
      extraFareFee: (json['extra_fare_fee'] as num?)?.toInt(),
      extraFareReason: json['extra_fare_reason'] as String?,
      estId: (json['est_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ParcelDataImplToJson(_$ParcelDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'zone_id': instance.zoneId,
      'area_id': instance.areaId,
      'base_fare': instance.baseFare,
      'base_fare_per_km': instance.baseFarePerKm,
      'fare': instance.fare,
      'estimated_distance': instance.estimatedDistance,
      'estimated_duration': instance.estimatedDuration,
      'estimated_fare': instance.estimatedFare,
      'discount_fare': instance.discountFare,
      'discount_amount': instance.discountAmount,
      'coupon_applicable': instance.couponApplicable,
      'request type': instance.requestType,
      'encoded_polyline': instance.encodedPolyline,
      'return_fee': instance.returnFee,
      'cancellation_fee': instance.cancellationFee,
      'extra_estimated_fare': instance.extraEstimatedFare,
      'extra_discount_fare': instance.extraDiscountFare,
      'extra_discount_amount': instance.extraDiscountAmount,
      'extra_return_fee': instance.extraReturnFee,
      'extra_cancellation_fee': instance.extraCancellationFee,
      'extra_fare_amount': instance.extraFareAmount,
      'extra_fare_fee': instance.extraFareFee,
      'extra_fare_reason': instance.extraFareReason,
      'est_id': instance.estId,
    };

_$FareImpl _$$FareImplFromJson(Map<String, dynamic> json) => _$FareImpl(
      id: (json['id'] as num?)?.toInt(),
      parcelFareId: json['parcel_fare_id'] as String?,
      parcelWeightId: json['parcel_weight_id'] as String?,
      parcelCategoryId: json['parcel_category_id'] as String?,
      baseFare: (json['base_fare'] as num?)?.toInt(),
      returnFee: (json['return_fee'] as num?)?.toInt(),
      cancellationFee: (json['cancellation_fee'] as num?)?.toInt(),
      farePerKm: json['fare_per_km'] as String?,
      zoneId: json['zone_id'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$FareImplToJson(_$FareImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parcel_fare_id': instance.parcelFareId,
      'parcel_weight_id': instance.parcelWeightId,
      'parcel_category_id': instance.parcelCategoryId,
      'base_fare': instance.baseFare,
      'return_fee': instance.returnFee,
      'cancellation_fee': instance.cancellationFee,
      'fare_per_km': instance.farePerKm,
      'zone_id': instance.zoneId,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
