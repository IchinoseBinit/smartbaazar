// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'street_address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StreetAddressModelImpl _$$StreetAddressModelImplFromJson(
        Map<String, dynamic> json) =>
    _$StreetAddressModelImpl(
      description: json['description'] as String,
      placeId: json['place_id'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$$StreetAddressModelImplToJson(
        _$StreetAddressModelImpl instance) =>
    <String, dynamic>{
      'description': instance.description,
      'place_id': instance.placeId,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
