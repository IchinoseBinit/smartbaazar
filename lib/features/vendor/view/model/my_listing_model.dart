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
    required List<Product>? data,
  
  }) = _Products;

  factory Products.fromJson(Map<String, dynamic> json) => _$ProductsFromJson(json);
}

@freezed
class Product with _$Product {
  const factory Product({
    required String? id,
    required String? countryCode,
    required String? userId,
    required String? categoryId,
    required String? postTypeId,
    required String? title,
    required String? description,
    required String? tags,
    required String? price,
    required String? negotiable,
    required String? contactName,
    required String? email,
    required String? phone,
    required String? phoneHidden,
    required String? address,
    required String? cityId,
    required String? lon,
    required String? lat,
    required String? ipAddr,
    required String? length,
    required String? width,
    required String? weight,
    required String? height,
    required String? pickup,
    required String? longitude,
    required String? latitude,
    required String? hyperDel,
    required String? sellerDel,
    required String? visits,
    required String? emailToken,
    required String? phoneToken,
    required String? tmpToken,
    required String? verifiedEmail,
    required String? verifiedPhone,
    required String? acceptTerms,
    required String? acceptMarketingOffers,
    required String? isPermanent,
    required String? reviewed,
    required String? featured,
    required String? archived,
    required String? archivedAt,
    required String? archivedManually,
    required String? deletionMailSentAt,
    required String? fbProfile,
    required String? partner,
    required String? discountedPrice,
    required String? trending,
    required String? stock,
    required String? minOrder,
    required String? sampPrice,
    required String? textOne,
    required String? textTwo,
    required String? avaTo,
    required String? branded,
    required String? wow,
    required String? offers,
    required String? storyDisplayDays,
    required String? barcode,
    required String? b2bPricing,
    required String? deletedAt,
    required String? createdAt,
    required String? updatedAt,
    required String? image,
    required int? avgRating,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}

