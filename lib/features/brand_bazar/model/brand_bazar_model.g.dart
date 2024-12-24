// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand_bazar_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BrandBazarModelImpl _$$BrandBazarModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BrandBazarModelImpl(
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
      msg: json['msg'] as String,
    );

Map<String, dynamic> _$$BrandBazarModelImplToJson(
        _$BrandBazarModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'msg': instance.msg,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      newProducts: json['new_products'] as List<dynamic>?,
      services: json['services'] as List<dynamic>?,
      jobs: json['jobs'] as List<dynamic>?,
      events: json['events'] as List<dynamic>?,
      grocery: json['grocery'] as List<dynamic>?,
      advertisements: (json['advertisements'] as List<dynamic>?)
          ?.map((e) => Advertisement.fromJson(e as Map<String, dynamic>))
          .toList(),
      trandBanners: (json['trand_banners'] as List<dynamic>?)
          ?.map((e) => TrendBanner.fromJson(e as Map<String, dynamic>))
          .toList(),
      brandbazarLogos: (json['brandbazarLogos'] as List<dynamic>?)
          ?.map((e) => BrandbazarLogo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'new_products': instance.newProducts,
      'services': instance.services,
      'jobs': instance.jobs,
      'events': instance.events,
      'grocery': instance.grocery,
      'advertisements': instance.advertisements,
      'trand_banners': instance.trandBanners,
      'brandbazarLogos': instance.brandbazarLogos,
    };

_$AdvertisementImpl _$$AdvertisementImplFromJson(Map<String, dynamic> json) =>
    _$AdvertisementImpl(
      id: json['id'] as String?,
      order: json['order'] as String?,
      status: json['status'] as String?,
      image: json['image'] as String?,
      link: json['link'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$AdvertisementImplToJson(_$AdvertisementImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order': instance.order,
      'status': instance.status,
      'image': instance.image,
      'link': instance.link,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

_$TrendBannerImpl _$$TrendBannerImplFromJson(Map<String, dynamic> json) =>
    _$TrendBannerImpl(
      id: json['id'] as String?,
      bazar: json['bazar'] as String?,
      image: json['image'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$TrendBannerImplToJson(_$TrendBannerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bazar': instance.bazar,
      'image': instance.image,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

_$BrandbazarLogoImpl _$$BrandbazarLogoImplFromJson(Map<String, dynamic> json) =>
    _$BrandbazarLogoImpl(
      brandLogo: json['brand_logo'] as String?,
      userId: json['user_id'] as String?,
    );

Map<String, dynamic> _$$BrandbazarLogoImplToJson(
        _$BrandbazarLogoImpl instance) =>
    <String, dynamic>{
      'brand_logo': instance.brandLogo,
      'user_id': instance.userId,
    };
