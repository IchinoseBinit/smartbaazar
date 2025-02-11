// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_live_prizes_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VendorLivePrizePostResponseImpl _$$VendorLivePrizePostResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$VendorLivePrizePostResponseImpl(
      data: VendorLivePrizePostData.fromJson(
          json['data'] as Map<String, dynamic>),
      msg: json['msg'] as String,
    );

Map<String, dynamic> _$$VendorLivePrizePostResponseImplToJson(
        _$VendorLivePrizePostResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'msg': instance.msg,
    };

_$VendorLivePrizePostDataImpl _$$VendorLivePrizePostDataImplFromJson(
        Map<String, dynamic> json) =>
    _$VendorLivePrizePostDataImpl(
      live_prizes: (json['live_prizes'] as List<dynamic>?)
          ?.map((e) => FeedPost.fromJson(e as Map<String, dynamic>))
          .toList(),
      feedPosts: (json['feedPosts'] as List<dynamic>)
          .map((e) => FeedPost.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$VendorLivePrizePostDataImplToJson(
        _$VendorLivePrizePostDataImpl instance) =>
    <String, dynamic>{
      'live_prizes': instance.live_prizes,
      'feedPosts': instance.feedPosts,
    };
