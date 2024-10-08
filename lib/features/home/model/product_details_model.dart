import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_details_model.freezed.dart';
part 'product_details_model.g.dart';

@freezed
class ProductDetailsModel with _$ProductDetailsModel {
  const factory ProductDetailsModel({
    int? id,
    String? user_id,
    String? category_id,
    String? post_type_id,
    String? title,
    String? description,
    String? price,
     String? pickup,
    String? discounted_price,
    int? visits,
     String? stock,
    String? contact_name,
    String? email,
    String? phone,
    VendorUser? user,
    String? weight,
    List<ColorOption>? colorOptions,
    List<String>? tags,
     List<SimilarItems>? widgetSimilarPosts,
    Category? category,
    List<Picture>? pictures,
  }) = _ProductDetailsModel;

  factory ProductDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailsModelFromJson(json);
}

@freezed
class Category with _$Category {
  const factory Category({
    int? id,
    String? name,
    String? slug,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}

@freezed
class VendorUser with _$VendorUser {
  const factory VendorUser({
    int? id,
    String? name,
    String? username,
  }) = _VendorUser;

  factory VendorUser.fromJson(Map<String, dynamic> json) =>
      _$VendorUserFromJson(json);
}

@freezed
class ColorOption with _$ColorOption {
  const factory ColorOption({
    int? id,
    String? value,
  }) = _ColorOption;

  factory ColorOption.fromJson(Map<String, dynamic> json) =>
      _$ColorOptionFromJson(json);
}

@freezed
class SimilarItems with _$SimilarItems {
  const factory SimilarItems({
    required int id,
     String? title,
     String? price,
     List<Picture>? pictures,
  }) = _SimilarItems;

  factory SimilarItems.fromJson(Map<String, dynamic> json) =>
      _$SimilarItemsFromJson(json);
}

@freezed
class Picture with _$Picture {
  const factory Picture({
    int? id,
    String? post_id,
    String? filename,
    String? position,
    String? active,
  }) = _Picture;

  factory Picture.fromJson(Map<String, dynamic> json) =>
      _$PictureFromJson(json);
}

extension PictureX on Picture {
  String getUrl() => 'https://smartbazaar.jianjun-rnd.com.np/$filename';
}