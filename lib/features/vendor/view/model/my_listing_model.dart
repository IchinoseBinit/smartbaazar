import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_listing_model.freezed.dart';
part 'my_listing_model.g.dart';

@freezed
class MyListingModel with _$MyListingModel {
  const factory MyListingModel({
    required Products? products,
  }) = _MyListingModel;

  factory MyListingModel.fromJson(Map<String, dynamic> json) =>
      _$MyListingModelFromJson(json);
}

@freezed
class Products with _$Products {
  const factory Products({
    @JsonKey(name: 'current_page') int? currentPage,
    @JsonKey(name: 'data') List<ProductData>? data,
    @JsonKey(name: 'first_page_url') String? firstPageUrl,
    int? from,
    @JsonKey(name: 'last_page') int? lastPage,
    @JsonKey(name: 'last_page_url') String? lastPageUrl,
    List<Link>? links,
    @JsonKey(name: 'next_page_url') String? nextPageUrl,
    String? path,
    @JsonKey(name: 'per_page') int? perPage,
    @JsonKey(name: 'prev_page_url') String? prevPageUrl,
    int? to,
    int? total,
  }) = _Products;

  factory Products.fromJson(Map<String, dynamic> json) =>
      _$ProductsFromJson(json);
}

@freezed
class ProductData with _$ProductData {
  const factory ProductData({
    String? id,
    @JsonKey(name: 'country_code') String? countryCode,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'category_id') String? categoryId,
    @JsonKey(name: 'post_type_id') String? postTypeId,
    String? title,
    String? description,
    String? tags,
    String? price,
    String? negotiable,
    @JsonKey(name: 'contact_name') String? contactName,
    String? email,
    String? phone,
    @JsonKey(name: 'phone_hidden') String? phoneHidden,
    String? address,
    @JsonKey(name: 'city_id') String? cityId,
    String? lon,
    String? lat,
    @JsonKey(name: 'ip_addr') String? ipAddr,
    String? length,
    String? width,
    String? weight,
    String? height,
    String? pickup,
    String? longitude,
    String? latitude,
    @JsonKey(name: 'hyper_del') String? hyperDel,
    @JsonKey(name: 'seller_del') String? sellerDel,
    String? visits,
    @JsonKey(name: 'email_token') String? emailToken,
    @JsonKey(name: 'phone_token') String? phoneToken,
    @JsonKey(name: 'tmp_token') String? tmpToken,
    @JsonKey(name: 'verified_email') String? verifiedEmail,
    @JsonKey(name: 'verified_phone') String? verifiedPhone,
    @JsonKey(name: 'accept_terms') String? acceptTerms,
    @JsonKey(name: 'accept_marketing_offers') String? acceptMarketingOffers,
    @JsonKey(name: 'is_permanent') String? isPermanent,
    String? reviewed,
    String? featured,
    String? archived,
    @JsonKey(name: 'archived_at') String? archivedAt,
    @JsonKey(name: 'archived_manually') String? archivedManually,
    @JsonKey(name: 'deletion_mail_sent_at') String? deletionMailSentAt,
    @JsonKey(name: 'fb_profile') String? fbProfile,
    String? partner,
    @JsonKey(name: 'discounted_price') String? discountedPrice,
    String? trending,
    String? stock,
    @JsonKey(name: 'min_order') String? minOrder,
    @JsonKey(name: 'samp_price') String? sampPrice,
    @JsonKey(name: 'text_one') String? textOne,
    @JsonKey(name: 'text_two') String? textTwo,
    @JsonKey(name: 'ava_to') String? avaTo,
    String? branded,
    @JsonKey(name: 'deleted_at') String? deletedAt,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    String? image,
    @JsonKey(name: 'avg_rating') int? avgRating,
    @JsonKey(name: 'savedByLoggedUser') List<dynamic>? savedByLoggedUser,
  }) = _ProductData;

  factory ProductData.fromJson(Map<String, dynamic> json) =>
      _$ProductDataFromJson(json);
}

@freezed
class Link with _$Link {
  const factory Link({
    String? url,
    String? label,
    bool? active,
  }) = _Link;

  factory Link.fromJson(Map<String, dynamic> json) => _$LinkFromJson(json);
}
