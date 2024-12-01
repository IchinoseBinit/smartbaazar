import 'package:freezed_annotation/freezed_annotation.dart';

part 'vendor_model_for_id.freezed.dart';
part 'vendor_model_for_id.g.dart';

@freezed
class VendorModelByID with _$VendorModelByID {
  factory VendorModelByID({
    required String id,
    required String name,
    required String username,
    required String email,
    @Default('') String photo,
  }) = _VendorModelByID;

  factory VendorModelByID.fromJson(Map<String, dynamic> json) => _$VendorModelByIDFromJson(json);
}

// @freezed
// class Vendor with _$Vendor {
//   factory Vendor({
//     required String id,
//     required String name,
//     required String username,
//     required String email,
//      @Default('') String? photo,
//   }) = _Vendor;

//   factory Vendor.fromJson(Map<String, dynamic> json) => _$VendorFromJson(json);
// }
