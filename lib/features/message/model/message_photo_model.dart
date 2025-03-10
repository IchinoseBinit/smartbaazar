import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_photo_model.freezed.dart';
part 'message_photo_model.g.dart';

@freezed
class MessagePhotoModel with _$MessagePhotoModel {
  const factory MessagePhotoModel({
    @JsonKey(name: 'user_auth') UserAuth? userAuth,
    MessagePhoto? vendor,
  }) = _MessagePhotoModel;

  factory MessagePhotoModel.fromJson(Map<String, dynamic> json) => _$MessagePhotoModelFromJson(json);
}

@freezed
class UserAuth with _$UserAuth {
  const factory UserAuth({
    String? id,
    String? photo,
    String? name,
  }) = _UserAuth;

  factory UserAuth.fromJson(Map<String, dynamic> json) => _$UserAuthFromJson(json);
}

@freezed
class MessagePhoto with _$MessagePhoto {
  const factory MessagePhoto({
    @JsonKey(name: 'vendor_id') String? vendorId,
    @JsonKey(name: 'vendor_name') String? vendorName,
    @JsonKey(name: 'vendor_image') String? vendorImage,
  }) = _MessagePhoto;

  factory MessagePhoto.fromJson(Map<String, dynamic> json) => _$MessagePhotoFromJson(json);
}