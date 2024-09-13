import 'package:freezed_annotation/freezed_annotation.dart';

part 'subscribe_and_win_model.freezed.dart';
part 'subscribe_and_win_model.g.dart';

@freezed
class SubscribeAndWinModel with _$SubscribeAndWinModel {
  factory SubscribeAndWinModel({
    required List<ContentBlock>? content1,
    required List<ContentBlock>? content2,
    required List<ContentBlock> content3,
    required List<ContentBlock> content4,
    required List<Scratch> scratchs,
     @JsonKey(name: "total_gifts") required int totalGifts,
    @JsonKey(name: "total_gift_worth") required int totalGiftWorth,
    @JsonKey(name: "participants_count") required String? participantsCount,
    @JsonKey(name: "sponsor_vendors") required List<SponsorVendor> sponsorVendors,
    required List<Gift> gifts,
     required List<Winner> winners,
  }) = _SubscribeAndWinModel;

  factory SubscribeAndWinModel.fromJson(Map<String, dynamic> json) =>
      _$SubscribeAndWinModelFromJson(json);
}

@freezed
class ContentBlock with _$ContentBlock {
  factory ContentBlock({
    required String? title,
    required String? content,
  }) = _ContentBlock;

  factory ContentBlock.fromJson(Map<String, dynamic> json) =>
      _$ContentBlockFromJson({
        'title': _parseTitleOrContent(json['title']),
        'content': _parseTitleOrContent(json['content']),
      });
  
  static String _parseTitleOrContent(dynamic field) {
    if (field is Map<String, dynamic>) {
      return field['en'] ?? '';
    }
    return field?.toString() ?? '';
  }
}

@freezed
class Scratch with _$Scratch {
  factory Scratch({
    required String? id,
    required String? bazar,
    required String? image,
    // required String createdAt,
    // required String updatedAt,
    // required String imageUrl,
  }) = _Scratch;

  factory Scratch.fromJson(Map<String, dynamic> json) =>
      _$ScratchFromJson(json);
}

@freezed
class SponsorVendor with _$SponsorVendor {
  factory SponsorVendor({
    required String? name,
    required String? photo,
    // required String username,
  }) = _SponsorVendor;

  factory SponsorVendor.fromJson(Map<String, dynamic> json) =>
      _$SponsorVendorFromJson(json);
}

@freezed
class Gift with _$Gift {
  factory Gift({
    required String? name,
    @JsonKey(name: "user_id") required String? userId,
    required String? worth,
    required String? image,
    @JsonKey(name: "vendor_name") required VendorName vendorName,
    @JsonKey(name: "image_url")required String? imageUrl,
  }) = _Gift;

  factory Gift.fromJson(Map<String, dynamic> json) => _$GiftFromJson(json);
}

@freezed
class VendorName with _$VendorName {
  factory VendorName({
    required String? name,
  }) = _VendorName;

  factory VendorName.fromJson(Map<String, dynamic> json) =>
      _$VendorNameFromJson(json);
}
@freezed
class Winner with _$Winner {
  factory Winner({
    required String? name,
  }) = _Winner;

  factory Winner.fromJson(Map<String, dynamic> json) => _$WinnerFromJson(json);
}