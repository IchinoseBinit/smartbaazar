import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipping_cities_model.freezed.dart';
part 'shipping_cities_model.g.dart';

@freezed
class ShippingCitiesModel with _$ShippingCitiesModel {
  const factory ShippingCitiesModel({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "description") required String? description,
    @JsonKey(name: "actual_place_name") required String? actualPlaceName,
  }) = _ShippingCitiesModel;
  factory ShippingCitiesModel.fromJson(Map<String, dynamic> json) =>
      _$ShippingCitiesModelFromJson(json);
}
