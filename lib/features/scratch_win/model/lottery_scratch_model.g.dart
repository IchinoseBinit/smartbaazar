// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lottery_scratch_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GiftResponseModelImpl _$$GiftResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GiftResponseModelImpl(
      data: json['data'] == null
          ? null
          : LotteryData.fromJson(json['data'] as Map<String, dynamic>),
      msg: json['msg'] as String?,
    );

Map<String, dynamic> _$$GiftResponseModelImplToJson(
        _$GiftResponseModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'msg': instance.msg,
    };

_$LotteryDataImpl _$$LotteryDataImplFromJson(Map<String, dynamic> json) =>
    _$LotteryDataImpl(
      total_participants: json['total_participants'] == null
          ? null
          : TotalParticipants.fromJson(
              json['total_participants'] as Map<String, dynamic>),
      user_name: json['user_name'] == null
          ? null
          : GiftName.fromJson(json['user_name'] as Map<String, dynamic>),
      status: (json['status'] as num?)?.toInt(),
      banners: json['banners'],
      gifts: json['gifts'] == null
          ? null
          : GiftGot.fromJson(json['gifts'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$LotteryDataImplToJson(_$LotteryDataImpl instance) =>
    <String, dynamic>{
      'total_participants': instance.total_participants,
      'user_name': instance.user_name,
      'status': instance.status,
      'banners': instance.banners,
      'gifts': instance.gifts,
      'message': instance.message,
    };

_$TotalParticipantsImpl _$$TotalParticipantsImplFromJson(
        Map<String, dynamic> json) =>
    _$TotalParticipantsImpl(
      total: json['total'] as String?,
    );

Map<String, dynamic> _$$TotalParticipantsImplToJson(
        _$TotalParticipantsImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
    };

_$GiftNameImpl _$$GiftNameImplFromJson(Map<String, dynamic> json) =>
    _$GiftNameImpl(
      username: json['username'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      link: json['link'] as String?,
    );

Map<String, dynamic> _$$GiftNameImplToJson(_$GiftNameImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'name': instance.name,
      'email': instance.email,
      'link': instance.link,
    };

_$GiftGotImpl _$$GiftGotImplFromJson(Map<String, dynamic> json) =>
    _$GiftGotImpl(
      id: json['id'] as String?,
      user_id: json['user_id'] as String?,
      post_id: json['post_id'] as String?,
      name: json['name'] as String?,
      discount_percentage: json['discount_percentage'] as String?,
      image: json['image'] as String?,
      worth: json['worth'] as String?,
      gift_qty: json['gift_qty'] as String?,
      total_worth: json['total_worth'] as String?,
      approved: json['approved'] as String?,
      time_frame: json['time_frame'] as String?,
      status: json['status'] as String?,
      mileage: json['mileage'] as String?,
      mileage_count: json['mileage_count'] as String?,
      gift_qty_count: json['gift_qty_count'] as String?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$GiftGotImplToJson(_$GiftGotImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.user_id,
      'post_id': instance.post_id,
      'name': instance.name,
      'discount_percentage': instance.discount_percentage,
      'image': instance.image,
      'worth': instance.worth,
      'gift_qty': instance.gift_qty,
      'total_worth': instance.total_worth,
      'approved': instance.approved,
      'time_frame': instance.time_frame,
      'status': instance.status,
      'mileage': instance.mileage,
      'mileage_count': instance.mileage_count,
      'gift_qty_count': instance.gift_qty_count,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };
