// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_story_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeStoryModelImpl _$$HomeStoryModelImplFromJson(Map<String, dynamic> json) =>
    _$HomeStoryModelImpl(
      homeStory: json['home_story'] == null
          ? null
          : HomeStoryData.fromJson(json['home_story'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HomeStoryModelImplToJson(
        _$HomeStoryModelImpl instance) =>
    <String, dynamic>{
      'home_story': instance.homeStory,
    };

_$HomeStoryDataImpl _$$HomeStoryDataImplFromJson(Map<String, dynamic> json) =>
    _$HomeStoryDataImpl(
      story: json['story'] == null
          ? null
          : Story.fromJson(json['story'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HomeStoryDataImplToJson(_$HomeStoryDataImpl instance) =>
    <String, dynamic>{
      'story': instance.story,
    };

_$StoryImpl _$$StoryImplFromJson(Map<String, dynamic> json) => _$StoryImpl(
      HomeStoryAllPosts: (json['HomeStoryAllPosts'] as List<dynamic>?)
          ?.map((e) => HomeStoryAllPost.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$StoryImplToJson(_$StoryImpl instance) =>
    <String, dynamic>{
      'HomeStoryAllPosts': instance.HomeStoryAllPosts,
    };

_$HomeStoryAllPostImpl _$$HomeStoryAllPostImplFromJson(
        Map<String, dynamic> json) =>
    _$HomeStoryAllPostImpl(
      vendorId: json['vendor_id'] as String?,
      vendorName: json['vendor_name'] as String?,
      vendorImage: json['vendor_image'] as String?,
      storyCount: (json['story_count'] as num?)?.toInt(),
      hasSponsoredGifts: json['has_sponsored_gifts'] as bool?,
      id: json['id'] as String?,
      title: json['title'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$HomeStoryAllPostImplToJson(
        _$HomeStoryAllPostImpl instance) =>
    <String, dynamic>{
      'vendor_id': instance.vendorId,
      'vendor_name': instance.vendorName,
      'vendor_image': instance.vendorImage,
      'story_count': instance.storyCount,
      'has_sponsored_gifts': instance.hasSponsoredGifts,
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
    };
