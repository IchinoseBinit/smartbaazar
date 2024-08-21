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
    required VendorUser? user,
    String? weight,
    List<ColorOption>? colorOptions,
    required List<String> tags,
    List<SimilarItems>? widgetSimilarPosts,
    Category? category,
    List<Picture>? pictures,
  }) = _ProductDetailsModel;

  factory ProductDetailsModel.fromJson(Map<String, dynamic> json) {
    return _ProductDetailsModel(
      id: json['id'] as int,
      user_id: json['user_id'] as String,
      category_id: json['category_id'] as String,
      post_type_id: json['post_type_id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      price: json['price'] as String,
      pickup: json['pickup'] as String?,
      discounted_price: json['discounted_price'] as String?,
      visits: json['visits'] as int,
      stock: json['stock'] as String,
      contact_name: json['contact_name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      user: json['user'] == null // Use 'user' instead of 'vendorUser'
          ? null
          : VendorUser.fromJson(json['user'] as Map<String, dynamic>),
      weight: json['weight'] as String?,
      colorOptions: (json['colorOptions'] as List<dynamic>?)
          ?.map((e) => ColorOption.fromJson(e as Map<String, dynamic>))
          .toList(),
      tags: (json['tags'] as List<dynamic>).cast<String>(),
      widgetSimilarPosts: (json['widgetSimilarPosts'] as List<dynamic>?)
          ?.map((e) => SimilarItems.fromJson(e as Map<String, dynamic>))
          .toList(),
      category: json['category'] == null
          ? null
          : Category.fromJson(json['category'] as Map<String, dynamic>),
      pictures: (json['pictures'] as List<dynamic>?)
          ?.map((e) => Picture.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
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
class VendorUser with _$VendorUser {
  const factory VendorUser({
    required int id,
    required String name,
    required String username,
  }) = _VendorUser;
  factory VendorUser.fromJson(Map<String, dynamic> json) =>
      _$VendorUserFromJson(json);
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
    required String post_id,
    required String filename,
    required String position,
    required String active,
  }) = _Picture;

  factory Picture.fromJson(Map<String, dynamic> json) =>
      _$PictureFromJson(json);
}

extension PictureX on Picture {
  String getUrl() => 'https://smartbazaar.jianjun-rnd.com.np/$filename';
}
