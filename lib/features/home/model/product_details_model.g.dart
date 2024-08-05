// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductDetailsModelImpl _$$ProductDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductDetailsModelImpl(
      id: (json['id'] as num).toInt(),
      user_id: json['user_id'] as String,
      category_id: json['category_id'] as String,
      post_type_id: json['post_type_id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      price: json['price'] as String,
      pickup: json['pickup'] as String?,
      discounted_price: json['discounted_price'] as String?,
      visits: (json['visits'] as num).toInt(),
      stock: json['stock'] as String,
      contact_name: json['contact_name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      weight: json['weight'] as String?,
      colorOptions: (json['colorOptions'] as List<dynamic>?)
          ?.map((e) => ColorOption.fromJson(e as Map<String, dynamic>))
          .toList(),
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      widgetSimilarPosts: (json['widgetSimilarPosts'] as List<dynamic>?)
          ?.map((e) => SimilarItems.fromJson(e as Map<String, dynamic>))
          .toList(),
      category: json['category'] == null
          ? null
          : Category.fromJson(json['category'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProductDetailsModelImplToJson(
        _$ProductDetailsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.user_id,
      'category_id': instance.category_id,
      'post_type_id': instance.post_type_id,
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'pickup': instance.pickup,
      'discounted_price': instance.discounted_price,
      'visits': instance.visits,
      'stock': instance.stock,
      'contact_name': instance.contact_name,
      'email': instance.email,
      'phone': instance.phone,
      'weight': instance.weight,
      'colorOptions': instance.colorOptions,
      'tags': instance.tags,
      'widgetSimilarPosts': instance.widgetSimilarPosts,
      'category': instance.category,
    };

_$CategoryImpl _$$CategoryImplFromJson(Map<String, dynamic> json) =>
    _$CategoryImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      slug: json['slug'] as String,
    );

Map<String, dynamic> _$$CategoryImplToJson(_$CategoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
    };

_$ColorOptionImpl _$$ColorOptionImplFromJson(Map<String, dynamic> json) =>
    _$ColorOptionImpl(
      id: (json['id'] as num).toInt(),
      value: json['value'] as String,
    );

Map<String, dynamic> _$$ColorOptionImplToJson(_$ColorOptionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
    };

_$SimilarItemsImpl _$$SimilarItemsImplFromJson(Map<String, dynamic> json) =>
    _$SimilarItemsImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      price: json['price'] as String,
      pictures: (json['pictures'] as List<dynamic>)
          .map((e) => Picture.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SimilarItemsImplToJson(_$SimilarItemsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'pictures': instance.pictures,
    };

_$PictureImpl _$$PictureImplFromJson(Map<String, dynamic> json) =>
    _$PictureImpl(
      id: (json['id'] as num).toInt(),
      filename: json['filename'] as String,
    );

Map<String, dynamic> _$$PictureImplToJson(_$PictureImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'filename': instance.filename,
    };
