// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'used_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UsedModelImpl _$$UsedModelImplFromJson(Map<String, dynamic> json) =>
    _$UsedModelImpl(
      posttype_name: json['posttype_name'] as String?,
      post_type_id: json['post_type_id'] as String?,
      hot_products: (json['hot_products'] as List<dynamic>?)
          ?.map((e) => UsedProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
      products: json['products'] == null
          ? null
          : UsedProducts.fromJson(json['products'] as Map<String, dynamic>),
      advertisements: (json['advertisements'] as List<dynamic>?)
          ?.map((e) => UsedAdvertisement.fromJson(e as Map<String, dynamic>))
          .toList(),
      sliders: (json['sliders'] as List<dynamic>?)
          ?.map((e) => UsedSlider.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UsedModelImplToJson(_$UsedModelImpl instance) =>
    <String, dynamic>{
      'posttype_name': instance.posttype_name,
      'post_type_id': instance.post_type_id,
      'hot_products': instance.hot_products,
      'products': instance.products,
      'advertisements': instance.advertisements,
      'sliders': instance.sliders,
    };

_$UsedProductsImpl _$$UsedProductsImplFromJson(Map<String, dynamic> json) =>
    _$UsedProductsImpl(
      current_page: (json['current_page'] as num?)?.toInt(),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => UsedProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UsedProductsImplToJson(_$UsedProductsImpl instance) =>
    <String, dynamic>{
      'current_page': instance.current_page,
      'data': instance.data,
    };

_$UsedProductImpl _$$UsedProductImplFromJson(Map<String, dynamic> json) =>
    _$UsedProductImpl(
      id: json['id'] as String?,
      title: json['title'] as String?,
      price: json['price'] as String?,
      image: json['image'] as String?,
      visits: json['visits'] as String?,
      avg_rating: (json['avg_rating'] as num?)?.toDouble(),
      contact_name: json['contact_name'] as String?,
      pickup: json['pickup'] as String?,
    );

Map<String, dynamic> _$$UsedProductImplToJson(_$UsedProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'image': instance.image,
      'visits': instance.visits,
      'avg_rating': instance.avg_rating,
      'contact_name': instance.contact_name,
      'pickup': instance.pickup,
    };

_$UsedAdvertisementImpl _$$UsedAdvertisementImplFromJson(
        Map<String, dynamic> json) =>
    _$UsedAdvertisementImpl(
      id: json['id'] as String?,
      order: json['order'] as String?,
      status: json['status'] as String?,
      image: json['image'] as String?,
      link: json['link'] as String?,
    );

Map<String, dynamic> _$$UsedAdvertisementImplToJson(
        _$UsedAdvertisementImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order': instance.order,
      'status': instance.status,
      'image': instance.image,
      'link': instance.link,
    };

_$UsedSliderImpl _$$UsedSliderImplFromJson(Map<String, dynamic> json) =>
    _$UsedSliderImpl(
      id: json['id'] as String?,
      image: json['image'] as String?,
      description: json['description'] as String?,
      link: json['link'] as String?,
      page: json['page'] as String?,
    );

Map<String, dynamic> _$$UsedSliderImplToJson(_$UsedSliderImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'description': instance.description,
      'link': instance.link,
      'page': instance.page,
    };
