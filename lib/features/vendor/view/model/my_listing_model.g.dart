// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_listing_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyListingModel _$MyListingModelFromJson(Map<String, dynamic> json) =>
    MyListingModel(
      products: json['products'] == null
          ? null
          : Products.fromJson(json['products'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MyListingModelToJson(MyListingModel instance) =>
    <String, dynamic>{
      'products': instance.products,
    };

Products _$ProductsFromJson(Map<String, dynamic> json) => Products(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => MyListingProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
      currentPage: (json['currentPage'] as num?)?.toInt(),
      from: (json['from'] as num?)?.toInt(),
      lastPage: (json['lastPage'] as num?)?.toInt(),
      firstPageUrl: json['firstPageUrl'] as String?,
      lastPageUrl: json['lastPageUrl'] as String?,
      path: json['path'] as String?,
      perPage: (json['perPage'] as num?)?.toInt(),
      nextPageUrl: json['nextPageUrl'] as String?,
      prevPageUrl: json['prevPageUrl'] as String?,
      to: (json['to'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
      links: (json['links'] as List<dynamic>?)
          ?.map((e) => Link.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProductsToJson(Products instance) => <String, dynamic>{
      'data': instance.data,
      'currentPage': instance.currentPage,
      'from': instance.from,
      'lastPage': instance.lastPage,
      'firstPageUrl': instance.firstPageUrl,
      'lastPageUrl': instance.lastPageUrl,
      'path': instance.path,
      'perPage': instance.perPage,
      'nextPageUrl': instance.nextPageUrl,
      'prevPageUrl': instance.prevPageUrl,
      'to': instance.to,
      'total': instance.total,
      'links': instance.links,
    };

MyListingProduct _$MyListingProductFromJson(Map<String, dynamic> json) =>
    MyListingProduct(
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
      pickup: json['pickup'] as String?,
      longitude: json['longitude'] as String?,
      latitude: json['latitude'] as String?,
      hyperDel: json['hyper_del'] as String?,
      sellerDel: json['seller_del'] as String?,
      visits: json['visits'] as String?,
      emailToken: json['email_token'] as String?,
      phoneToken: json['phone_token'] as String?,
      tmpToken: json['tmpToken'] as String?,
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
      wow: json['wow'] as String?,
      offers: json['offers'] as String?,
      storyDisplayDays: json['story_display_days'] as String?,
      barcode: json['barcode'] as String?,
      b2bPricing: json['b2b_pricing'] as String?,
      deletedAt: json['deleted_at'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      image: json['image'] as String?,
      avgRating: (json['avg_rating'] as num?)?.toInt(),
    );

Map<String, dynamic> _$MyListingProductToJson(MyListingProduct instance) =>
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
      'tmpToken': instance.tmpToken,
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
      'wow': instance.wow,
      'offers': instance.offers,
      'story_display_days': instance.storyDisplayDays,
      'barcode': instance.barcode,
      'b2b_pricing': instance.b2bPricing,
      'deleted_at': instance.deletedAt,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'image': instance.image,
      'avg_rating': instance.avgRating,
    };

Link _$LinkFromJson(Map<String, dynamic> json) => Link(
      url: json['url'] as String?,
      label: json['label'] as String?,
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$LinkToJson(Link instance) => <String, dynamic>{
      'url': instance.url,
      'label': instance.label,
      'active': instance.active,
    };
