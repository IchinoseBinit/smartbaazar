import 'package:freezed_annotation/freezed_annotation.dart';

part 'ad_model.freezed.dart';
part 'ad_model.g.dart';

@freezed
class LoadingAd with _$LoadingAd {
  const factory LoadingAd({
    String? image, // Only keep the image field
  }) = _LoadingAd;

  factory LoadingAd.fromJson(Map<String, dynamic> json) => _$LoadingAdFromJson(json);
}
