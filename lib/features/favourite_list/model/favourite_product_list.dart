import 'package:freezed_annotation/freezed_annotation.dart';

part 'favourite_product_list.freezed.dart';
part 'favourite_product_list.g.dart';

@freezed
class FavouriteProductList with _$FavouriteProductList {
  factory FavouriteProductList({
    required String? id,
    @JsonKey(name: "country_code") required String? countryCode,
    @JsonKey(name: "user_id") required String? userId,
    @JsonKey(name: "category_id") required String? categoryId,
    @JsonKey(name: "post_type_id") required String? postTypeId,
    required String? title,
    required String? description,
    required String? tags,
    required String? price,
    required String? negotiable,
    // @JsonKey(name: "contact_name") required String? contactName,
    // required String? email,
    // required String? phone,
    // @JsonKey(name: "phone_hidden") required String? phoneHidden,
    // required String? address,
    // @JsonKey(name: "city_id") required String? cityId,
    // required String? lon,
    // required String? lat,
    // @JsonKey(name: "ip_addr") required String? ipAddr,
    // required String? length,
    // required String? width,
    // required String? weight,
    // required String? height,
    // required String? pickup,
    // required String? longitude,
    // required String? latitude,
    // @JsonKey(name: "hyper_del") required String? hyperDel,
    // @JsonKey(name: "seller_del") required String? sellerDel,
    // required String? visits,
    // @JsonKey(name: "email_token") required String? emailToken,
    // @JsonKey(name: "phone_token") required String? phoneToken,
    // @JsonKey(name: "tmp_token") required String? tmpToken,
    // @JsonKey(name: "verified_email") required String? verifiedEmail,
    // @JsonKey(name: "verified_phone") required String? verifiedPhone,
    // @JsonKey(name: "accept_terms") required String? acceptTerms,
    // @JsonKey(name: "accept_marketing_offers")
    // required String? acceptMarketingOffers,
    // @JsonKey(name: "is_permanent") required String? isPermanent,
    // required String? reviewed,
    // required String? featured,
    // required String? archived,
    // @JsonKey(name: "archived_at") required String? archivedAt,
    // @JsonKey(name: "archived_manually") required String? archivedManually,
    // @JsonKey(name: "deletion_mail_sent_at") required String? deletionMailSentAt,
    // @JsonKey(name: "fb_profile") required String? fbProfile,
    // required String? partner,
    @JsonKey(name: "discounted_price") required String? discountedPrice,
    // required String? trending,
    // required String? stock,
    // @JsonKey(name: "min_order") required String? minOrder,
    // @JsonKey(name: "samp_price") required String? sampPrice,
    // @JsonKey(name: "text_one") required String? textOne,
    // @JsonKey(name: "text_two") required String? textTwo,
    // @JsonKey(name: "ava_to") required String? avaTo,
    // required String? branded,
    // @JsonKey(name: "deleted_at") required String? deletedAt,
    // @JsonKey(name: "created_at") required String? createdAt,
    // @JsonKey(name: "updated_at") required String? updatedAt,
     required String? image,
    // @JsonKey(name: "avg_rating") required String? avgRating,
    required List<SavedByLoggedUser>? savedByLoggedUser,
  }) = _FavouriteProductList;

  factory FavouriteProductList.fromJson(Map<String, dynamic> json) =>
      _$FavouriteProductListFromJson(json);
}

@freezed
class SavedByLoggedUser with _$SavedByLoggedUser {
  factory SavedByLoggedUser({
    required String? id,
    // @JsonKey(name: "user_id") required String? userId,
    // @JsonKey(name: "post_id") required String? postId,
    // @JsonKey(name: "created_at") required String? createdAt,
    // @JsonKey(name: "updated_at") required String? updatedAt,
  }) = _SavedByLoggedUser;
  factory SavedByLoggedUser.fromJson(Map<String, dynamic> json) =>
      _$SavedByLoggedUserFromJson(json);
}

@freezed
class FavouriteProductListResponse with _$FavouriteProductListResponse {
  factory FavouriteProductListResponse({
    @JsonKey(name: "current_page") required int? currentPage,
    @JsonKey(name: "data") required List<FavouriteProductList>? data,
    @JsonKey(name: "first_page_url") required String firstPageUrl,
    @JsonKey(name: "from") required int? from,
    @JsonKey(name: "last_page") required int? lastPage,
    @JsonKey(name: "last_page_url") required String? lastPageUrl,
    @JsonKey(name: "links") required List<Link> links,
    @JsonKey(name: "next_page_url") required dynamic nextPageUrl,
    @JsonKey(name: "path") required String? path,
    @JsonKey(name: "per_page") required int? perPage,
    @JsonKey(name: "prev_page_url") required dynamic prevPageUrl,
    @JsonKey(name: "to") required int? to,
    @JsonKey(name: "total") required int? total,
  }) = _FavouriteProductListResponse;

  factory FavouriteProductListResponse.fromJson(Map<String, dynamic> json) =>
      _$FavouriteProductListResponseFromJson(json);
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
