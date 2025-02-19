import 'package:freezed_annotation/freezed_annotation.dart';

part 'offers_model_dropdown.freezed.dart';
part 'offers_model_dropdown.g.dart';



@freezed
class OffersModelDropdown with _$OffersModelDropdown {
  factory OffersModelDropdown({
    @JsonKey(name: 'data') List<OfferData>? data,
    @JsonKey(name: 'msg') String? msg,
  }) = _OffersModelDropdown;

  factory OffersModelDropdown.fromJson(Map<String, dynamic> json) => _$OffersModelDropdownFromJson(json);
}

@freezed
class OfferData with _$OfferData {
  factory OfferData({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'offers') String? offers,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _OfferData;

  factory OfferData.fromJson(Map<String, dynamic> json) => _$OfferDataFromJson(json);
}

