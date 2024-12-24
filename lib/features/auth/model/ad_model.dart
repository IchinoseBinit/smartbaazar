// models/ad.dart
class AdModel {
  final String id;
  final String imageUrl;
  final DateTime createdAt;
  final DateTime updatedAt;

  AdModel(
      {required this.id,
      required this.imageUrl,
      required this.createdAt,
      required this.updatedAt});

  factory AdModel.fromJson(Map<String, dynamic> json) {
    return AdModel(
      id: json['id'],
      imageUrl: json['image'],
      createdAt: DateTime.parse(json['created-at']),
      updatedAt: DateTime.parse(json['updated_at']),
    );
  }
}
