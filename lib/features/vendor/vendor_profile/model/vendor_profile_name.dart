import 'package:freezed_annotation/freezed_annotation.dart';

part 'vendor_profile_name.freezed.dart';
part 'vendor_profile_name.g.dart';

@freezed
class VendorData with _$VendorData {
  const factory VendorData({
    Vendor? vendor,
    List<Advertisement>? advertisements,
    List<VendorPost>? vendorposts, // Update to use the new Posts class
  }) = _VendorData;

  factory VendorData.fromJson(Map<String, dynamic> json) =>
      _$VendorDataFromJson(json);
}

@freezed
class Vendor with _$Vendor {
  const factory Vendor({
    String? id,
    String? name,
    String? photo,
    String? username,
    String? phone,
    String? contact_name,
    String? visits,
    String? city,
  }) = _Vendor;

  factory Vendor.fromJson(Map<String, dynamic> json) => _$VendorFromJson(json);
}

@freezed
class Advertisement with _$Advertisement {
  const factory Advertisement({
    String? id,
    String? image,
    String? link,
  }) = _Advertisement;

  factory Advertisement.fromJson(Map<String, dynamic> json) =>
      _$AdvertisementFromJson(json);
}

// Define the Posts class to handle the posts structure


@freezed
class VendorPost with _$VendorPost {
  const factory VendorPost(
      {String? id,
      String? title,
      String? price,
      String? image,
      String? pickup,
      String? username,
      String? city,
      int? avg_rating,
      String? visits,
      // Add other fields based on your requirements
      }) = _VendorPost;

  factory VendorPost.fromJson(Map<String, dynamic> json) => _$VendorPostFromJson(json);
}
