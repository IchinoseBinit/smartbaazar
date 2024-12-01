import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smartbazar/features/home/model/product_model.dart';

part 'b2b_model.freezed.dart';
part 'b2b_model.g.dart';

@freezed
class B2bModel with _$B2bModel {
  const factory B2bModel({
    String? posttype_name,
    String? post_type_id,
    List<Product>? hot_products,
    B2bProducts? products,
    List<B2bAdvertisement>? advertisements,
    List<B2bSlider>? sliders,
  }) = _B2bModel;

  factory B2bModel.fromJson(Map<String, dynamic> json) => _$B2bModelFromJson(json);
}
@freezed
class B2bProducts with _$B2bProducts {
  const factory B2bProducts({
    int? current_page,
    List<Product>? data, // List of products
  }) = _B2bProducts;

  factory B2bProducts.fromJson(Map<String, dynamic> json) => _$B2bProductsFromJson(json);
}
// @freezed
// class B2bHotProduct with _$B2bHotProduct {
//   const factory B2bHotProduct({
//     String? id,
//     String? country_code,
//     String? user_id,
//     String? category_id,
//     String? post_type_id,
//     String? title,
//     String? description,
//     String? tags,
//     String? price,
//     // String? negotiable,
//     String? contact_name,
//     // String? email,
//     String? phone,
//     String? phone_hidden,
//     String? address,
//     // String? city_id,
//     // String? lon,
//     // String? lat,
//     // String? ip_addr,
//     // String? length,
//     // String? width,
//     // String? weight,
//     // String? height,
//     String? pickup,
//     // String? longitude,
//     // String? latitude,
//     // String? hyper_del,
//     // String? seller_del,
//     String? visits,
//     String? email_token,
//     // String? phone_token,
//     // String? tmp_token,
//     // String? verified_email,
//     // String? verified_phone,
//     // String? accept_terms,
//     // String? accept_marketing_offers,
//     // String? is_permanent,
//     // String? reviewed,
//     // String? featured,
//     // String? archived,
//     // String? archived_at,
//     // String? archived_manually,
//     // String? deletion_mail_sent_at,
//     // String? fb_profile,
//     // String? partner,
//     String? discounted_price,
//     String? trending,
//     String? stock,
//     // String? min_order,
//     // String? samp_price,
//     // String? text_one,
//     // String? text_two,
//     // String? ava_to,
//     String? branded,
//     // String? deleted_at,
//     // String? created_at,
//     // String? updated_at,
//     String? image,
//     int? avg_rating,
//     // List<dynamic>? savedByLoggedUser,
//   }) = _B2bHotProduct;

//   factory B2bHotProduct.fromJson(Map<String, dynamic> json) => _$B2bHotProductFromJson(json);
// }

@freezed
class B2bAdvertisement with _$B2bAdvertisement {
  const factory B2bAdvertisement({
    String? id,
    String? order,
    String? status,
    String? image,
    String? link,
  }) = _B2bAdvertisement;

  factory B2bAdvertisement.fromJson(Map<String, dynamic> json) => _$B2bAdvertisementFromJson(json);
}

@freezed
class B2bSlider with _$B2bSlider {
  const factory B2bSlider({
    String? id,
    String? image,
    String? description,
    String? link,
    String? page,
  }) = _B2bSlider;

  factory B2bSlider.fromJson(Map<String, dynamic> json) => _$B2bSliderFromJson(json);
}