import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_details_model.freezed.dart';
part 'product_details_model.g.dart';

@freezed
class ProductDetailsModel with _$ProductDetailsModel {
  const factory ProductDetailsModel({
    required int id,
    required String user_id,
    required String category_id,
    required String post_type_id,
    required String title,
    required String description,
    required String price,
    String? pickup,
    String? discounted_price,
    required int visits,
    required String stock,
    required String contact_name,
    required String email,
    required String phone,
    String?
        weight, // Adjusted to String if weight can be null or is a string in JSON
    List<ColorOption>? colorOptions,
    required List<String> tags,
    List<SimilarItems>? widgetSimilarPosts,
    Category? category,
  }) = _ProductDetailsModel;

  factory ProductDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailsModelFromJson(json);
}

@freezed
class Category with _$Category {
  const factory Category({
    required int id,
    required String name,
    required String slug,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}

@freezed
class ColorOption with _$ColorOption {
  const factory ColorOption({
    required int id,
    required String value,
  }) = _ColorOption;

  factory ColorOption.fromJson(Map<String, dynamic> json) =>
      _$ColorOptionFromJson(json);
}

@freezed
class SimilarItems with _$SimilarItems {
  const factory SimilarItems({
    required int id,
    required String title,
    required String price,
    required List<Picture> pictures,
  }) = _SimilarItems;

  factory SimilarItems.fromJson(Map<String, dynamic> json) =>
      _$SimilarItemsFromJson(json);
}

@freezed
class Picture with _$Picture {
  const factory Picture({
    required int id,
    required String filename,
  }) = _Picture;

  factory Picture.fromJson(Map<String, dynamic> json) =>
      _$PictureFromJson(json);
}
