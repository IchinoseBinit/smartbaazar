// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_buy_now_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostBuyNowModelImpl _$$PostBuyNowModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PostBuyNowModelImpl(
      data: json['data'] == null
          ? null
          : BuyNowModel.fromJson(json['data'] as Map<String, dynamic>),
      msg: json['msg'] as String?,
    );

Map<String, dynamic> _$$PostBuyNowModelImplToJson(
        _$PostBuyNowModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'msg': instance.msg,
    };

_$BuyNowModelImpl _$$BuyNowModelImplFromJson(Map<String, dynamic> json) =>
    _$BuyNowModelImpl(
      posts: (json['posts'] as List<dynamic>?)
              ?.map((e) => BuyNowPostModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      vendor: (json['vendor'] as List<dynamic>?)
              ?.map(
                  (e) => VendorBuyNowModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      user: (json['user'] as List<dynamic>?)
              ?.map((e) => BuyNowUserModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      coupons: json['coupons'] as List<dynamic>? ?? const [],
    );

Map<String, dynamic> _$$BuyNowModelImplToJson(_$BuyNowModelImpl instance) =>
    <String, dynamic>{
      'posts': instance.posts,
      'vendor': instance.vendor,
      'user': instance.user,
      'coupons': instance.coupons,
    };

_$BuyNowPostModelImpl _$$BuyNowPostModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BuyNowPostModelImpl(
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
      contactName: json['contactName'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      phoneHidden: json['phoneHidden'] as String?,
      address: json['address'] as String?,
      cityId: json['city_id'] as String?,
      lon: json['lon'] as String?,
      lat: json['lat'] as String?,
      ipAddr: json['ipAddr'] as String?,
      length: json['length'] as String?,
      width: json['width'] as String?,
      weight: json['weight'] as String?,
      height: json['height'] as String?,
      pickup: json['pickup'] as String?,
      longitude: json['longitude'] as String?,
      latitude: json['latitude'] as String?,
      hyperDel: json['hyperDel'] as String?,
      sellerDel: json['sellerDel'] as String?,
      visits: json['visits'] as String?,
      emailToken: json['emailToken'] as String?,
      phoneToken: json['phoneToken'] as String?,
      tmpToken: json['tmpToken'] as String?,
      verifiedEmail: json['verifiedEmail'] as String?,
      verifiedPhone: json['verifiedPhone'] as String?,
      acceptTerms: json['acceptTerms'] as String?,
      acceptMarketingOffers: json['acceptMarketingOffers'] as String?,
      isPermanent: json['isPermanent'] as String?,
      reviewed: json['reviewed'] as String?,
      featured: json['featured'] as String?,
      archived: json['archived'] as String?,
      archivedAt: json['archivedAt'] as String?,
      archivedManually: json['archivedManually'] as String?,
      deletionMailSentAt: json['deletionMailSentAt'] as String?,
      fbProfile: json['fbProfile'] as String?,
      partner: json['partner'] as String?,
      discountedPrice: json['discountedPrice'] as String?,
      trending: json['trending'] as String?,
      stock: json['stock'] as String?,
      minOrder: json['minOrder'] as String?,
      sampPrice: json['sampPrice'] as String?,
      textOne: json['textOne'] as String?,
      textTwo: json['textTwo'] as String?,
      avaTo: json['avaTo'] as String?,
      branded: json['branded'] as String?,
      wow: json['wow'] as String?,
      offers: json['offers'] as String?,
      storyDisplayDays: json['storyDisplayDays'] as String?,
      barcode: json['barcode'] as String?,
      b2bPricing: json['b2bPricing'] as String?,
      deletedAt: json['deletedAt'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$BuyNowPostModelImplToJson(
        _$BuyNowPostModelImpl instance) =>
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
      'contactName': instance.contactName,
      'email': instance.email,
      'phone': instance.phone,
      'phoneHidden': instance.phoneHidden,
      'address': instance.address,
      'city_id': instance.cityId,
      'lon': instance.lon,
      'lat': instance.lat,
      'ipAddr': instance.ipAddr,
      'length': instance.length,
      'width': instance.width,
      'weight': instance.weight,
      'height': instance.height,
      'pickup': instance.pickup,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'hyperDel': instance.hyperDel,
      'sellerDel': instance.sellerDel,
      'visits': instance.visits,
      'emailToken': instance.emailToken,
      'phoneToken': instance.phoneToken,
      'tmpToken': instance.tmpToken,
      'verifiedEmail': instance.verifiedEmail,
      'verifiedPhone': instance.verifiedPhone,
      'acceptTerms': instance.acceptTerms,
      'acceptMarketingOffers': instance.acceptMarketingOffers,
      'isPermanent': instance.isPermanent,
      'reviewed': instance.reviewed,
      'featured': instance.featured,
      'archived': instance.archived,
      'archivedAt': instance.archivedAt,
      'archivedManually': instance.archivedManually,
      'deletionMailSentAt': instance.deletionMailSentAt,
      'fbProfile': instance.fbProfile,
      'partner': instance.partner,
      'discountedPrice': instance.discountedPrice,
      'trending': instance.trending,
      'stock': instance.stock,
      'minOrder': instance.minOrder,
      'sampPrice': instance.sampPrice,
      'textOne': instance.textOne,
      'textTwo': instance.textTwo,
      'avaTo': instance.avaTo,
      'branded': instance.branded,
      'wow': instance.wow,
      'offers': instance.offers,
      'storyDisplayDays': instance.storyDisplayDays,
      'barcode': instance.barcode,
      'b2bPricing': instance.b2bPricing,
      'deletedAt': instance.deletedAt,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$VendorBuyNowModelImpl _$$VendorBuyNowModelImplFromJson(
        Map<String, dynamic> json) =>
    _$VendorBuyNowModelImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      paymentQr: json['paymentQr'] as String?,
    );

Map<String, dynamic> _$$VendorBuyNowModelImplToJson(
        _$VendorBuyNowModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'paymentQr': instance.paymentQr,
    };

_$BuyNowUserModelImpl _$$BuyNowUserModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BuyNowUserModelImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$$BuyNowUserModelImplToJson(
        _$BuyNowUserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
    };
