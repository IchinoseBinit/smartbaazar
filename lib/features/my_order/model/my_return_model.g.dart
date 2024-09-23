// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_return_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyReturnModelImpl _$$MyReturnModelImplFromJson(Map<String, dynamic> json) =>
    _$MyReturnModelImpl(
      returnReceived: json['return_received'] == null
          ? null
          : ReturnData.fromJson(
              json['return_received'] as Map<String, dynamic>),
      returnPlaced: json['return_placed'] == null
          ? null
          : ReturnData.fromJson(json['return_placed'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MyReturnModelImplToJson(_$MyReturnModelImpl instance) =>
    <String, dynamic>{
      'return_received': instance.returnReceived,
      'return_placed': instance.returnPlaced,
    };

_$ReturnDataImpl _$$ReturnDataImplFromJson(Map<String, dynamic> json) =>
    _$ReturnDataImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ReturnItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      links: (json['links'] as List<dynamic>?)
          ?.map((e) => Link.fromJson(e as Map<String, dynamic>))
          .toList(),
      path: json['path'] as String?,
    );

Map<String, dynamic> _$$ReturnDataImplToJson(_$ReturnDataImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'links': instance.links,
      'path': instance.path,
    };

_$ReturnItemImpl _$$ReturnItemImplFromJson(Map<String, dynamic> json) =>
    _$ReturnItemImpl(
      userId: json['user_id'] as String?,
      userName: json['user_name'] as String?,
      vendorId: json['vendor_id'] as String?,
      vendorName: json['vendor_name'] as String?,
      postId: json['post_id'] as String?,
      postName: json['post_name'] as String?,
      orderId: json['order_id'] as String?,
      amount: json['amount'] as String?,
      createdAt: json['created_at'] as String?,
      productTitle: json['product_title'] as String?,
      customerName: json['customer_name'] as String?,
      customerContact: json['customer_contact'] as String?,
      vendorContact: json['vendor_contact'] as String?,
    );

Map<String, dynamic> _$$ReturnItemImplToJson(_$ReturnItemImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'user_name': instance.userName,
      'vendor_id': instance.vendorId,
      'vendor_name': instance.vendorName,
      'post_id': instance.postId,
      'post_name': instance.postName,
      'order_id': instance.orderId,
      'amount': instance.amount,
      'created_at': instance.createdAt,
      'product_title': instance.productTitle,
      'customer_name': instance.customerName,
      'customer_contact': instance.customerContact,
      'vendor_contact': instance.vendorContact,
    };

_$LinkImpl _$$LinkImplFromJson(Map<String, dynamic> json) => _$LinkImpl(
      url: json['url'] as String?,
      label: json['label'] as String?,
      active: json['active'] as bool,
    );

Map<String, dynamic> _$$LinkImplToJson(_$LinkImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'label': instance.label,
      'active': instance.active,
    };
