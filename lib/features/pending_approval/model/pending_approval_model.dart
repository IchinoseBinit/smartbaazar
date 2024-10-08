import 'package:freezed_annotation/freezed_annotation.dart';

part 'pending_approval_model.freezed.dart';
part 'pending_approval_model.g.dart';

@freezed
class PendingApprovalModel with _$PendingApprovalModel {
  const factory PendingApprovalModel({
    required Products products,
  }) = _PendingApprovalModel;

  factory PendingApprovalModel.fromJson(Map<String, dynamic> json) =>
      _$PendingApprovalModelFromJson(json);
}

@freezed
class Products with _$Products {
  const factory Products({
    @JsonKey(name: 'current_page') required int? currentPage,
    required List<ProductData> data,
    @JsonKey(name: 'first_page_url') required String? firstPageUrl,
    required int? from,
    @JsonKey(name: 'last_page') required int? lastPage,
    @JsonKey(name: 'last_page_url') required String? lastPageUrl,
    required List<PageLink>? links,
    @JsonKey(name: 'next_page_url') String? nextPageUrl,
    required String? path,
    @JsonKey(name: 'per_page') required int? perPage,
    @JsonKey(name: 'prev_page_url') String? prevPageUrl,
    required int? to,
    required int? total,
  }) = _Products;

  factory Products.fromJson(Map<String, dynamic> json) => _$ProductsFromJson(json);
}

@freezed
class ProductData with _$ProductData {
  const factory ProductData({
    required String? id,
    @JsonKey(name: 'country_code') required String? countryCode,
    @JsonKey(name: 'user_id') required String? userId,
    @JsonKey(name: 'category_id') required String? categoryId,
    @JsonKey(name: 'post_type_id') required String? postTypeId,
    required String? title,
    required String? description,
    String? tags,
    required String? price,
    String? negotiable,
    @JsonKey(name: 'contact_name') required String? contactName,
    required String? email,
    required String? phone,
    @JsonKey(name: 'phone_hidden') String? phoneHidden,
    String? address,
    @JsonKey(name: 'city_id') required String? cityId,
    required String? lon,
    required String? lat,
    @JsonKey(name: 'ip_addr') String? ipAddr,
    String? length,
    String? width,
    String? weight,
    String? height,
    required String? pickup,
    required String? longitude,
    required String? latitude,
    @JsonKey(name: 'hyper_del') String? hyperDel,
    @JsonKey(name: 'seller_del') String? sellerDel,
    required String? visits,
    @JsonKey(name: 'email_token') String? emailToken,
    @JsonKey(name: 'phone_token') String? phoneToken,
    @JsonKey(name: 'tmp_token') required String? tmpToken,
    @JsonKey(name: 'verified_email') required String? verifiedEmail,
    @JsonKey(name: 'verified_phone') required String? verifiedPhone,
    @JsonKey(name: 'accept_terms') required String? acceptTerms,
    @JsonKey(name: 'accept_marketing_offers') required String? acceptMarketingOffers,
    @JsonKey(name: 'is_permanent') required String? isPermanent,
    required String? reviewed,
    required String? featured,
    required String? archived,
    @JsonKey(name: 'archived_at') String? archivedAt,
    @JsonKey(name: 'archived_manually') required String? archivedManually,
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
    @JsonKey(name: 'branded') required String? branded,
    @JsonKey(name: 'deleted_at') String? deletedAt,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    required String? image,
    @JsonKey(name: 'avg_rating') int? avgRating,
    @JsonKey(name: 'savedByLoggedUser') List<dynamic>? savedByLoggedUser,
  }) = _ProductData;

  factory ProductData.fromJson(Map<String, dynamic> json) =>
      _$ProductDataFromJson(json);
}

@freezed
class PageLink with _$PageLink {
  const factory PageLink({
    String? url,
    required String? label,
    required bool? active,
  }) = _PageLink;

  factory PageLink.fromJson(Map<String, dynamic> json) => _$PageLinkFromJson(json);
}
