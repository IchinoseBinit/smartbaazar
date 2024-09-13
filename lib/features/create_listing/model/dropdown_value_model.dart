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
class Category with _$Category {
  const factory Category({
    required int id,
    String? parentId,
    required String name,
    required String slug,
    String? description,
    String? iconClass,
    required String picture,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);
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
