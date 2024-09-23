// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_model_for_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VendorModelByIDImpl _$$VendorModelByIDImplFromJson(
        Map<String, dynamic> json) =>
    _$VendorModelByIDImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
      photo: json['photo'] as String? ?? '',
    );

Map<String, dynamic> _$$VendorModelByIDImplToJson(
        _$VendorModelByIDImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'email': instance.email,
      'photo': instance.photo,
    };
