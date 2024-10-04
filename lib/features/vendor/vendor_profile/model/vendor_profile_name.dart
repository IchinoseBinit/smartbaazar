import 'package:freezed_annotation/freezed_annotation.dart';

part 'vendor_profile_name.freezed.dart';
part 'vendor_profile_name.g.dart';

@freezed
class VendorData with _$VendorData {
  factory VendorData({
    Vendor? vendor,
    @Default([]) List<Advertisement> advertisements,
    @Default([]) List<HotProduct> hotProducts,
    String? scratchBanner,
    Posts? posts,
  }) = _VendorData;

  factory VendorData.fromJson(Map<String, dynamic> json) => _$VendorDataFromJson(json);
}

@freezed
class Vendor with _$Vendor {
  factory Vendor({
    String? id,
    String? countryCode,
    String? languageCode,
    String? name,
    String? photo,
    String? phone,
    String? username,
    // additional fields can be uncommented when needed
  }) = _Vendor;

  factory Vendor.fromJson(Map<String, dynamic> json) => _$VendorFromJson(json);
}

@freezed
class Advertisement with _$Advertisement {
  factory Advertisement({
    String? id,
    String? order,
    String? status,
    String? image,
    String? link,
  }) = _Advertisement;

  factory Advertisement.fromJson(Map<String, dynamic> json) => _$AdvertisementFromJson(json);
}

@freezed
class HotProduct with _$HotProduct {
  factory HotProduct({
    String? id,
    String? countryCode,
    String? title,
    String? description,
    String? price,
    String? image,
    // additional fields can be added as necessary
  }) = _HotProduct;

  factory HotProduct.fromJson(Map<String, dynamic> json) => _$HotProductFromJson(json);
}

@freezed
class Post with _$Post {
  factory Post({
    String? id,
    String? countryCode,
    String? userId,
    String? categoryId,
    String? postTypeId,
    String? title,
    String? description,
    String? price,
    String? image,
    String? createdAt,
    // add more fields as necessary based on your response structure
  }) = _Post;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
}

@freezed
class Posts with _$Posts {
  factory Posts({
    int? currentPage,
    @Default([]) List<Post> data, // Changed type to List<Post>
  }) = _Posts;

  factory Posts.fromJson(Map<String, dynamic> json) => _$PostsFromJson(json);
}
