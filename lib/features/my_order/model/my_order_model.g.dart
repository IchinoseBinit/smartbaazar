// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderImpl _$$OrderImplFromJson(Map<String, dynamic> json) => _$OrderImpl(
      id: json['id'] as String?,
      userId: json['userId'] as String?,
      vendorId: json['vendorId'] as String?,
      postId: json['postId'] as String?,
      orderId: json['orderId'] as String?,
      qty: json['qty'] as String?,
      price: json['price'] as String?,
      total: json['total'] as String?,
      paymentMethod: json['paymentMethod'] as String?,
      paymentProof: json['paymentProof'] as String?,
      deliveryMethod: json['deliveryMethod'] as String?,
      deliveryAddress: json['deliveryAddress'] as String?,
      coupon: json['coupon'] as String?,
      status: json['status'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$OrderImplToJson(_$OrderImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'vendorId': instance.vendorId,
      'postId': instance.postId,
      'orderId': instance.orderId,
      'qty': instance.qty,
      'price': instance.price,
      'total': instance.total,
      'paymentMethod': instance.paymentMethod,
      'paymentProof': instance.paymentProof,
      'deliveryMethod': instance.deliveryMethod,
      'deliveryAddress': instance.deliveryAddress,
      'coupon': instance.coupon,
      'status': instance.status,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
