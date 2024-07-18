import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smartbazar/features/home/model/product_model.dart';

part 'home_posts_model.freezed.dart';
part 'home_posts_model.g.dart';

@freezed
class HomePosts with _$HomePosts {
  factory HomePosts({
    required List<Product> sponsored_post,
    required List<Product> trending,
    required List<Product> hot_products,
    required List<Product> new_products,
    required List<Product> jobs,
    required List<Product> events,
    required List<Product> b2b_products,
  }) = _HomePosts;

  factory HomePosts.fromJson(Map<String, dynamic> json) =>
      _$HomePostsFromJson(json);
}
