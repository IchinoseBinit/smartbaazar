// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CheckoutDetailsModelImpl _$$CheckoutDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CheckoutDetailsModelImpl(
      vendor: (json['vendor'] as List<dynamic>?)
          ?.map((e) => Vendor.fromJson(e as Map<String, dynamic>))
          .toList(),
      user: (json['user'] as List<dynamic>?)
          ?.map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
      coupons: (json['coupons'] as List<dynamic>?)
          ?.map((e) => Coupon.fromJson(e as Map<String, dynamic>))
          .toList(),
      cartTotal: (json['cart_total'] as num?)?.toInt(),
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['msg'] as String?,
    );

Map<String, dynamic> _$$CheckoutDetailsModelImplToJson(
        _$CheckoutDetailsModelImpl instance) =>
    <String, dynamic>{
      'vendor': instance.vendor,
      'user': instance.user,
      'coupons': instance.coupons,
      'cart_total': instance.cartTotal,
      'items': instance.items,
      'msg': instance.message,
    };

_$VendorImpl _$$VendorImplFromJson(Map<String, dynamic> json) => _$VendorImpl();

Map<String, dynamic> _$$VendorImplToJson(_$VendorImpl instance) =>
    <String, dynamic>{};

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
    };

_$CouponImpl _$$CouponImplFromJson(Map<String, dynamic> json) => _$CouponImpl();

Map<String, dynamic> _$$CouponImplToJson(_$CouponImpl instance) =>
    <String, dynamic>{};

_$ItemImpl _$$ItemImplFromJson(Map<String, dynamic> json) => _$ItemImpl(
      id: json['id'] as String?,
      userId: json['user_id'] as String?,
      vendorId: json['vendor_id'] as String?,
      postId: json['post_id'] as String?,
      name: json['name'] as String?,
      qty: json['qty'] as String?,
      price: json['price'] as String?,
      image: json['image'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      itemTotal: (json['item_total'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ItemImplToJson(_$ItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'vendor_id': instance.vendorId,
      'post_id': instance.postId,
      'name': instance.name,
      'qty': instance.qty,
      'price': instance.price,
      'image': instance.image,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'item_total': instance.itemTotal,
    };
