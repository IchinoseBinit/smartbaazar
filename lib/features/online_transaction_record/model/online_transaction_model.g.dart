// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'online_transaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OnlineTransactionModelImpl _$$OnlineTransactionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OnlineTransactionModelImpl(
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
      msg: json['msg'] as String,
    );

Map<String, dynamic> _$$OnlineTransactionModelImplToJson(
        _$OnlineTransactionModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'msg': instance.msg,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      allPayments: (json['all_payments'] as List<dynamic>)
          .map((e) => Payment.fromJson(e as Map<String, dynamic>))
          .toList(),
      holdPayments: (json['hold_payments'] as List<dynamic>)
          .map((e) => Payment.fromJson(e as Map<String, dynamic>))
          .toList(),
      releasePayments: json['release_payments'] as List<dynamic>,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'all_payments': instance.allPayments,
      'hold_payments': instance.holdPayments,
      'release_payments': instance.releasePayments,
    };

_$PaymentImpl _$$PaymentImplFromJson(Map<String, dynamic> json) =>
    _$PaymentImpl(
      id: json['id'] as String,
      orderId: json['order_id'] as String,
      postId: json['post_id'] as String,
      transactionId: json['transaction_id'] as String?,
      userId: json['user_id'] as String,
      vendorId: json['vendor_id'] as String,
      amount: json['amount'] as String,
      delCost: json['del_cost'] as String,
      total: json['total'] as String,
      coupon: json['coupon'] as String,
      status: json['status'] as String,
      method: json['method'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'],
      releaseDate: json['release_date'],
    );

Map<String, dynamic> _$$PaymentImplToJson(_$PaymentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order_id': instance.orderId,
      'post_id': instance.postId,
      'transaction_id': instance.transactionId,
      'user_id': instance.userId,
      'vendor_id': instance.vendorId,
      'amount': instance.amount,
      'del_cost': instance.delCost,
      'total': instance.total,
      'coupon': instance.coupon,
      'status': instance.status,
      'method': instance.method,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt,
      'release_date': instance.releaseDate,
    };
