class LocationData {
  final String location;
  final double longitude;
  final double latitude;

  LocationData({
    required this.location,
    required this.longitude,
    required this.latitude,
  });

  factory LocationData.fromJson(Map<String, dynamic> json) {
    return LocationData(
      location: json['location'] ?? '',
      longitude: double.tryParse(json['longitude'] ?? '0') ?? 0,
      latitude: double.tryParse(json['latitude'] ?? '0') ?? 0,
    );
  }
}
