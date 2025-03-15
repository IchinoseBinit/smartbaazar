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
      posts: json['posts'] == null
          ? null
          : VSearchpost.fromJson(json['posts'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VdataImplToJson(_$VdataImpl instance) =>
    <String, dynamic>{
      'posts': instance.posts,
    };

_$VSearchpostImpl _$$VSearchpostImplFromJson(Map<String, dynamic> json) =>
    _$VSearchpostImpl(
      current_page: (json['current_page'] as num?)?.toInt(),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => VendorSearchModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$VSearchpostImplToJson(_$VSearchpostImpl instance) =>
    <String, dynamic>{
      'current_page': instance.current_page,
      'data': instance.data,
    };

_$VendorSearchModelImpl _$$VendorSearchModelImplFromJson(
        Map<String, dynamic> json) =>
    _$VendorSearchModelImpl(
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
      tmpToken: json['tmp_token'] as String?,
      verifiedEmail: json['verified_email'] as String?,
      verifiedPhone: json['verified_phone'] as String?,
      acceptTerms: json['accept_terms'] as String?,
      acceptMarketingOffers: json['accept_marketing_offers'] as String?,
      isPermanent: json['is_permanent'] as String?,
      reviewed: json['reviewed'] as String?,
      featured: json['featured'] as String?,
      archived: json['archived'] as String?,
      archivedAt: json['archivedAt'] as String?,
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
      deletedAt: json['deletedAt'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      image: json['image'] as String?,
      discountPercentage: (json['discount_percentage'] as num?)?.toInt(),
      postType: json['post_type'] as String?,
      username: json['username'] as String?,
      city: json['city'] as String?,
      similarProductCount: (json['similarProductCount'] as num?)?.toInt(),
      commentCount: (json['commentcount'] as num?)?.toInt(),
      avgRating: (json['avg_rating'] as num?)?.toDouble(),
      userdetails: json['userdetails'] == null
          ? null
          : UserDetails.fromJson(json['userdetails'] as Map<String, dynamic>),
      savedByLoggedUser: (json['savedByLoggedUser'] as List<dynamic>?)
          ?.map((e) => FezzedSaved.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$VendorSearchModelImplToJson(
        _$VendorSearchModelImpl instance) =>
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
      'archivedAt': instance.archivedAt,
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
      'deletedAt': instance.deletedAt,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'image': instance.image,
      'discount_percentage': instance.discountPercentage,
      'post_type': instance.postType,
      'username': instance.username,
      'city': instance.city,
      'similarProductCount': instance.similarProductCount,
      'commentcount': instance.commentCount,
      'avg_rating': instance.avgRating,
      'userdetails': instance.userdetails,
      'savedByLoggedUser': instance.savedByLoggedUser,
    };

_$UserDetailsImpl _$$UserDetailsImplFromJson(Map<String, dynamic> json) =>
    _$UserDetailsImpl(
      userId: json['user_id'] as String?,
      membershipPlanId: json['membership_plan_id'] as String?,
      membershipStatus: json['membership_status'] as String?,
      membershipId: json['membership_id'] as String?,
      membershipTitle: json['membership_title'] as String?,
      membershipColor: json['membership_color'] as String?,
      photo: json['photo'] as String?,
      name: json['name'] as String?,
      storyCount: (json['storyCount'] as num?)?.toInt(),
      sponsored: json['sponsored'] as bool?,
      hasSponsoredGifts: json['has_sponsored_gifts'] as bool?,
      shortestDistance: (json['shortestDistance'] as num?)?.toDouble(),
      nearestBranch: json['nearestBranch'] as String?,
      longitude: json['longitude'] as String?,
      latitude: json['latitude'] as String?,
    );

Map<String, dynamic> _$$UserDetailsImplToJson(_$UserDetailsImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'membership_plan_id': instance.membershipPlanId,
      'membership_status': instance.membershipStatus,
      'membership_id': instance.membershipId,
      'membership_title': instance.membershipTitle,
      'membership_color': instance.membershipColor,
      'photo': instance.photo,
      'name': instance.name,
      'storyCount': instance.storyCount,
      'sponsored': instance.sponsored,
      'has_sponsored_gifts': instance.hasSponsoredGifts,
      'shortestDistance': instance.shortestDistance,
      'nearestBranch': instance.nearestBranch,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
    };
