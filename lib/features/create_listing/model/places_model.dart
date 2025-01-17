import 'package:freezed_annotation/freezed_annotation.dart';

part 'places_model.freezed.dart';
part 'places_model.g.dart';

@freezed
class PlacesResponse with _$PlacesResponse {
  const factory PlacesResponse({
    bool? success,
    List<Place>? places,
  }) = _PlacesResponse;

  factory PlacesResponse.fromJson(Map<String, dynamic> json) =>
      _$PlacesResponseFromJson(json);
}

@freezed
class Place with _$Place {
  const factory Place({
    String? description,
    String? place_id,
    double? latitude,
    double? longitude,
  }) = _Place;

  factory Place.fromJson(Map<String, dynamic> json) => _$PlaceFromJson(json);
}
