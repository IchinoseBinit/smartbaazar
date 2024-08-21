import 'dart:convert';

class TypeList {
  final int typeId;
  final String typeName;

  TypeList({required this.typeId, required this.typeName});

  factory TypeList.fromJson(Map<String, dynamic> json) {
    final Map<String, dynamic> nameMap = jsonDecode(json['name']);
    return TypeList(
      typeId: int.parse(json['id']),
      typeName: nameMap['en'], // Extracting only the 'en' value
    );
  }
}

class Category {
  final int id;
  final String? parentId;
  final String name;
  final String slug;
  final String? description;
  final String? iconClass;
  final String picture;

  Category({
    required this.id,
    this.parentId,
    required this.name,
    required this.slug,
    this.description,
    this.iconClass,
    required this.picture,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'],
      parentId: json['parent_id'],
      name: json['name'],
      slug: json['slug'],
      description: json['description'],
      iconClass: json['icon_class'],
      picture: json['picture'],
    );
  }
}

class ProductType {
  final int id;
  final String name;

  ProductType({required this.id, required this.name});

  factory ProductType.fromJson(Map<String, dynamic> json) {
    return ProductType(
      id: json['id'],
      name: json['name'],
    );
  }
}

class CityList {
  final int id;
  final String countryCode;
  final String name;

  CityList({
    required this.id,
    required this.countryCode,
    required this.name,
  });

  factory CityList.fromJson(Map<String, dynamic> json) {
    return CityList(
      id: json['id'],
      countryCode: json['country_code'],
      name: json['name'],
    );
  }
}
