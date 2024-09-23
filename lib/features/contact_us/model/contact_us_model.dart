import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_us_model.freezed.dart';
part 'contact_us_model.g.dart';

@freezed
class ContactUsModel with _$ContactUsModel {
  const factory ContactUsModel({
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'message') required String message,
    @JsonKey(name: 'country_code') required String countryCode,
    @JsonKey(name: 'country_name') required String countryName,
    @JsonKey(name: 'company_name') required String companyName,
  }) = _ContactUsModel;

  factory ContactUsModel.fromJson(Map<String, dynamic> json) =>
      _$ContactUsModelFromJson(json);
}
