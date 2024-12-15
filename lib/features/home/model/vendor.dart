class VendorUser {
  final String id;
  final String name;
  final String photo;
  final String? memberColor;
  final String? membershipTitle;

  VendorUser({
    required this.id,
    required this.name,
    required this.photo,
    required this.memberColor,
    required this.membershipTitle,
  });

  // Factory method for creating User from JSON
  factory VendorUser.fromJson(Map<String, dynamic> json) {
    return VendorUser(
      id: json['id'] as String,
      name: json['name'] as String,
      photo: json['photo'] as String,
      memberColor: json['membership_color'] as String,
      membershipTitle: json['membership_title'] as String,
    );
  }
}
