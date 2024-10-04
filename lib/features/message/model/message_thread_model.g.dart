// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_thread_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageThreadModelImpl _$$MessageThreadModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MessageThreadModelImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      result: json['result'] == null
          ? null
          : Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MessageThreadModelImplToJson(
        _$MessageThreadModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'result': instance.result,
    };

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ThreadData.fromJson(e as Map<String, dynamic>))
          .toList(),
      links: json['links'] == null
          ? null
          : Links.fromJson(json['links'] as Map<String, dynamic>),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'links': instance.links,
      'meta': instance.meta,
    };

_$ThreadDataImpl _$$ThreadDataImplFromJson(Map<String, dynamic> json) =>
    _$ThreadDataImpl(
      id: (json['id'] as num?)?.toInt(),
      postId: json['post_id'] as String?,
      subject: json['subject'] as String?,
    );

Map<String, dynamic> _$$ThreadDataImplToJson(_$ThreadDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'post_id': instance.postId,
      'subject': instance.subject,
    };

_$LinksImpl _$$LinksImplFromJson(Map<String, dynamic> json) => _$LinksImpl(
      first: json['first'] as String?,
      last: json['last'] as String?,
      prev: json['prev'] as String?,
      next: json['next'] as String?,
    );

Map<String, dynamic> _$$LinksImplToJson(_$LinksImpl instance) =>
    <String, dynamic>{
      'first': instance.first,
      'last': instance.last,
      'prev': instance.prev,
      'next': instance.next,
    };

_$MetaImpl _$$MetaImplFromJson(Map<String, dynamic> json) => _$MetaImpl(
      currentPage: (json['current_page'] as num?)?.toInt(),
      from: (json['from'] as num?)?.toInt(),
      lastPage: (json['last_page'] as num?)?.toInt(),
      links: (json['links'] as List<dynamic>?)
          ?.map((e) => MetaLink.fromJson(e as Map<String, dynamic>))
          .toList(),
      path: json['path'] as String?,
      perPage: json['per_page'] as String?,
      to: (json['to'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$MetaImplToJson(_$MetaImpl instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'from': instance.from,
      'last_page': instance.lastPage,
      'links': instance.links,
      'path': instance.path,
      'per_page': instance.perPage,
      'to': instance.to,
      'total': instance.total,
    };

_$MetaLinkImpl _$$MetaLinkImplFromJson(Map<String, dynamic> json) =>
    _$MetaLinkImpl(
      url: json['url'] as String?,
      label: json['label'] as String?,
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$$MetaLinkImplToJson(_$MetaLinkImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'label': instance.label,
      'active': instance.active,
    };
