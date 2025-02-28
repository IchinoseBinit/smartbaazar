// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_all_products_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VendorAllProductsResponseImpl _$$VendorAllProductsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$VendorAllProductsResponseImpl(
      data: json['data'] == null
          ? null
          : VendorProfileAllProductsData.fromJson(
              json['data'] as Map<String, dynamic>),
      msg: json['msg'] as String?,
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
      all_products: json['all_products'] == null
          ? null
          : AllProductsWrapper.fromJson(
              json['all_products'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VendorProfileAllProductsDataImplToJson(
        _$VendorProfileAllProductsDataImpl instance) =>
    <String, dynamic>{
      'all_products': instance.all_products,
    };

_$AllProductsWrapperImpl _$$AllProductsWrapperImplFromJson(
        Map<String, dynamic> json) =>
    _$AllProductsWrapperImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map(
              (e) => VendorAllproductsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AllProductsWrapperImplToJson(
        _$AllProductsWrapperImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$VendorAllproductsModelImpl _$$VendorAllproductsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$VendorAllproductsModelImpl(
      id: json['id'] as String,
      country_code: json['country_code'] as String,
      user_id: json['user_id'] as String,
      category_id: json['category_id'] as String,
      post_type_id: json['post_type_id'] as String,
      title: json['title'] as String,
      story_display_days: json['story_display_days'] as String?,
      b2b_pricing: json['b2b_pricing'] as String?,
      image: json['image'] as String,
      post_type: json['post_type'] as String,
      username: json['username'] as String,
      offers: json['offers'] as String?,
      price: json['price'] as String?,
      wow: json['wow'] as String?,
      city: json['city'] as String?,
      similarVendorProfileProductCount:
          (json['similarVendorProfileProductCount'] as num?)?.toInt(),
      discounted_price: json['discounted_price'] as String?,
      shortestDistance: (json['shortestDistance'] as num?)?.toDouble(),
      commentcount: (json['commentcount'] as num?)?.toInt(),
      discount_percentage: (json['discount_percentage'] as num?)?.toInt(),
      avg_rating: (json['avg_rating'] as num?)?.toInt(),
      userdetails: json['userdetails'] == null
          ? null
          : UserDetailsModel.fromJson(
              json['userdetails'] as Map<String, dynamic>),
      savedByLoggedUser: (json['savedByLoggedUser'] as List<dynamic>?)
          ?.map((e) => FezzedSaved.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$VendorAllproductsModelImplToJson(
        _$VendorAllproductsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'country_code': instance.country_code,
      'user_id': instance.user_id,
      'category_id': instance.category_id,
      'post_type_id': instance.post_type_id,
      'title': instance.title,
      'story_display_days': instance.story_display_days,
      'b2b_pricing': instance.b2b_pricing,
      'image': instance.image,
      'post_type': instance.post_type,
      'username': instance.username,
      'offers': instance.offers,
      'price': instance.price,
      'wow': instance.wow,
      'city': instance.city,
      'similarVendorProfileProductCount':
          instance.similarVendorProfileProductCount,
      'discounted_price': instance.discounted_price,
      'shortestDistance': instance.shortestDistance,
      'commentcount': instance.commentcount,
      'discount_percentage': instance.discount_percentage,
      'avg_rating': instance.avg_rating,
      'userdetails': instance.userdetails,
      'savedByLoggedUser': instance.savedByLoggedUser,
    };
