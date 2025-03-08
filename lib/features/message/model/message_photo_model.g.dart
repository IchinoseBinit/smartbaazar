// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_photo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessagePhotoModelImpl _$$MessagePhotoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MessagePhotoModelImpl(
      userAuth: json['user_auth'] == null
          ? null
          : UserAuth.fromJson(json['user_auth'] as Map<String, dynamic>),
      vendor: json['vendor'] == null
          ? null
          : MessagePhoto.fromJson(json['vendor'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MessagePhotoModelImplToJson(
        _$MessagePhotoModelImpl instance) =>
    <String, dynamic>{
      'user_auth': instance.userAuth,
      'vendor': instance.vendor,
    };

_$UserAuthImpl _$$UserAuthImplFromJson(Map<String, dynamic> json) =>
    _$UserAuthImpl(
      id: json['id'] as String?,
      photo: json['photo'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$UserAuthImplToJson(_$UserAuthImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'photo': instance.photo,
      'name': instance.name,
    };

_$MessagePhotoImpl _$$MessagePhotoImplFromJson(Map<String, dynamic> json) =>
    _$MessagePhotoImpl(
      vendorId: json['vendor_id'] as String?,
      vendorName: json['vendor_name'] as String?,
      vendorImage: json['vendor_image'] as String?,
    );

Map<String, dynamic> _$$MessagePhotoImplToJson(_$MessagePhotoImpl instance) =>
    <String, dynamic>{
      'vendor_id': instance.vendorId,
      'vendor_name': instance.vendorName,
      'vendor_image': instance.vendorImage,
    };
