// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_profile_name.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VendorDataImpl _$$VendorDataImplFromJson(Map<String, dynamic> json) =>
    _$VendorDataImpl(
      vendor: json['vendor'] == null
          ? null
          : Vendor.fromJson(json['vendor'] as Map<String, dynamic>),
      advertisements: (json['advertisements'] as List<dynamic>?)
              ?.map((e) => Advertisement.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      hotProducts: (json['hotProducts'] as List<dynamic>?)
              ?.map((e) => HotProduct.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      scratchBanner: json['scratchBanner'] as String?,
      posts: json['posts'] == null
          ? null
          : Posts.fromJson(json['posts'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VendorDataImplToJson(_$VendorDataImpl instance) =>
    <String, dynamic>{
      'vendor': instance.vendor,
      'advertisements': instance.advertisements,
      'hotProducts': instance.hotProducts,
      'scratchBanner': instance.scratchBanner,
      'posts': instance.posts,
    };

_$VendorImpl _$$VendorImplFromJson(Map<String, dynamic> json) => _$VendorImpl(
      id: json['id'] as String?,
      countryCode: json['countryCode'] as String?,
      languageCode: json['languageCode'] as String?,
      name: json['name'] as String?,
      photo: json['photo'] as String?,
      phone: json['phone'] as String?,
      username: json['username'] as String?,
    );

Map<String, dynamic> _$$VendorImplToJson(_$VendorImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'countryCode': instance.countryCode,
      'languageCode': instance.languageCode,
      'name': instance.name,
      'photo': instance.photo,
      'phone': instance.phone,
      'username': instance.username,
    };

_$AdvertisementImpl _$$AdvertisementImplFromJson(Map<String, dynamic> json) =>
    _$AdvertisementImpl(
      id: json['id'] as String?,
      order: json['order'] as String?,
      status: json['status'] as String?,
      image: json['image'] as String?,
      link: json['link'] as String?,
    );

Map<String, dynamic> _$$AdvertisementImplToJson(_$AdvertisementImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order': instance.order,
      'status': instance.status,
      'image': instance.image,
      'link': instance.link,
    };

_$HotProductImpl _$$HotProductImplFromJson(Map<String, dynamic> json) =>
    _$HotProductImpl(
      id: json['id'] as String?,
      countryCode: json['countryCode'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      price: json['price'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$HotProductImplToJson(_$HotProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'countryCode': instance.countryCode,
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'image': instance.image,
    };

_$PostImpl _$$PostImplFromJson(Map<String, dynamic> json) => _$PostImpl(
      id: json['id'] as String?,
      countryCode: json['countryCode'] as String?,
      userId: json['userId'] as String?,
      categoryId: json['categoryId'] as String?,
      postTypeId: json['postTypeId'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      price: json['price'] as String?,
      image: json['image'] as String?,
      createdAt: json['createdAt'] as String?,
    );

Map<String, dynamic> _$$PostImplToJson(_$PostImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'countryCode': instance.countryCode,
      'userId': instance.userId,
      'categoryId': instance.categoryId,
      'postTypeId': instance.postTypeId,
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'image': instance.image,
      'createdAt': instance.createdAt,
    };

_$PostsImpl _$$PostsImplFromJson(Map<String, dynamic> json) => _$PostsImpl(
      currentPage: (json['currentPage'] as num?)?.toInt(),
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => Post.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$PostsImplToJson(_$PostsImpl instance) =>
    <String, dynamic>{
      'currentPage': instance.currentPage,
      'data': instance.data,
    };
