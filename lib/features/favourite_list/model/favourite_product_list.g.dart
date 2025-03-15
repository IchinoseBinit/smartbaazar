// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favourite_product_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FavouriteProductListImpl _$$FavouriteProductListImplFromJson(
        Map<String, dynamic> json) =>
    _$FavouriteProductListImpl(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      msg: json['msg'] as String?,
    );

Map<String, dynamic> _$$FavouriteProductListImplToJson(
        _$FavouriteProductListImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'msg': instance.msg,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      savedProducts: json['saved_products'] == null
          ? null
          : SavedProducts.fromJson(
              json['saved_products'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'saved_products': instance.savedProducts,
    };

_$SavedProductsImpl _$$SavedProductsImplFromJson(Map<String, dynamic> json) =>
    _$SavedProductsImpl(
      currentPage: (json['current_page'] as num?)?.toInt(),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => FavouriteProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
      firstPageUrl: json['first_page_url'] as String?,
      from: (json['from'] as num?)?.toInt(),
      lastPage: (json['last_page'] as num?)?.toInt(),
      lastPageUrl: json['last_page_url'] as String?,
      links: (json['links'] as List<dynamic>?)
          ?.map((e) => Link.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextPageUrl: json['next_page_url'],
      path: json['path'] as String?,
      perPage: (json['per_page'] as num?)?.toInt(),
      prevPageUrl: json['prev_page_url'],
      to: (json['to'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$SavedProductsImplToJson(_$SavedProductsImpl instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'data': instance.data,
      'first_page_url': instance.firstPageUrl,
      'from': instance.from,
      'last_page': instance.lastPage,
      'last_page_url': instance.lastPageUrl,
      'links': instance.links,
      'next_page_url': instance.nextPageUrl,
      'path': instance.path,
      'per_page': instance.perPage,
      'prev_page_url': instance.prevPageUrl,
      'to': instance.to,
      'total': instance.total,
    };

_$FavouriteProductImpl _$$FavouriteProductImplFromJson(
        Map<String, dynamic> json) =>
    _$FavouriteProductImpl(
      id: json['id'] as String?,
      countryCode: json['country_code'] as String?,
      userId: json['user_id'] as String?,
      categoryId: json['category_id'] as String?,
      postTypeId: json['post_type_id'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      price: json['price'] as String?,
      discountedPrice: json['discounted_price'] as String?,
      image: json['image'] as String?,
      savedByLoggedUser: (json['savedByLoggedUser'] as List<dynamic>?)
          ?.map((e) => SavedByLoggedUser.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FavouriteProductImplToJson(
        _$FavouriteProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'country_code': instance.countryCode,
      'user_id': instance.userId,
      'category_id': instance.categoryId,
      'post_type_id': instance.postTypeId,
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'discounted_price': instance.discountedPrice,
      'image': instance.image,
      'savedByLoggedUser': instance.savedByLoggedUser,
    };

_$SavedByLoggedUserImpl _$$SavedByLoggedUserImplFromJson(
        Map<String, dynamic> json) =>
    _$SavedByLoggedUserImpl(
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$SavedByLoggedUserImplToJson(
        _$SavedByLoggedUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$LinkImpl _$$LinkImplFromJson(Map<String, dynamic> json) => _$LinkImpl(
      url: json['url'] as String?,
      label: json['label'] as String?,
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$$LinkImplToJson(_$LinkImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'label': instance.label,
      'active': instance.active,
    };
