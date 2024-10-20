// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipping_cities_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShippingCitiesModelImpl _$$ShippingCitiesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ShippingCitiesModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String?,
      actualPlaceName: json['actual_place_name'] as String?,
    );

Map<String, dynamic> _$$ShippingCitiesModelImplToJson(
        _$ShippingCitiesModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'actual_place_name': instance.actualPlaceName,
    };
