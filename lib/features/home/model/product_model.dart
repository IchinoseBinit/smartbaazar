import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class Product with _$Product {
  factory Product({
    required String id,
    required String title,
    required String price,
    required String image,
    required String visits,
    @Default(0) double avg_rating,
    required String contact_name,
    String? pickup,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
