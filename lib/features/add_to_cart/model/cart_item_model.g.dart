// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartItemImpl _$$CartItemImplFromJson(Map<String, dynamic> json) =>
    _$CartItemImpl(
      id: json['id'] as String,
      vendorId: json['vendor_id'] as String?,
      postId: json['post_id'] as String?,
      postTypeId: json['post_type_id'] as String?,
      name: json['name'] as String,
      qty: json['qty'] as String,
      price: json['price'] as String,
      image: json['image'] as String,
      pickup: json['pickup'] as String,
      longitude: json['longitude'] as String,
      latitude: json['latitude'] as String,
      weight: json['weight'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$$CartItemImplToJson(_$CartItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'vendor_id': instance.vendorId,
      'post_id': instance.postId,
      'post_type_id': instance.postTypeId,
      'name': instance.name,
      'qty': instance.qty,
      'price': instance.price,
      'image': instance.image,
      'pickup': instance.pickup,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'weight': instance.weight,
      'phone': instance.phone,
    };

_$VendorImpl _$$VendorImplFromJson(Map<String, dynamic> json) => _$VendorImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      username: json['username'] as String?,
    );

Map<String, dynamic> _$$VendorImplToJson(_$VendorImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
    };
