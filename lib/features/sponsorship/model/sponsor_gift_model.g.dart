// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sponsor_gift_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SponsorGiftModelImpl _$$SponsorGiftModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SponsorGiftModelImpl(
      data: json['data'] == null
          ? null
          : SponsorGiftData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SponsorGiftModelImplToJson(
        _$SponsorGiftModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$SponsorGiftDataImpl _$$SponsorGiftDataImplFromJson(
        Map<String, dynamic> json) =>
    _$SponsorGiftDataImpl(
      banners: (json['banners'] as List<dynamic>?)
          ?.map((e) => BannerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      gifts: (json['gifts'] as List<dynamic>?)
          ?.map((e) => GiftModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SponsorGiftDataImplToJson(
        _$SponsorGiftDataImpl instance) =>
    <String, dynamic>{
      'banners': instance.banners,
      'gifts': instance.gifts,
    };

_$BannerModelImpl _$$BannerModelImplFromJson(Map<String, dynamic> json) =>
    _$BannerModelImpl(
      id: json['id'] as String?,
      userId: json['user_id'] as String?,
      image: json['image'] as String?,
      status: json['status'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$BannerModelImplToJson(_$BannerModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'image': instance.image,
      'status': instance.status,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

_$GiftModelImpl _$$GiftModelImplFromJson(Map<String, dynamic> json) =>
    _$GiftModelImpl(
      id: json['id'] as String?,
      userId: json['user_id'] as String?,
      name: json['name'] as String?,
      discountPercentage: json['discount_percentage'] as String?,
      image: json['image'] as String?,
      worth: json['worth'] as String?,
      giftQty: json['gift_qty'] as String?,
      totalWorth: json['total_worth'] as String?,
      approved: json['approved'] as String?,
      timeFrame: json['time_frame'] as String?,
      status: json['status'] as String?,
      mileage: json['mileage'] as String?,
      mileageCount: json['mileage_count'] as String?,
      giftQtyCount: json['gift_qty_count'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$GiftModelImplToJson(_$GiftModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'name': instance.name,
      'discount_percentage': instance.discountPercentage,
      'image': instance.image,
      'worth': instance.worth,
      'gift_qty': instance.giftQty,
      'total_worth': instance.totalWorth,
      'approved': instance.approved,
      'time_frame': instance.timeFrame,
      'status': instance.status,
      'mileage': instance.mileage,
      'mileage_count': instance.mileageCount,
      'gift_qty_count': instance.giftQtyCount,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
