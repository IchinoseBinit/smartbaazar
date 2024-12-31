import 'package:freezed_annotation/freezed_annotation.dart';

part 'products_feed_dropdown.freezed.dart';
part 'products_feed_dropdown.g.dart';

@freezed
class ProductsFeedDropdown with _$ProductsFeedDropdown {
  factory ProductsFeedDropdown({
    @JsonKey(name: 'products') List<Product>? products,
  }) = _ProductsFeedDropdown;

  factory ProductsFeedDropdown.fromJson(Map<String, dynamic> json) =>
      _$ProductsFeedDropdownFromJson(json);
}

@freezed
class Product with _$Product {
  factory Product({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'title') String? title,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
