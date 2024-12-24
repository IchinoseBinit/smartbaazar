// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dispute_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DisputeModelImpl _$$DisputeModelImplFromJson(Map<String, dynamic> json) =>
    _$DisputeModelImpl(
      disputesReceived: (json['disputes_received'] as List<dynamic>?)
          ?.map((e) => Dispute.fromJson(e as Map<String, dynamic>))
          .toList(),
      disputesFiled: (json['disputes_filed'] as List<dynamic>?)
          ?.map((e) => Dispute.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DisputeModelImplToJson(_$DisputeModelImpl instance) =>
    <String, dynamic>{
      'disputes_received': instance.disputesReceived,
      'disputes_filed': instance.disputesFiled,
    };

_$DisputeImpl _$$DisputeImplFromJson(Map<String, dynamic> json) =>
    _$DisputeImpl(
      id: json['id'] as String?,
      userId: json['user_id'] as String?,
      vendorId: json['vendor_id'] as String?,
      vendorName: json['vendor_name'] as String?,
      vendorLink: json['vendor_link'] as String?,
      issue: json['issue'] as String?,
      message: json['message'] as String?,
      image: json['image'] as String?,
      postId: json['post_id'] as String?,
      orderId: json['order_id'] as String?,
      city: json['city'] as String?,
      cityCode: json['city_code'] as String?,
      street: json['street'] as String?,
      longitude: json['longitude'] as String?,
      latitude: json['latitude'] as String?,
      status: json['status'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      imageUrl: json['image_url'] as String?,
    );

Map<String, dynamic> _$$DisputeImplToJson(_$DisputeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'vendor_id': instance.vendorId,
      'vendor_name': instance.vendorName,
      'vendor_link': instance.vendorLink,
      'issue': instance.issue,
      'message': instance.message,
      'image': instance.image,
      'post_id': instance.postId,
      'order_id': instance.orderId,
      'city': instance.city,
      'city_code': instance.cityCode,
      'street': instance.street,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'status': instance.status,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'image_url': instance.imageUrl,
    };
