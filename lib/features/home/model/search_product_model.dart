import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_product_model.freezed.dart';
part 'search_product_model.g.dart';

@freezed
class SearchProductModel with _$SearchProductModel {
  factory SearchProductModel({
    required String name,
    String? id,
    String? username
  }) = _SearchProductModel;

  factory SearchProductModel.fromJson(Map<String, dynamic> json) =>
      _$SearchProductModelFromJson(json);
}
