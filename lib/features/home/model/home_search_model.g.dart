// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeSearchResopnseImpl _$$HomeSearchResopnseImplFromJson(
        Map<String, dynamic> json) =>
    _$HomeSearchResopnseImpl(
      data: HomeSearchData.fromJson(json['data'] as Map<String, dynamic>),
      msg: json['msg'] as String,
    );

Map<String, dynamic> _$$HomeSearchResopnseImplToJson(
        _$HomeSearchResopnseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'msg': instance.msg,
    };

_$HomeSearchDataImpl _$$HomeSearchDataImplFromJson(Map<String, dynamic> json) =>
    _$HomeSearchDataImpl(
      home_story: HomeSearchStoryData.fromJson(
          json['home_story'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HomeSearchDataImplToJson(
        _$HomeSearchDataImpl instance) =>
    <String, dynamic>{
      'home_story': instance.home_story,
    };

_$HomeSearchStoryDataImpl _$$HomeSearchStoryDataImplFromJson(
        Map<String, dynamic> json) =>
    _$HomeSearchStoryDataImpl(
      story: FeedStory.fromJson(json['story'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HomeSearchStoryDataImplToJson(
        _$HomeSearchStoryDataImpl instance) =>
    <String, dynamic>{
      'story': instance.story,
    };
