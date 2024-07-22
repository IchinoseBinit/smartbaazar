import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smartbazar/features/home/model/product_model.dart';

part 'home_advertisement_model.freezed.dart';
part 'home_advertisement_model.g.dart';

@freezed
class HomeAdvertisement with _$HomeAdvertisement {
  factory HomeAdvertisement({
    required String id,
    required String image,
  }) = _HomeAdvertisement;

  factory HomeAdvertisement.fromJson(Map<String, dynamic> json) =>
      _$HomeAdvertisementFromJson(json);
}
