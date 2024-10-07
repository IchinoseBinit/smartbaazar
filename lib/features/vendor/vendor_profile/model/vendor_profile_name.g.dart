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
          .toList(),
      posts: json['posts'] == null
          ? null
          : Posts.fromJson(json['posts'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VendorDataImplToJson(_$VendorDataImpl instance) =>
    <String, dynamic>{
      'vendor': instance.vendor,
      'advertisements': instance.advertisements,
      'posts': instance.posts,
    };

_$VendorImpl _$$VendorImplFromJson(Map<String, dynamic> json) => _$VendorImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      photo: json['photo'] as String?,
      username: json['username'] as String?,
      phone: json['phone'] as String?,
      contact_name: json['contact_name'] as String?,
      visits: json['visits'] as String?,
      city: json['city'] as String?,
    );

Map<String, dynamic> _$$VendorImplToJson(_$VendorImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'photo': instance.photo,
      'username': instance.username,
      'phone': instance.phone,
      'contact_name': instance.contact_name,
      'visits': instance.visits,
      'city': instance.city,
    };

_$AdvertisementImpl _$$AdvertisementImplFromJson(Map<String, dynamic> json) =>
    _$AdvertisementImpl(
      id: json['id'] as String?,
      image: json['image'] as String?,
      link: json['link'] as String?,
    );

Map<String, dynamic> _$$AdvertisementImplToJson(_$AdvertisementImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'link': instance.link,
    };

_$PostsImpl _$$PostsImplFromJson(Map<String, dynamic> json) => _$PostsImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Post.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PostsImplToJson(_$PostsImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$PostImpl _$$PostImplFromJson(Map<String, dynamic> json) => _$PostImpl(
      id: json['id'] as String?,
      title: json['title'] as String?,
      price: json['price'] as String?,
      image: json['image'] as String?,
      pickup: json['pickup'] as String?,
      username: json['username'] as String?,
      city: json['city'] as String?,
      avg_rating: (json['avg_rating'] as num?)?.toInt(),
      visits: json['visits'] as String?,
    );

Map<String, dynamic> _$$PostImplToJson(_$PostImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'image': instance.image,
      'pickup': instance.pickup,
      'username': instance.username,
      'city': instance.city,
      'avg_rating': instance.avg_rating,
      'visits': instance.visits,
    };
