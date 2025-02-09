// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VendorCardResponseImpl _$$VendorCardResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$VendorCardResponseImpl(
      data: json['data'] == null
          ? null
          : VendorCardData.fromJson(json['data'] as Map<String, dynamic>),
      msg: json['msg'] as String,
    );

Map<String, dynamic> _$$VendorCardResponseImplToJson(
        _$VendorCardResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'msg': instance.msg,
    };

_$VendorCardDataImpl _$$VendorCardDataImplFromJson(Map<String, dynamic> json) =>
    _$VendorCardDataImpl(
      vendor_card: json['vendor_card'] == null
          ? null
          : VendorCard.fromJson(json['vendor_card'] as Map<String, dynamic>),
      deals: (json['deals'] as List<dynamic>?)
          ?.map((e) => Deal.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$VendorCardDataImplToJson(
        _$VendorCardDataImpl instance) =>
    <String, dynamic>{
      'vendor_card': instance.vendor_card,
      'deals': instance.deals,
    };
