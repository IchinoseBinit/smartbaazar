// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VendorProductSearchResponseImpl _$$VendorProductSearchResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$VendorProductSearchResponseImpl(
      vendorPost: json['vendorPost'] == null
          ? null
          : VendorPost.fromJson(json['vendorPost'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VendorProductSearchResponseImplToJson(
        _$VendorProductSearchResponseImpl instance) =>
    <String, dynamic>{
      'vendorPost': instance.vendorPost,
    };

_$VendorPostImpl _$$VendorPostImplFromJson(Map<String, dynamic> json) =>
    _$VendorPostImpl(
      currentPage: (json['current_page'] as num?)?.toInt(),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => PostResult.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$VendorPostImplToJson(_$VendorPostImpl instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'data': instance.data,
    };
