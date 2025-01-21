import 'package:json_annotation/json_annotation.dart';

part 'my_listing_model.g.dart';

@JsonSerializable()
class MyListingModel {
  final Products? products;

  MyListingModel({this.products});

  factory MyListingModel.fromJson(Map<String, dynamic> json) =>
      _$MyListingModelFromJson(json);

  Map<String, dynamic> toJson() => _$MyListingModelToJson(this);
}

@JsonSerializable()
class Products {
  final List<MyListingProduct>? data;
  final int? currentPage;
  final int? from;
  final int? lastPage;
  final String? firstPageUrl;
  final String? lastPageUrl;
  final String? path;
  final int? perPage;
  final String? nextPageUrl;
  final String? prevPageUrl;
  final int? to;
  final int? total;
  final List<Link>? links;

  Products({
    this.data,
    this.currentPage,
    this.from,
    this.lastPage,
    this.firstPageUrl,
    this.lastPageUrl,
    this.path,
    this.perPage,
    this.nextPageUrl,
    this.prevPageUrl,
    this.to,
    this.total,
    this.links,
  });

  factory Products.fromJson(Map<String, dynamic> json) =>
      _$ProductsFromJson(json);

  Map<String, dynamic> toJson() => _$ProductsToJson(this);
}

@JsonSerializable()
class MyListingProduct {
  final String? id;
  @JsonKey(name: 'country_code')
  final String? countryCode;
  @JsonKey(name: 'user_id')
  final String? userId;
  @JsonKey(name: 'category_id')
  final String? categoryId;
  @JsonKey(name: 'post_type_id')
  final String? postTypeId;
  final String? title;
  final String? description;
  final String? tags;
  final String? price;
  final String? negotiable;
  @JsonKey(name: 'contact_name')
  final String? contactName;
  final String? email;
  final String? phone;
  @JsonKey(name: 'phone_hidden')
  final String? phoneHidden;
  final String? address;
  @JsonKey(name: 'city_id')
  final String? cityId;
  final String? lon;
  final String? lat;
  @JsonKey(name: 'ip_addr')
  final String? ipAddr;
  final String? length;
  final String? width;
  final String? weight;
  final String? height;
  final String? pickup;
  final String? longitude;
  final String? latitude;
  @JsonKey(name: 'hyper_del')
  final String? hyperDel;
  @JsonKey(name: 'seller_del')
  final String? sellerDel;
  final String? visits;
  @JsonKey(name: 'email_token')
  final String? emailToken;
  @JsonKey(name: 'phone_token')
  final String? phoneToken;
  final String? tmpToken;
  @JsonKey(name: 'verified_email')
  final String? verifiedEmail;
  @JsonKey(name: 'verified_phone')
  final String? verifiedPhone;
  @JsonKey(name: 'accept_terms')
  final String? acceptTerms;
  @JsonKey(name: 'accept_marketing_offers')
  final String? acceptMarketingOffers;
  @JsonKey(name: 'is_permanent')
  final String? isPermanent;
  final String? reviewed;
  final String? featured;
  final String? archived;
  @JsonKey(name: 'archived_at')
  final String? archivedAt;
  @JsonKey(name: 'archived_manually')
  final String? archivedManually;
  @JsonKey(name: 'deletion_mail_sent_at')
  final String? deletionMailSentAt;
  @JsonKey(name: 'fb_profile')
  final String? fbProfile;
  final String? partner;
  @JsonKey(name: 'discounted_price')
  final String? discountedPrice;
  final String? trending;
  final String? stock;
  @JsonKey(name: 'min_order')
  final String? minOrder;
  @JsonKey(name: 'samp_price')
  final String? sampPrice;
  @JsonKey(name: 'text_one')
  final String? textOne;
  @JsonKey(name: 'text_two')
  final String? textTwo;
  @JsonKey(name: 'ava_to')
  final String? avaTo;
  final String? branded;
  final String? wow;
  final String? offers;
  @JsonKey(name: 'story_display_days')
  final String? storyDisplayDays;
  final String? barcode;
  @JsonKey(name: 'b2b_pricing')
  final String? b2bPricing;
  @JsonKey(name: 'deleted_at')
  final String? deletedAt;
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  final String? image;
  @JsonKey(name: 'avg_rating')
  final int? avgRating;

  MyListingProduct({
    this.id,
    this.countryCode,
    this.userId,
    this.categoryId,
    this.postTypeId,
    this.title,
    this.description,
    this.tags,
    this.price,
    this.negotiable,
    this.contactName,
    this.email,
    this.phone,
    this.phoneHidden,
    this.address,
    this.cityId,
    this.lon,
    this.lat,
    this.ipAddr,
    this.length,
    this.width,
    this.weight,
    this.height,
    this.pickup,
    this.longitude,
    this.latitude,
    this.hyperDel,
    this.sellerDel,
    this.visits,
    this.emailToken,
    this.phoneToken,
    this.tmpToken,
    this.verifiedEmail,
    this.verifiedPhone,
    this.acceptTerms,
    this.acceptMarketingOffers,
    this.isPermanent,
    this.reviewed,
    this.featured,
    this.archived,
    this.archivedAt,
    this.archivedManually,
    this.deletionMailSentAt,
    this.fbProfile,
    this.partner,
    this.discountedPrice,
    this.trending,
    this.stock,
    this.minOrder,
    this.sampPrice,
    this.textOne,
    this.textTwo,
    this.avaTo,
    this.branded,
    this.wow,
    this.offers,
    this.storyDisplayDays,
    this.barcode,
    this.b2bPricing,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
    this.image,
    this.avgRating,
  });

  factory MyListingProduct.fromJson(Map<String, dynamic> json) =>
      _$MyListingProductFromJson(json);

  Map<String, dynamic> toJson() => _$MyListingProductToJson(this);
}

@JsonSerializable()
class Link {
  final String? url;
  final String? label;
  final bool? active;

  Link({
    this.url,
    this.label,
    this.active,
  });

  factory Link.fromJson(Map<String, dynamic> json) => _$LinkFromJson(json);

  Map<String, dynamic> toJson() => _$LinkToJson(this);
}
