// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_brands_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VendorBrandResponseImpl _$$VendorBrandResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$VendorBrandResponseImpl(
      data: json['data'] == null
          ? null
          : VendorBrandData.fromJson(json['data'] as Map<String, dynamic>),
      msg: json['msg'] as String?,
    );

Map<String, dynamic> _$$VendorBrandResponseImplToJson(
        _$VendorBrandResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'msg': instance.msg,
    };

_$VendorBrandDataImpl _$$VendorBrandDataImplFromJson(
        Map<String, dynamic> json) =>
    _$VendorBrandDataImpl(
      vendor_about: json['vendor_about'] == null
          ? null
          : VendorAbout.fromJson(json['vendor_about'] as Map<String, dynamic>),
      brandnew: (json['brandnew'] as List<dynamic>?)
          ?.map((e) => BrandNewModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      used: (json['used'] as List<dynamic>?)
          ?.map((e) => BrandNewModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      services: (json['services'] as List<dynamic>?)
          ?.map((e) => BrandNewModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      jobs: (json['jobs'] as List<dynamic>?)
          ?.map((e) => BrandNewModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      events: (json['events'] as List<dynamic>?)
          ?.map((e) => BrandNewModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      b2b: (json['b2b'] as List<dynamic>?)
          ?.map((e) => BrandNewModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      grocery: (json['grocery'] as List<dynamic>?)
          ?.map((e) => BrandNewModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      deals: (json['deals'] as List<dynamic>?)
          ?.map((e) => Deal.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$VendorBrandDataImplToJson(
        _$VendorBrandDataImpl instance) =>
    <String, dynamic>{
      'vendor_about': instance.vendor_about,
      'brandnew': instance.brandnew,
      'used': instance.used,
      'services': instance.services,
      'jobs': instance.jobs,
      'events': instance.events,
      'b2b': instance.b2b,
      'grocery': instance.grocery,
      'deals': instance.deals,
    };
