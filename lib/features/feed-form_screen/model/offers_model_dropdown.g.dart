// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offers_model_dropdown.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OffersModelDropdownImpl _$$OffersModelDropdownImplFromJson(
        Map<String, dynamic> json) =>
    _$OffersModelDropdownImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => OfferData.fromJson(e as Map<String, dynamic>))
          .toList(),
      msg: json['msg'] as String?,
    );

Map<String, dynamic> _$$OffersModelDropdownImplToJson(
        _$OffersModelDropdownImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'msg': instance.msg,
    };

_$OfferDataImpl _$$OfferDataImplFromJson(Map<String, dynamic> json) =>
    _$OfferDataImpl(
      id: json['id'] as String?,
      offers: json['offers'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$OfferDataImplToJson(_$OfferDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'offers': instance.offers,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
