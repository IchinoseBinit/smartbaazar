// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VendorProductSearchResponseImpl _$$VendorProductSearchResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$VendorProductSearchResponseImpl(
      data: json['data'] == null
          ? null
          : Vdata.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VendorProductSearchResponseImplToJson(
        _$VendorProductSearchResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$VdataImpl _$$VdataImplFromJson(Map<String, dynamic> json) => _$VdataImpl(
      Posts: json['Posts'] == null
          ? null
          : VPosts.fromJson(json['Posts'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VdataImplToJson(_$VdataImpl instance) =>
    <String, dynamic>{
      'Posts': instance.Posts,
    };

_$VPostsImpl _$$VPostsImplFromJson(Map<String, dynamic> json) => _$VPostsImpl(
      currentPage: (json['current_page'] as num).toInt(),
      data: (json['data'] as List<dynamic>)
          .map((e) => PostResult.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$VPostsImplToJson(_$VPostsImpl instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'data': instance.data,
    };
