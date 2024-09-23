// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderResponseImpl _$$OrderResponseImplFromJson(Map<String, dynamic> json) =>
    _$OrderResponseImpl(
      ordersReceived: OrdersReceived.fromJson(
          json['orders_received'] as Map<String, dynamic>),
      ordersPlaced:
          OrdersPlaced.fromJson(json['orders_placed'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OrderResponseImplToJson(_$OrderResponseImpl instance) =>
    <String, dynamic>{
      'orders_received': instance.ordersReceived,
      'orders_placed': instance.ordersPlaced,
    };

_$OrdersPlacedImpl _$$OrdersPlacedImplFromJson(Map<String, dynamic> json) =>
    _$OrdersPlacedImpl(
      currentPage: (json['current_page'] as num?)?.toInt(),
      data: (json['data'] as List<dynamic>)
          .map((e) => OrdersPlacedDatum.fromJson(e as Map<String, dynamic>))
          .toList(),
      firstPageUrl: json['first_page_url'] as String?,
      from: (json['from'] as num?)?.toInt(),
      lastPage: (json['last_page'] as num?)?.toInt(),
      lastPageUrl: json['last_page_url'] as String?,
      links: (json['links'] as List<dynamic>)
          .map((e) => Link.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextPageUrl: json['next_page_url'] as String?,
      path: json['path'] as String?,
      perPage: (json['per_page'] as num?)?.toInt(),
      prevPageUrl: json['prev_page_url'],
      to: (json['to'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$OrdersPlacedImplToJson(_$OrdersPlacedImpl instance) =>
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

_$OrdersPlacedDatumImpl _$$OrdersPlacedDatumImplFromJson(
        Map<String, dynamic> json) =>
    _$OrdersPlacedDatumImpl(
      id: json['id'] as String?,
      userId: json['user_id'] as String?,
      vendorId: json['vendor_id'] as String?,
      postId: json['post_id'] as String?,
      orderId: json['order_id'] as String?,
      qty: json['qty'] as String?,
      price: json['price'] as String?,
      shippingCharge: json['shipping_charge'] as String?,
      total: json['total'] as String?,
      paymentMethod: json['payment_method'] as String?,
      paymentProof: json['payment_proof'],
      deliveryMethod: json['delivery_method'] as String?,
      deliveryAddress: json['delivery_address'] as String?,
      coupon: json['coupon'] as String?,
      status: json['status'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'],
      postTitle: json['post_title'] as String?,
      customerName: json['customer_name'] as String?,
      customerContact: json['customer_contact'] as String?,
      vendorName: json['vendor_name'] as String?,
      vendorContact: json['vendor_contact'] as String?,
      postPhotoUrl: json['post_photo_url'] as String?,
    );

Map<String, dynamic> _$$OrdersPlacedDatumImplToJson(
        _$OrdersPlacedDatumImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'vendor_id': instance.vendorId,
      'post_id': instance.postId,
      'order_id': instance.orderId,
      'qty': instance.qty,
      'price': instance.price,
      'shipping_charge': instance.shippingCharge,
      'total': instance.total,
      'payment_method': instance.paymentMethod,
      'payment_proof': instance.paymentProof,
      'delivery_method': instance.deliveryMethod,
      'delivery_address': instance.deliveryAddress,
      'coupon': instance.coupon,
      'status': instance.status,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt,
      'post_title': instance.postTitle,
      'customer_name': instance.customerName,
      'customer_contact': instance.customerContact,
      'vendor_name': instance.vendorName,
      'vendor_contact': instance.vendorContact,
      'post_photo_url': instance.postPhotoUrl,
    };

_$LinkImpl _$$LinkImplFromJson(Map<String, dynamic> json) => _$LinkImpl(
      url: json['url'] as String?,
      label: json['label'] as String,
      active: json['active'] as bool,
    );

Map<String, dynamic> _$$LinkImplToJson(_$LinkImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'label': instance.label,
      'active': instance.active,
    };

_$OrdersReceivedImpl _$$OrdersReceivedImplFromJson(Map<String, dynamic> json) =>
    _$OrdersReceivedImpl(
      currentPage: (json['current_page'] as num?)?.toInt(),
      data: (json['data'] as List<dynamic>)
          .map((e) => OrdersReceivedDatum.fromJson(e as Map<String, dynamic>))
          .toList(),
      firstPageUrl: json['first_page_url'] as String?,
      from: (json['from'] as num?)?.toInt(),
      lastPage: (json['last_page'] as num?)?.toInt(),
      lastPageUrl: json['last_page_url'] as String?,
      links: (json['links'] as List<dynamic>)
          .map((e) => Link.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextPageUrl: json['next_page_url'] as String?,
      path: json['path'] as String?,
      perPage: (json['per_page'] as num?)?.toInt(),
      prevPageUrl: json['prev_page_url'],
      to: (json['to'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$OrdersReceivedImplToJson(
        _$OrdersReceivedImpl instance) =>
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

_$OrdersReceivedDatumImpl _$$OrdersReceivedDatumImplFromJson(
        Map<String, dynamic> json) =>
    _$OrdersReceivedDatumImpl(
      id: json['id'] as String?,
      userId: json['user_id'] as String?,
      vendorId: json['vendor_id'] as String?,
      postId: json['post_id'] as String?,
      orderId: json['order_id'],
      qty: json['qty'] as String?,
      price: json['price'] as String?,
      shippingCharge: json['shipping_charge'] as String?,
      total: json['total'] as String?,
      paymentMethod: json['payment_method'] as String?,
      paymentProof: json['payment_proof'],
      deliveryMethod: json['delivery_method'] as String?,
      deliveryAddress: json['delivery_address'] as String?,
      coupon: json['coupon'] as String?,
      status: json['status'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'],
      postTitle: json['post_title'] as String?,
      customerName: json['customer_name'] as String?,
      customerContact: json['customer_contact'] as String?,
      vendorName: json['vendor_name'] as String?,
      vendorContact: json['vendor_contact'] as String?,
      postPhotoUrl: json['post_photo_url'] as String?,
    );

Map<String, dynamic> _$$OrdersReceivedDatumImplToJson(
        _$OrdersReceivedDatumImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'vendor_id': instance.vendorId,
      'post_id': instance.postId,
      'order_id': instance.orderId,
      'qty': instance.qty,
      'price': instance.price,
      'shipping_charge': instance.shippingCharge,
      'total': instance.total,
      'payment_method': instance.paymentMethod,
      'payment_proof': instance.paymentProof,
      'delivery_method': instance.deliveryMethod,
      'delivery_address': instance.deliveryAddress,
      'coupon': instance.coupon,
      'status': instance.status,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt,
      'post_title': instance.postTitle,
      'customer_name': instance.customerName,
      'customer_contact': instance.customerContact,
      'vendor_name': instance.vendorName,
      'vendor_contact': instance.vendorContact,
      'post_photo_url': instance.postPhotoUrl,
    };
