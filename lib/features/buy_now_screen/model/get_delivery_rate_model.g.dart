// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_delivery_rate_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ParcelFareResponseImpl _$$ParcelFareResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ParcelFareResponseImpl(
      responseCode: json['responseCode'] as String?,
      message: json['message'] as String?,
      totalSize: (json['totalSize'] as num?)?.toInt(),
      limit: (json['limit'] as num?)?.toInt(),
      offset: (json['offset'] as num?)?.toInt(),
      data: json['data'] == null
          ? null
          : ParcelFareData.fromJson(json['data'] as Map<String, dynamic>),
      errors: json['errors'] as List<dynamic>?,
    );

Map<String, dynamic> _$$ParcelFareResponseImplToJson(
        _$ParcelFareResponseImpl instance) =>
    <String, dynamic>{
      'responseCode': instance.responseCode,
      'message': instance.message,
      'totalSize': instance.totalSize,
      'limit': instance.limit,
      'offset': instance.offset,
      'data': instance.data,
      'errors': instance.errors,
    };

_$ParcelFareDataImpl _$$ParcelFareDataImplFromJson(Map<String, dynamic> json) =>
    _$ParcelFareDataImpl(
      id: json['id'] as String?,
      zoneId: json['zoneId'] as String?,
      areaId: json['areaId'] as String?,
      baseFare: (json['baseFare'] as num?)?.toInt(),
      baseFarePerKm: (json['baseFarePerKm'] as num?)?.toInt(),
      fare: (json['fare'] as List<dynamic>?)
          ?.map((e) => Fare.fromJson(e as Map<String, dynamic>))
          .toList(),
      estimatedDistance: (json['estimatedDistance'] as num?)?.toDouble(),
      estimatedDuration: json['estimatedDuration'] as String?,
      estimatedFare: (json['estimatedFare'] as num?)?.toInt(),
      discountFare: (json['discountFare'] as num?)?.toInt(),
      discountAmount: (json['discountAmount'] as num?)?.toInt(),
      couponApplicable: json['couponApplicable'] as bool?,
      requestType: json['requestType'] as String?,
      encodedPolyline: json['encodedPolyline'] as String?,
      returnFee: (json['returnFee'] as num?)?.toInt(),
      cancellationFee: (json['cancellationFee'] as num?)?.toInt(),
      extraEstimatedFare: (json['extraEstimatedFare'] as num?)?.toInt(),
      extraDiscountFare: (json['extraDiscountFare'] as num?)?.toInt(),
      extraDiscountAmount: (json['extraDiscountAmount'] as num?)?.toInt(),
      extraReturnFee: (json['extraReturnFee'] as num?)?.toInt(),
      extraCancellationFee: (json['extraCancellationFee'] as num?)?.toInt(),
      extraFareAmount: (json['extraFareAmount'] as num?)?.toInt(),
      extraFareFee: (json['extraFareFee'] as num?)?.toInt(),
      extraFareReason: json['extraFareReason'] as String?,
      estId: (json['estId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ParcelFareDataImplToJson(
        _$ParcelFareDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'zoneId': instance.zoneId,
      'areaId': instance.areaId,
      'baseFare': instance.baseFare,
      'baseFarePerKm': instance.baseFarePerKm,
      'fare': instance.fare,
      'estimatedDistance': instance.estimatedDistance,
      'estimatedDuration': instance.estimatedDuration,
      'estimatedFare': instance.estimatedFare,
      'discountFare': instance.discountFare,
      'discountAmount': instance.discountAmount,
      'couponApplicable': instance.couponApplicable,
      'requestType': instance.requestType,
      'encodedPolyline': instance.encodedPolyline,
      'returnFee': instance.returnFee,
      'cancellationFee': instance.cancellationFee,
      'extraEstimatedFare': instance.extraEstimatedFare,
      'extraDiscountFare': instance.extraDiscountFare,
      'extraDiscountAmount': instance.extraDiscountAmount,
      'extraReturnFee': instance.extraReturnFee,
      'extraCancellationFee': instance.extraCancellationFee,
      'extraFareAmount': instance.extraFareAmount,
      'extraFareFee': instance.extraFareFee,
      'extraFareReason': instance.extraFareReason,
      'estId': instance.estId,
    };

_$FareImpl _$$FareImplFromJson(Map<String, dynamic> json) => _$FareImpl(
      id: (json['id'] as num?)?.toInt(),
      parcelFareId: json['parcelFareId'] as String?,
      parcelWeightId: json['parcelWeightId'] as String?,
      parcelCategoryId: json['parcelCategoryId'] as String?,
      baseFare: (json['baseFare'] as num?)?.toInt(),
      returnFee: (json['returnFee'] as num?)?.toInt(),
      cancellationFee: (json['cancellationFee'] as num?)?.toInt(),
      farePerKm: json['farePerKm'] as String?,
      zoneId: json['zoneId'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$FareImplToJson(_$FareImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parcelFareId': instance.parcelFareId,
      'parcelWeightId': instance.parcelWeightId,
      'parcelCategoryId': instance.parcelCategoryId,
      'baseFare': instance.baseFare,
      'returnFee': instance.returnFee,
      'cancellationFee': instance.cancellationFee,
      'farePerKm': instance.farePerKm,
      'zoneId': instance.zoneId,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
