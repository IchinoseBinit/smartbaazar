// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SavedSearchModelImpl _$$SavedSearchModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SavedSearchModelImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      result: json['result'] == null
          ? null
          : Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SavedSearchModelImplToJson(
        _$SavedSearchModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'result': instance.result,
    };

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      savedSearches: json['savedSearches'] == null
          ? null
          : SavedSearches.fromJson(
              json['savedSearches'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'savedSearches': instance.savedSearches,
    };

_$SavedSearchesImpl _$$SavedSearchesImplFromJson(Map<String, dynamic> json) =>
    _$SavedSearchesImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => SavedSearch.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SavedSearchesImplToJson(_$SavedSearchesImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$SavedSearchImpl _$$SavedSearchImplFromJson(Map<String, dynamic> json) =>
    _$SavedSearchImpl(
      id: (json['id'] as num?)?.toInt(),
      countryCode: json['country_code'] as String?,
      userId: json['user_id'] as String?,
      keyword: json['keyword'] as String?,
      query: json['query'] as String?,
      count: json['count'] as String?,
    );

Map<String, dynamic> _$$SavedSearchImplToJson(_$SavedSearchImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'country_code': instance.countryCode,
      'user_id': instance.userId,
      'keyword': instance.keyword,
      'query': instance.query,
      'count': instance.count,
    };
