import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_details.freezed.dart';
part 'search_details.g.dart';

@freezed
class SearchDetails with _$SearchDetails {
  factory SearchDetails({
    required int currentPage,
    required List<Post> posts,
  }) = _SearchDetails;

  factory SearchDetails.fromJson(Map<String, dynamic> json) =>
      _$SearchDetailsFromJson(json);
}

@freezed
class Post with _$Post {
  factory Post({
     required String id,
    //  String? countryCode,
    //  String? userId,
    //  String? categoryId,
    //  String? postTypeId,
     String? title,
     String? contact_name,
     String? price,
     String? visits,
     String? discounted_price,
     String? brand_new,
     String? used,
     String? services,



     String? image,

  }) = _Post;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
}
