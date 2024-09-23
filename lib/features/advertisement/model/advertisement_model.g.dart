// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advertisement_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdvertisementResponseImpl _$$AdvertisementResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AdvertisementResponseImpl(
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
      msg: json['msg'] as String,
    );

Map<String, dynamic> _$$AdvertisementResponseImplToJson(
        _$AdvertisementResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'msg': instance.msg,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      ads: (json['ads'] as List<dynamic>)
          .map((e) => Ad.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'ads': instance.ads,
    };

_$AdImpl _$$AdImplFromJson(Map<String, dynamic> json) => _$AdImpl(
      id: json['id'] as String,
      userId: json['user_id'] as String,
      image: json['image'] as String,
      link: json['link'] as String,
      createdAt: json['created_at'] as String,
    );

Map<String, dynamic> _$$AdImplToJson(_$AdImpl instance) => <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'image': instance.image,
      'link': instance.link,
      'created_at': instance.createdAt,
    };
