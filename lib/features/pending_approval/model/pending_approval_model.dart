import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smartbazar/features/vendor/view/model/my_listing_model.dart';

part 'pending_approval_model.freezed.dart';
part 'pending_approval_model.g.dart';

@freezed
class PendingApprovalModel with _$PendingApprovalModel {
  const factory PendingApprovalModel({
    required Products products,
  }) = _PendingApprovalModel;

  factory PendingApprovalModel.fromJson(Map<String, dynamic> json) =>
      _$PendingApprovalModelFromJson(json);
}

@freezed
class Products with _$Products {
  const factory Products({
    @JsonKey(name: 'current_page') required int? currentPage,
    required List<MyListingProduct> data,
    @JsonKey(name: 'first_page_url') required String? firstPageUrl,
    required int? from,
    @JsonKey(name: 'last_page') required int? lastPage,
    @JsonKey(name: 'last_page_url') required String? lastPageUrl,
    required List<PageLink>? links,
    @JsonKey(name: 'next_page_url') String? nextPageUrl,
    required String? path,
    @JsonKey(name: 'per_page') required int? perPage,
    @JsonKey(name: 'prev_page_url') String? prevPageUrl,
    required int? to,
    required int? total,
  }) = _Products;

  factory Products.fromJson(Map<String, dynamic> json) => _$ProductsFromJson(json);
}



@freezed
class PageLink with _$PageLink {
  const factory PageLink({
    String? url,
    required String? label,
    required bool? active,
  }) = _PageLink;

  factory PageLink.fromJson(Map<String, dynamic> json) => _$PageLinkFromJson(json);
}
