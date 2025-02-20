import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smartbazar/features/home/model/product_model.dart';

part 'home_posts_model.freezed.dart';
part 'home_posts_model.g.dart';

@freezed
class HomePosts with _$HomePosts {
  factory HomePosts({
    // required List<HomeAdvertisement> advertisements,
    required List<Product> sponsored_posts,
    required List<Product> trending,
        required List<SliderModel> sliders,

    // required List<Product> hot_products,
    // required List<Product> new_products,
    // required List<Product> jobs,
    // required List<Product> events,
    // required List<Product> b2b_products,
    // required List<Product> all_products,
  }) = _HomePosts;

  factory HomePosts.fromJson(Map<String, dynamic> json) =>
      _$HomePostsFromJson(json);
}

@freezed
class SliderModel with _$SliderModel {
  const factory SliderModel({
    required String id,
    required String image,
    required String description,
    required String link,
    required String page,
    required String status,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _SliderModel;

  factory SliderModel.fromJson(Map<String, dynamic> json) => _$SliderModelFromJson(json);
}