// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offline_listing_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OfflineListingModelImpl _$$OfflineListingModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OfflineListingModelImpl(
      products: json['products'] == null
          ? null
          : Products.fromJson(json['products'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OfflineListingModelImplToJson(
        _$OfflineListingModelImpl instance) =>
    <String, dynamic>{
      'products': instance.products,
    };

_$ProductsImpl _$$ProductsImplFromJson(Map<String, dynamic> json) =>
    _$ProductsImpl(
      currentPage: (json['current_page'] as num?)?.toInt(),
      data: (json['data'] as List<dynamic>)
          .map((e) => ProductData.fromJson(e as Map<String, dynamic>))
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

_$ProductDataImpl _$$ProductDataImplFromJson(Map<String, dynamic> json) =>
    _$ProductDataImpl(
      id: json['id'] as String?,
      countryCode: json['country_code'] as String?,
      userId: json['user_id'] as String?,
      categoryId: json['category_id'] as String?,
      postTypeId: json['post_type_id'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      tags: json['tags'] as String?,
      price: json['price'] as String?,
      negotiable: json['negotiable'] as String?,
      contactName: json['contact_name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      phoneHidden: json['phone_hidden'] as String?,
      address: json['address'] as String?,
      cityId: json['city_id'] as String?,
      lon: json['lon'] as String?,
      lat: json['lat'] as String?,
      ipAddr: json['ip_addr'] as String?,
      length: json['length'] as String?,
      width: json['width'] as String?,
      weight: json['weight'] as String?,
      height: json['height'] as String?,
      pickup: json['pickup'] as String,
      longitude: json['longitude'] as String,
      latitude: json['latitude'] as String,
      hyperDel: json['hyper_del'] as String?,
      sellerDel: json['seller_del'] as String?,
      visits: json['visits'] as String?,
      emailToken: json['email_token'] as String?,
      phoneToken: json['phone_token'] as String?,
      tmpToken: json['tmp_token'] as String?,
      verifiedEmail: json['verified_email'] as String?,
      verifiedPhone: json['verified_phone'] as String?,
      acceptTerms: json['accept_terms'] as String?,
      acceptMarketingOffers: json['accept_marketing_offers'] as String?,
      isPermanent: json['is_permanent'] as String?,
      reviewed: json['reviewed'] as String?,
      featured: json['featured'] as String?,
      archived: json['archived'] as String?,
      archivedAt: json['archived_at'] as String?,
      archivedManually: json['archived_manually'] as String?,
      deletionMailSentAt: json['deletion_mail_sent_at'] as String?,
      fbProfile: json['fb_profile'] as String?,
      partner: json['partner'] as String?,
      discountedPrice: json['discounted_price'] as String?,
      trending: json['trending'] as String?,
      stock: json['stock'] as String?,
      minOrder: json['min_order'] as String?,
      sampPrice: json['samp_price'] as String?,
      textOne: json['text_one'] as String?,
      textTwo: json['text_two'] as String?,
      avaTo: json['ava_to'] as String?,
      branded: json['branded'] as String?,
      deletedAt: json['deleted_at'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      image: json['image'] as String?,
      avgRating: (json['avg_rating'] as num?)?.toInt(),
      savedByLoggedUser: json['savedByLoggedUser'] as List<dynamic>?,
    );

Map<String, dynamic> _$$ProductDataImplToJson(_$ProductDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'country_code': instance.countryCode,
      'user_id': instance.userId,
      'category_id': instance.categoryId,
      'post_type_id': instance.postTypeId,
      'title': instance.title,
      'description': instance.description,
      'tags': instance.tags,
      'price': instance.price,
      'negotiable': instance.negotiable,
      'contact_name': instance.contactName,
      'email': instance.email,
      'phone': instance.phone,
      'phone_hidden': instance.phoneHidden,
      'address': instance.address,
      'city_id': instance.cityId,
      'lon': instance.lon,
      'lat': instance.lat,
      'ip_addr': instance.ipAddr,
      'length': instance.length,
      'width': instance.width,
      'weight': instance.weight,
      'height': instance.height,
      'pickup': instance.pickup,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'hyper_del': instance.hyperDel,
      'seller_del': instance.sellerDel,
      'visits': instance.visits,
      'email_token': instance.emailToken,
      'phone_token': instance.phoneToken,
      'tmp_token': instance.tmpToken,
      'verified_email': instance.verifiedEmail,
      'verified_phone': instance.verifiedPhone,
      'accept_terms': instance.acceptTerms,
      'accept_marketing_offers': instance.acceptMarketingOffers,
      'is_permanent': instance.isPermanent,
      'reviewed': instance.reviewed,
      'featured': instance.featured,
      'archived': instance.archived,
      'archived_at': instance.archivedAt,
      'archived_manually': instance.archivedManually,
      'deletion_mail_sent_at': instance.deletionMailSentAt,
      'fb_profile': instance.fbProfile,
      'partner': instance.partner,
      'discounted_price': instance.discountedPrice,
      'trending': instance.trending,
      'stock': instance.stock,
      'min_order': instance.minOrder,
      'samp_price': instance.sampPrice,
      'text_one': instance.textOne,
      'text_two': instance.textTwo,
      'ava_to': instance.avaTo,
      'branded': instance.branded,
      'deleted_at': instance.deletedAt,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'image': instance.image,
      'avg_rating': instance.avgRating,
      'savedByLoggedUser': instance.savedByLoggedUser,
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
