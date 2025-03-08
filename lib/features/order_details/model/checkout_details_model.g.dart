// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CheckoutDetailsModelImpl _$$CheckoutDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CheckoutDetailsModelImpl(
      data: json['data'] == null
          ? null
          : CheckoutData.fromJson(json['data'] as Map<String, dynamic>),
      message: json['msg'] as String?,
    );

Map<String, dynamic> _$$CheckoutDetailsModelImplToJson(
        _$CheckoutDetailsModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'msg': instance.message,
    };

_$CheckoutDataImpl _$$CheckoutDataImplFromJson(Map<String, dynamic> json) =>
    _$CheckoutDataImpl(
      vendor: (json['vendor'] as List<dynamic>?)
          ?.map((e) => Vendor.fromJson(e as Map<String, dynamic>))
          .toList(),
      user: (json['user'] as List<dynamic>?)
          ?.map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
      coupons: json['coupons'] as List<dynamic>?,
      cartTotal: (json['cart_total'] as num?)?.toInt(),
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CheckoutDataImplToJson(_$CheckoutDataImpl instance) =>
    <String, dynamic>{
      'vendor': instance.vendor,
      'user': instance.user,
      'coupons': instance.coupons,
      'cart_total': instance.cartTotal,
      'items': instance.items,
    };

_$VendorImpl _$$VendorImplFromJson(Map<String, dynamic> json) => _$VendorImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      paymentQr: json['payment_qr'] as String?,
    );

Map<String, dynamic> _$$VendorImplToJson(_$VendorImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'payment_qr': instance.paymentQr,
    };

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

_$ItemImpl _$$ItemImplFromJson(Map<String, dynamic> json) => _$ItemImpl(
      id: json['id'] as String?,
      userId: json['user_id'] as String?,
      vendorId: json['vendor_id'] as String?,
      postId: json['post_id'] as String?,
      name: json['name'] as String?,
      title: json['title'] as String?,
      qty: json['qty'] as String? ?? '1',
      price: json['price'] as String,
      lon: json['lon'] as String?,
      lat: json['lat'] as String?,
      image: json['image'] as String?,
      pickup: json['pickup'] as String?,
      stock: json['stock'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      discountOnBulks: (json['discount_on_bulks'] as List<dynamic>?)
          ?.map((e) => DiscountOnBulk.fromJson(e as Map<String, dynamic>))
          .toList(),
      itemTotal: (json['item_total'] as num?)?.toInt(),
      postTypeId: json['post_type_id'] as String?,
    );

Map<String, dynamic> _$$ItemImplToJson(_$ItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'vendor_id': instance.vendorId,
      'post_id': instance.postId,
      'name': instance.name,
      'title': instance.title,
      'qty': instance.qty,
      'price': instance.price,
      'lon': instance.lon,
      'lat': instance.lat,
      'image': instance.image,
      'pickup': instance.pickup,
      'stock': instance.stock,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'discount_on_bulks': instance.discountOnBulks,
      'item_total': instance.itemTotal,
      'post_type_id': instance.postTypeId,
    };

_$DiscountOnBulkImpl _$$DiscountOnBulkImplFromJson(Map<String, dynamic> json) =>
    _$DiscountOnBulkImpl(
      pieceFrom: json['piece_from'] as String?,
      pieceTo: json['piece_to'] as String?,
      rate: json['rate'] as String?,
    );

Map<String, dynamic> _$$DiscountOnBulkImplToJson(
        _$DiscountOnBulkImpl instance) =>
    <String, dynamic>{
      'piece_from': instance.pieceFrom,
      'piece_to': instance.pieceTo,
      'rate': instance.rate,
    };
