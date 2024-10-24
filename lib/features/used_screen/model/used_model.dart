import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smartbazar/features/home/model/product_model.dart';

part 'used_model.freezed.dart';
part 'used_model.g.dart';

@freezed
class UsedModel with _$UsedModel {
  const factory UsedModel({
    String? posttype_name,
    String? post_type_id,
    List<UsedProduct>? hot_products,
    UsedProducts? products,
    List<UsedAdvertisement>? advertisements,
    List<UsedSlider>? sliders,
  }) = _UsedModel;

  factory UsedModel.fromJson(Map<String, dynamic> json) => _$UsedModelFromJson(json);
}

@freezed
class UsedProducts with _$UsedProducts {
  const factory UsedProducts({
    int? current_page,
    List<UsedProduct>? data, // List of products
  }) = _UsedProducts;

  factory UsedProducts.fromJson(Map<String, dynamic> json) => _$UsedProductsFromJson(json);
}

@freezed
class UsedProduct with _$UsedProduct {
  factory UsedProduct({
     String? id,
     String? title,
     String? price,
     String? image,
     String? visits,
    double? avg_rating,
     String? contact_name,
    String? pickup,
  }) = _UsedProduct;

  factory UsedProduct.fromJson(Map<String, dynamic> json) =>
      _$UsedProductFromJson(json);
}



@freezed
class UsedAdvertisement with _$UsedAdvertisement {
  const factory UsedAdvertisement({
    String? id,
    String? order,
    String? status,
    String? image,
    String? link,
  }) = _UsedAdvertisement;

  factory UsedAdvertisement.fromJson(Map<String, dynamic> json) => _$UsedAdvertisementFromJson(json);
}

@freezed
class UsedSlider with _$UsedSlider {
  const factory UsedSlider({
    String? id,
    String? image,
    String? description,
    String? link,
    String? page,
  }) = _UsedSlider;

  factory UsedSlider.fromJson(Map<String, dynamic> json) => _$UsedSliderFromJson(json);
}
