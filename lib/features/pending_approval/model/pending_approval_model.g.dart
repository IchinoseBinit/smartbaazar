// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pending_approval_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PendingApprovalModelImpl _$$PendingApprovalModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PendingApprovalModelImpl(
      products: Products.fromJson(json['products'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PendingApprovalModelImplToJson(
        _$PendingApprovalModelImpl instance) =>
    <String, dynamic>{
      'products': instance.products,
    };

_$ProductsImpl _$$ProductsImplFromJson(Map<String, dynamic> json) =>
    _$ProductsImpl(
      currentPage: (json['current_page'] as num?)?.toInt(),
      data: (json['data'] as List<dynamic>)
          .map((e) => MyListingProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
      firstPageUrl: json['first_page_url'] as String?,
      from: (json['from'] as num?)?.toInt(),
      lastPage: (json['last_page'] as num?)?.toInt(),
      lastPageUrl: json['last_page_url'] as String?,
      links: (json['links'] as List<dynamic>?)
          ?.map((e) => PageLink.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextPageUrl: json['next_page_url'] as String?,
      path: json['path'] as String?,
      perPage: (json['per_page'] as num?)?.toInt(),
      prevPageUrl: json['prev_page_url'] as String?,
      to: (json['to'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ProductsImplToJson(_$ProductsImpl instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'data': instance.data,
      'first_page_url': instance.firstPageUrl,
      'from': instance.from,
      'last_page': instance.lastPage,
      'last_page_url': instance.lastPageUrl,
      'links': instance.links,
      'next_page_url': instance.nextPageUrl,
      'path': instance.path,
      'per_page': instance.perPage,
      'prev_page_url': instance.prevPageUrl,
      'to': instance.to,
      'total': instance.total,
    };

_$PageLinkImpl _$$PageLinkImplFromJson(Map<String, dynamic> json) =>
    _$PageLinkImpl(
      url: json['url'] as String?,
      label: json['label'] as String?,
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$$PageLinkImplToJson(_$PageLinkImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'label': instance.label,
      'active': instance.active,
    };
