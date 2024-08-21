// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VendorProfileModelImpl _$$VendorProfileModelImplFromJson(
        Map<String, dynamic> json) =>
    _$VendorProfileModelImpl(
      vendor: Vendor.fromJson(json['vendor'] as Map<String, dynamic>),
      hotProducts: json['hot_products'] as List<dynamic>,
      scratchBanner: json['scratch_banner'] as String,
      advertisements: (json['advertisements'] as List<dynamic>)
          .map((e) => Advertisement.fromJson(e as Map<String, dynamic>))
          .toList(),
      posts: Posts.fromJson(json['posts'] as Map<String, dynamic>),
      postTypes: (json['postTypes'] as List<dynamic>)
          .map((e) => PostType.fromJson(e as Map<String, dynamic>))
          .toList(),
      postArr: (json['post_arr'] as List<dynamic>)
          .map((e) => PostArr.fromJson(e as Map<String, dynamic>))
          .toList(),
      follow: json['follow'] as bool,
      followerCount: (json['follower_count'] as num).toInt(),
      qrs: json['qrs'] as List<dynamic>,
      gifts: (json['gifts'] as List<dynamic>)
          .map((e) => Gift.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$VendorProfileModelImplToJson(
        _$VendorProfileModelImpl instance) =>
    <String, dynamic>{
      'vendor': instance.vendor,
      'hot_products': instance.hotProducts,
      'scratch_banner': instance.scratchBanner,
      'advertisements': instance.advertisements,
      'posts': instance.posts,
      'postTypes': instance.postTypes,
      'post_arr': instance.postArr,
      'follow': instance.follow,
      'follower_count': instance.followerCount,
      'qrs': instance.qrs,
      'gifts': instance.gifts,
    };

_$VendorImpl _$$VendorImplFromJson(Map<String, dynamic> json) => _$VendorImpl(
      id: json['id'] as String,
      countryCode: json['country_code'] as String,
      languageCode: json['language_code'] as String,
      userTypeId: json['user_type_id'] as String,
      genderId: json['gender_id'] as String,
      name: json['name'] as String,
      photo: json['photo'] as String,
      about: json['about'] as String?,
      phone: json['phone'] as String?,
      phoneHidden: json['phone_hidden'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
      emailVerifiedAt: json['email_verified_at'] as String?,
      password: json['password'] as String,
      rememberToken: json['remember_token'] as String?,
      isAdmin: json['is_admin'] as String,
      canBeImpersonated: json['can_be_impersonated'] as String,
      disableComments: json['disable_comments'] as String,
      ipAddr: json['ip_addr'] as String,
      provider: json['provider'] as String,
      providerId: json['provider_id'] as String,
      emailToken: json['email_token'] as String,
      phoneToken: json['phone_token'] as String,
      verifiedEmail: json['verified_email'] as String,
      verifiedPhone: json['verified_phone'] as String,
      acceptTerms: json['accept_terms'] as String,
      acceptMarketingOffers: json['accept_marketing_offers'] as String?,
      timeZone: json['time_zone'] as String,
      blocked: json['blocked'] as String,
      closed: json['closed'] as String,
      lastActivity: json['last_activity'] as String?,
      lastLoginAt: json['last_login_at'] as String?,
      ims: json['ims'] as String?,
      brandbazar: json['brandbazar'] as String?,
      brandbazarVerify: json['brandbazar_verify'] as String?,
      brandbazarStatus: json['brandbazar_status'] as String?,
      brandbazarPaymentStatus: json['brandbazar_payment_status'] as String?,
      paymentQr: json['payment_qr'] as String?,
      bankName: json['bank_name'] as String?,
      bankBranch: json['bank_branch'] as String?,
      acHolder: json['ac_holder'] as String?,
      acNumber: json['ac_number'] as String?,
      banner: json['banner'] as String?,
      description: json['description'] as String?,
      panVat: json['pan_vat'] as String?,
      taxCertificate: json['tax_certificate'] as String?,
      registerCertificate: json['register_certificate'] as String?,
      userVerify: json['user_verify'] as String,
      gender: json['gender'] as String?,
      dob: json['dob'] as String?,
      deletedAt: json['deleted_at'] as String?,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$$VendorImplToJson(_$VendorImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'country_code': instance.countryCode,
      'language_code': instance.languageCode,
      'user_type_id': instance.userTypeId,
      'gender_id': instance.genderId,
      'name': instance.name,
      'photo': instance.photo,
      'about': instance.about,
      'phone': instance.phone,
      'phone_hidden': instance.phoneHidden,
      'username': instance.username,
      'email': instance.email,
      'email_verified_at': instance.emailVerifiedAt,
      'password': instance.password,
      'remember_token': instance.rememberToken,
      'is_admin': instance.isAdmin,
      'can_be_impersonated': instance.canBeImpersonated,
      'disable_comments': instance.disableComments,
      'ip_addr': instance.ipAddr,
      'provider': instance.provider,
      'provider_id': instance.providerId,
      'email_token': instance.emailToken,
      'phone_token': instance.phoneToken,
      'verified_email': instance.verifiedEmail,
      'verified_phone': instance.verifiedPhone,
      'accept_terms': instance.acceptTerms,
      'accept_marketing_offers': instance.acceptMarketingOffers,
      'time_zone': instance.timeZone,
      'blocked': instance.blocked,
      'closed': instance.closed,
      'last_activity': instance.lastActivity,
      'last_login_at': instance.lastLoginAt,
      'ims': instance.ims,
      'brandbazar': instance.brandbazar,
      'brandbazar_verify': instance.brandbazarVerify,
      'brandbazar_status': instance.brandbazarStatus,
      'brandbazar_payment_status': instance.brandbazarPaymentStatus,
      'payment_qr': instance.paymentQr,
      'bank_name': instance.bankName,
      'bank_branch': instance.bankBranch,
      'ac_holder': instance.acHolder,
      'ac_number': instance.acNumber,
      'banner': instance.banner,
      'description': instance.description,
      'pan_vat': instance.panVat,
      'tax_certificate': instance.taxCertificate,
      'register_certificate': instance.registerCertificate,
      'user_verify': instance.userVerify,
      'gender': instance.gender,
      'dob': instance.dob,
      'deleted_at': instance.deletedAt,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

_$AdvertisementImpl _$$AdvertisementImplFromJson(Map<String, dynamic> json) =>
    _$AdvertisementImpl(
      id: json['id'] as String,
      order: json['order'] as String,
      status: json['status'] as String,
      image: json['image'] as String,
      link: json['link'] as String,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$$AdvertisementImplToJson(_$AdvertisementImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order': instance.order,
      'status': instance.status,
      'image': instance.image,
      'link': instance.link,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

_$PostsImpl _$$PostsImplFromJson(Map<String, dynamic> json) => _$PostsImpl(
      currentPage: (json['current_page'] as num).toInt(),
      data: json['data'] as List<dynamic>,
      firstPageUrl: json['first_page_url'] as String,
      from: (json['from'] as num?)?.toInt(),
      lastPage: (json['last_page'] as num).toInt(),
      lastPageUrl: json['last_page_url'] as String,
      links: (json['links'] as List<dynamic>)
          .map((e) => Link.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextPageUrl: json['next_page_url'] as String?,
      path: json['path'] as String,
      perPage: (json['per_page'] as num).toInt(),
      prevPageUrl: json['prev_page_url'] as String?,
      to: (json['to'] as num?)?.toInt(),
      total: (json['total'] as num).toInt(),
    );

Map<String, dynamic> _$$PostsImplToJson(_$PostsImpl instance) =>
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

_$LinkImpl _$$LinkImplFromJson(Map<String, dynamic> json) => _$LinkImpl(
      url: json['url'] as String?,
      label: json['label'] as String,
      active: json['active'] as bool,
    );

Map<String, dynamic> _$$LinkImplToJson(_$LinkImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'label': instance.label,
      'active': instance.active,
    };

_$PostTypeImpl _$$PostTypeImplFromJson(Map<String, dynamic> json) =>
    _$PostTypeImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      lft: (json['lft'] as num?)?.toInt(),
      rgt: (json['rgt'] as num?)?.toInt(),
      depth: (json['depth'] as num?)?.toInt(),
      active: json['active'] as String,
    );

Map<String, dynamic> _$$PostTypeImplToJson(_$PostTypeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'lft': instance.lft,
      'rgt': instance.rgt,
      'depth': instance.depth,
      'active': instance.active,
    };

_$PostArrImpl _$$PostArrImplFromJson(Map<String, dynamic> json) =>
    _$PostArrImpl(
      currentPage: (json['current_page'] as num).toInt(),
      data: json['data'] as List<dynamic>,
      firstPageUrl: json['first_page_url'] as String,
      from: (json['from'] as num?)?.toInt(),
      lastPage: (json['last_page'] as num).toInt(),
      lastPageUrl: json['last_page_url'] as String,
      links: (json['links'] as List<dynamic>)
          .map((e) => Link.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextPageUrl: json['next_page_url'] as String?,
      path: json['path'] as String,
      perPage: (json['per_page'] as num).toInt(),
      prevPageUrl: json['prev_page_url'] as String?,
      to: (json['to'] as num?)?.toInt(),
      total: (json['total'] as num).toInt(),
    );

Map<String, dynamic> _$$PostArrImplToJson(_$PostArrImpl instance) =>
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

_$GiftImpl _$$GiftImplFromJson(Map<String, dynamic> json) => _$GiftImpl(
      image: json['image'] as String,
    );

Map<String, dynamic> _$$GiftImplToJson(_$GiftImpl instance) =>
    <String, dynamic>{
      'image': instance.image,
    };
