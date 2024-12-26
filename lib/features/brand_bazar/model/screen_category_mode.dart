import 'package:freezed_annotation/freezed_annotation.dart';

part 'screen_category_mode.freezed.dart';
part 'screen_category_mode.g.dart';



@freezed
class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    required int id,
    @JsonKey(name: 'parent_id') String? parentId,
    required String name,
    required String slug,
    String? description,
    String? picture,
    @JsonKey(name: 'icon_class') String? iconClass,
    String? type,
    @JsonKey(name: 'hide_description') String? hideDescription,
    
    @JsonKey(name: 'parentClosure') ParentClosure? parentClosure,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}

@freezed
class ParentClosure with _$ParentClosure {
  const factory ParentClosure({
    required int id,
    @JsonKey(name: 'parent_id') String? parentId,
    required String name,
    required String slug,
    String? description,
    String? picture,
    @JsonKey(name: 'icon_class') String? iconClass,
     String? type,
  
  }) = _ParentClosure;

  factory ParentClosure.fromJson(Map<String, dynamic> json) =>
      _$ParentClosureFromJson(json);
}
