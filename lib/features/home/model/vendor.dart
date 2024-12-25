  class VendorUser {
  final String id;
  final String name;
  final String photo;

  VendorUser({
    required this.id,
    required this.name,
    required this.photo,
  });

  // Factory method for creating User from JSON
  factory VendorUser.fromJson(Map<String, dynamic> json) {
    return VendorUser(
      id: json['id'] as String,
      name: json['name'] as String,
      photo: json['photo'] as String,
    );
  }
}
