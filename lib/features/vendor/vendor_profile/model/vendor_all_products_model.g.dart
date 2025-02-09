// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_all_products_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VendorAllProductsResponseImpl _$$VendorAllProductsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$VendorAllProductsResponseImpl(
      data: VendorProfileAllProductsData.fromJson(
          json['data'] as Map<String, dynamic>),
      msg: json['msg'] as String,
    );

Map<String, dynamic> _$$VendorAllProductsResponseImplToJson(
        _$VendorAllProductsResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'msg': instance.msg,
    };

_$VendorProfileAllProductsDataImpl _$$VendorProfileAllProductsDataImplFromJson(
        Map<String, dynamic> json) =>
    _$VendorProfileAllProductsDataImpl(
      all_products: (json['all_products'] as List<dynamic>?)
          ?.map((e) => BrandNewModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$VendorProfileAllProductsDataImplToJson(
        _$VendorProfileAllProductsDataImpl instance) =>
    <String, dynamic>{
      'all_products': instance.all_products,
    };
