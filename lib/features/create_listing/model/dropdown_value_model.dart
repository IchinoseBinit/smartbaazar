import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'dropdown_value_model.freezed.dart';
part 'dropdown_value_model.g.dart';

@freezed
class TypeList with _$TypeList {
  const factory TypeList({
    required int typeId,
    required String typeName,
  }) = _TypeList;

  factory TypeList.fromJson(Map<String, dynamic> json) {
    final Map<String, dynamic> nameMap = jsonDecode(json['name']);
    return TypeList(
      typeId: int.parse(json['id']),
      typeName: nameMap['en'], // Extracting only the 'en' value
    );
  }
}

@freezed
class MyCategory with _$MyCategory {
  const factory MyCategory({
    required int id,
    String? parentId,
    required String name,
    required String slug,
    String? description,
    String? iconClass,
    required String picture,
  }) = _MyCategory;

  factory MyCategory.fromJson(Map<String, dynamic> json) => _$MyCategoryFromJson(json);
}


@freezed
class ProductType with _$ProductType {
  const factory ProductType({
    required int id,
    required String name,
  }) = _ProductType;

  factory ProductType.fromJson(Map<String, dynamic> json) => _$ProductTypeFromJson(json);
}

@freezed
class CityList with _$CityList {
  const factory CityList({
    required int id,
    @JsonKey(name: 'country_code') String? countryCode,
    required String name,
  }) = _CityList;

  factory CityList.fromJson(Map<String, dynamic> json) => _$CityListFromJson(json);
}

@freezed
class OffersResponse with _$OffersResponse {
  const factory OffersResponse({
    required List<Offer> data,
    required String msg,
  }) = _OffersResponse;

  factory OffersResponse.fromJson(Map<String, dynamic> json) =>
      _$OffersResponseFromJson(json);
}

@freezed
class Offer with _$Offer {
  const factory Offer({
    required String id,
    required String offers,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
  }) = _Offer;

  factory Offer.fromJson(Map<String, dynamic> json) => _$OfferFromJson(json);
}