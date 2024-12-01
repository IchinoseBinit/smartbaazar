import 'package:freezed_annotation/freezed_annotation.dart';

part 'street_address_model.freezed.dart';
part 'street_address_model.g.dart';


@freezed
class StreetAddressModel with _$StreetAddressModel {
    const factory StreetAddressModel({
        @JsonKey(name: "description")
        required String description,
        @JsonKey(name: "place_id")
        required String placeId,
        @JsonKey(name: "latitude")
        required double latitude,
        @JsonKey(name: "longitude")
        required double longitude,
    }) = _StreetAddressModel;

    factory StreetAddressModel.fromJson(Map<String, dynamic> json)=>_$StreetAddressModelFromJson(json); 
}