// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'b2b_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$B2bModelImpl _$$B2bModelImplFromJson(Map<String, dynamic> json) =>
    _$B2bModelImpl(
      posttype_name: json['posttype_name'] as String?,
      post_type_id: json['post_type_id'] as String?,
      hot_products: (json['hot_products'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      products: json['products'] == null
          ? null
          : B2bProducts.fromJson(json['products'] as Map<String, dynamic>),
      advertisements: (json['advertisements'] as List<dynamic>?)
          ?.map((e) => B2bAdvertisement.fromJson(e as Map<String, dynamic>))
          .toList(),
      sliders: (json['sliders'] as List<dynamic>?)
          ?.map((e) => B2bSlider.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$B2bModelImplToJson(_$B2bModelImpl instance) =>
    <String, dynamic>{
      'posttype_name': instance.posttype_name,
      'post_type_id': instance.post_type_id,
      'hot_products': instance.hot_products,
      'products': instance.products,
      'advertisements': instance.advertisements,
      'sliders': instance.sliders,
    };

_$B2bProductsImpl _$$B2bProductsImplFromJson(Map<String, dynamic> json) =>
    _$B2bProductsImpl(
      current_page: (json['current_page'] as num?)?.toInt(),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$B2bProductsImplToJson(_$B2bProductsImpl instance) =>
    <String, dynamic>{
      'current_page': instance.current_page,
      'data': instance.data,
    };

_$B2bAdvertisementImpl _$$B2bAdvertisementImplFromJson(
        Map<String, dynamic> json) =>
    _$B2bAdvertisementImpl(
      id: json['id'] as String?,
      order: json['order'] as String?,
      status: json['status'] as String?,
      image: json['image'] as String?,
      link: json['link'] as String?,
    );

Map<String, dynamic> _$$B2bAdvertisementImplToJson(
        _$B2bAdvertisementImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order': instance.order,
      'status': instance.status,
      'image': instance.image,
      'link': instance.link,
    };

_$B2bSliderImpl _$$B2bSliderImplFromJson(Map<String, dynamic> json) =>
    _$B2bSliderImpl(
      id: json['id'] as String?,
      image: json['image'] as String?,
      description: json['description'] as String?,
      link: json['link'] as String?,
      page: json['page'] as String?,
    );

Map<String, dynamic> _$$B2bSliderImplToJson(_$B2bSliderImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'description': instance.description,
      'link': instance.link,
      'page': instance.page,
    };
