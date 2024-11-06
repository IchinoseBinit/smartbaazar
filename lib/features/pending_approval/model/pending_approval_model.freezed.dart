// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pending_approval_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PendingApprovalModel _$PendingApprovalModelFromJson(Map<String, dynamic> json) {
  return _PendingApprovalModel.fromJson(json);
}

/// @nodoc
mixin _$PendingApprovalModel {
  Products get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PendingApprovalModelCopyWith<PendingApprovalModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PendingApprovalModelCopyWith<$Res> {
  factory $PendingApprovalModelCopyWith(PendingApprovalModel value,
          $Res Function(PendingApprovalModel) then) =
      _$PendingApprovalModelCopyWithImpl<$Res, PendingApprovalModel>;
  @useResult
  $Res call({Products products});

  $ProductsCopyWith<$Res> get products;
}

/// @nodoc
class _$PendingApprovalModelCopyWithImpl<$Res,
        $Val extends PendingApprovalModel>
    implements $PendingApprovalModelCopyWith<$Res> {
  _$PendingApprovalModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as Products,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductsCopyWith<$Res> get products {
    return $ProductsCopyWith<$Res>(_value.products, (value) {
      return _then(_value.copyWith(products: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PendingApprovalModelImplCopyWith<$Res>
    implements $PendingApprovalModelCopyWith<$Res> {
  factory _$$PendingApprovalModelImplCopyWith(_$PendingApprovalModelImpl value,
          $Res Function(_$PendingApprovalModelImpl) then) =
      __$$PendingApprovalModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Products products});

  @override
  $ProductsCopyWith<$Res> get products;
}

/// @nodoc
class __$$PendingApprovalModelImplCopyWithImpl<$Res>
    extends _$PendingApprovalModelCopyWithImpl<$Res, _$PendingApprovalModelImpl>
    implements _$$PendingApprovalModelImplCopyWith<$Res> {
  __$$PendingApprovalModelImplCopyWithImpl(_$PendingApprovalModelImpl _value,
      $Res Function(_$PendingApprovalModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$PendingApprovalModelImpl(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as Products,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PendingApprovalModelImpl implements _PendingApprovalModel {
  const _$PendingApprovalModelImpl({required this.products});

  factory _$PendingApprovalModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PendingApprovalModelImplFromJson(json);

  @override
  final Products products;

  @override
  String toString() {
    return 'PendingApprovalModel(products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PendingApprovalModelImpl &&
            (identical(other.products, products) ||
                other.products == products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, products);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PendingApprovalModelImplCopyWith<_$PendingApprovalModelImpl>
      get copyWith =>
          __$$PendingApprovalModelImplCopyWithImpl<_$PendingApprovalModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PendingApprovalModelImplToJson(
      this,
    );
  }
}

abstract class _PendingApprovalModel implements PendingApprovalModel {
  const factory _PendingApprovalModel({required final Products products}) =
      _$PendingApprovalModelImpl;

  factory _PendingApprovalModel.fromJson(Map<String, dynamic> json) =
      _$PendingApprovalModelImpl.fromJson;

  @override
  Products get products;
  @override
  @JsonKey(ignore: true)
  _$$PendingApprovalModelImplCopyWith<_$PendingApprovalModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Products _$ProductsFromJson(Map<String, dynamic> json) {
  return _Products.fromJson(json);
}

/// @nodoc
mixin _$Products {
  @JsonKey(name: 'current_page')
  int? get currentPage => throw _privateConstructorUsedError;
  List<ProductData> get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_page_url')
  String? get firstPageUrl => throw _privateConstructorUsedError;
  int? get from => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page')
  int? get lastPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page_url')
  String? get lastPageUrl => throw _privateConstructorUsedError;
  List<PageLink>? get links => throw _privateConstructorUsedError;
  @JsonKey(name: 'next_page_url')
  String? get nextPageUrl => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_page')
  int? get perPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'prev_page_url')
  String? get prevPageUrl => throw _privateConstructorUsedError;
  int? get to => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductsCopyWith<Products> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsCopyWith<$Res> {
  factory $ProductsCopyWith(Products value, $Res Function(Products) then) =
      _$ProductsCopyWithImpl<$Res, Products>;
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page') int? currentPage,
      List<ProductData> data,
      @JsonKey(name: 'first_page_url') String? firstPageUrl,
      int? from,
      @JsonKey(name: 'last_page') int? lastPage,
      @JsonKey(name: 'last_page_url') String? lastPageUrl,
      List<PageLink>? links,
      @JsonKey(name: 'next_page_url') String? nextPageUrl,
      String? path,
      @JsonKey(name: 'per_page') int? perPage,
      @JsonKey(name: 'prev_page_url') String? prevPageUrl,
      int? to,
      int? total});
}

/// @nodoc
class _$ProductsCopyWithImpl<$Res, $Val extends Products>
    implements $ProductsCopyWith<$Res> {
  _$ProductsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? data = null,
    Object? firstPageUrl = freezed,
    Object? from = freezed,
    Object? lastPage = freezed,
    Object? lastPageUrl = freezed,
    Object? links = freezed,
    Object? nextPageUrl = freezed,
    Object? path = freezed,
    Object? perPage = freezed,
    Object? prevPageUrl = freezed,
    Object? to = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ProductData>,
      firstPageUrl: freezed == firstPageUrl
          ? _value.firstPageUrl
          : firstPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPageUrl: freezed == lastPageUrl
          ? _value.lastPageUrl
          : lastPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as List<PageLink>?,
      nextPageUrl: freezed == nextPageUrl
          ? _value.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      prevPageUrl: freezed == prevPageUrl
          ? _value.prevPageUrl
          : prevPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductsImplCopyWith<$Res>
    implements $ProductsCopyWith<$Res> {
  factory _$$ProductsImplCopyWith(
          _$ProductsImpl value, $Res Function(_$ProductsImpl) then) =
      __$$ProductsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page') int? currentPage,
      List<ProductData> data,
      @JsonKey(name: 'first_page_url') String? firstPageUrl,
      int? from,
      @JsonKey(name: 'last_page') int? lastPage,
      @JsonKey(name: 'last_page_url') String? lastPageUrl,
      List<PageLink>? links,
      @JsonKey(name: 'next_page_url') String? nextPageUrl,
      String? path,
      @JsonKey(name: 'per_page') int? perPage,
      @JsonKey(name: 'prev_page_url') String? prevPageUrl,
      int? to,
      int? total});
}

/// @nodoc
class __$$ProductsImplCopyWithImpl<$Res>
    extends _$ProductsCopyWithImpl<$Res, _$ProductsImpl>
    implements _$$ProductsImplCopyWith<$Res> {
  __$$ProductsImplCopyWithImpl(
      _$ProductsImpl _value, $Res Function(_$ProductsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? data = null,
    Object? firstPageUrl = freezed,
    Object? from = freezed,
    Object? lastPage = freezed,
    Object? lastPageUrl = freezed,
    Object? links = freezed,
    Object? nextPageUrl = freezed,
    Object? path = freezed,
    Object? perPage = freezed,
    Object? prevPageUrl = freezed,
    Object? to = freezed,
    Object? total = freezed,
  }) {
    return _then(_$ProductsImpl(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ProductData>,
      firstPageUrl: freezed == firstPageUrl
          ? _value.firstPageUrl
          : firstPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPageUrl: freezed == lastPageUrl
          ? _value.lastPageUrl
          : lastPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      links: freezed == links
          ? _value._links
          : links // ignore: cast_nullable_to_non_nullable
              as List<PageLink>?,
      nextPageUrl: freezed == nextPageUrl
          ? _value.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      prevPageUrl: freezed == prevPageUrl
          ? _value.prevPageUrl
          : prevPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductsImpl implements _Products {
  const _$ProductsImpl(
      {@JsonKey(name: 'current_page') required this.currentPage,
      required final List<ProductData> data,
      @JsonKey(name: 'first_page_url') required this.firstPageUrl,
      required this.from,
      @JsonKey(name: 'last_page') required this.lastPage,
      @JsonKey(name: 'last_page_url') required this.lastPageUrl,
      required final List<PageLink>? links,
      @JsonKey(name: 'next_page_url') this.nextPageUrl,
      required this.path,
      @JsonKey(name: 'per_page') required this.perPage,
      @JsonKey(name: 'prev_page_url') this.prevPageUrl,
      required this.to,
      required this.total})
      : _data = data,
        _links = links;

  factory _$ProductsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductsImplFromJson(json);

  @override
  @JsonKey(name: 'current_page')
  final int? currentPage;
  final List<ProductData> _data;
  @override
  List<ProductData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey(name: 'first_page_url')
  final String? firstPageUrl;
  @override
  final int? from;
  @override
  @JsonKey(name: 'last_page')
  final int? lastPage;
  @override
  @JsonKey(name: 'last_page_url')
  final String? lastPageUrl;
  final List<PageLink>? _links;
  @override
  List<PageLink>? get links {
    final value = _links;
    if (value == null) return null;
    if (_links is EqualUnmodifiableListView) return _links;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'next_page_url')
  final String? nextPageUrl;
  @override
  final String? path;
  @override
  @JsonKey(name: 'per_page')
  final int? perPage;
  @override
  @JsonKey(name: 'prev_page_url')
  final String? prevPageUrl;
  @override
  final int? to;
  @override
  final int? total;

  @override
  String toString() {
    return 'Products(currentPage: $currentPage, data: $data, firstPageUrl: $firstPageUrl, from: $from, lastPage: $lastPage, lastPageUrl: $lastPageUrl, links: $links, nextPageUrl: $nextPageUrl, path: $path, perPage: $perPage, prevPageUrl: $prevPageUrl, to: $to, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.firstPageUrl, firstPageUrl) ||
                other.firstPageUrl == firstPageUrl) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.lastPageUrl, lastPageUrl) ||
                other.lastPageUrl == lastPageUrl) &&
            const DeepCollectionEquality().equals(other._links, _links) &&
            (identical(other.nextPageUrl, nextPageUrl) ||
                other.nextPageUrl == nextPageUrl) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.prevPageUrl, prevPageUrl) ||
                other.prevPageUrl == prevPageUrl) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentPage,
      const DeepCollectionEquality().hash(_data),
      firstPageUrl,
      from,
      lastPage,
      lastPageUrl,
      const DeepCollectionEquality().hash(_links),
      nextPageUrl,
      path,
      perPage,
      prevPageUrl,
      to,
      total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsImplCopyWith<_$ProductsImpl> get copyWith =>
      __$$ProductsImplCopyWithImpl<_$ProductsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsImplToJson(
      this,
    );
  }
}

abstract class _Products implements Products {
  const factory _Products(
      {@JsonKey(name: 'current_page') required final int? currentPage,
      required final List<ProductData> data,
      @JsonKey(name: 'first_page_url') required final String? firstPageUrl,
      required final int? from,
      @JsonKey(name: 'last_page') required final int? lastPage,
      @JsonKey(name: 'last_page_url') required final String? lastPageUrl,
      required final List<PageLink>? links,
      @JsonKey(name: 'next_page_url') final String? nextPageUrl,
      required final String? path,
      @JsonKey(name: 'per_page') required final int? perPage,
      @JsonKey(name: 'prev_page_url') final String? prevPageUrl,
      required final int? to,
      required final int? total}) = _$ProductsImpl;

  factory _Products.fromJson(Map<String, dynamic> json) =
      _$ProductsImpl.fromJson;

  @override
  @JsonKey(name: 'current_page')
  int? get currentPage;
  @override
  List<ProductData> get data;
  @override
  @JsonKey(name: 'first_page_url')
  String? get firstPageUrl;
  @override
  int? get from;
  @override
  @JsonKey(name: 'last_page')
  int? get lastPage;
  @override
  @JsonKey(name: 'last_page_url')
  String? get lastPageUrl;
  @override
  List<PageLink>? get links;
  @override
  @JsonKey(name: 'next_page_url')
  String? get nextPageUrl;
  @override
  String? get path;
  @override
  @JsonKey(name: 'per_page')
  int? get perPage;
  @override
  @JsonKey(name: 'prev_page_url')
  String? get prevPageUrl;
  @override
  int? get to;
  @override
  int? get total;
  @override
  @JsonKey(ignore: true)
  _$$ProductsImplCopyWith<_$ProductsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductData _$ProductDataFromJson(Map<String, dynamic> json) {
  return _ProductData.fromJson(json);
}

/// @nodoc
mixin _$ProductData {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'country_code')
  String? get countryCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_id')
  String? get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'post_type_id')
  String? get postTypeId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get tags => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  String? get negotiable => throw _privateConstructorUsedError;
  @JsonKey(name: 'contact_name')
  String? get contactName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_hidden')
  String? get phoneHidden => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'city_id')
  String? get cityId => throw _privateConstructorUsedError;
  String? get lon => throw _privateConstructorUsedError;
  String? get lat => throw _privateConstructorUsedError;
  @JsonKey(name: 'ip_addr')
  String? get ipAddr => throw _privateConstructorUsedError;
  String? get length => throw _privateConstructorUsedError;
  String? get width => throw _privateConstructorUsedError;
  String? get weight => throw _privateConstructorUsedError;
  String? get height => throw _privateConstructorUsedError;
  String? get pickup => throw _privateConstructorUsedError;
  String? get longitude => throw _privateConstructorUsedError;
  String? get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'hyper_del')
  String? get hyperDel => throw _privateConstructorUsedError;
  @JsonKey(name: 'seller_del')
  String? get sellerDel => throw _privateConstructorUsedError;
  String? get visits => throw _privateConstructorUsedError;
  @JsonKey(name: 'email_token')
  String? get emailToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_token')
  String? get phoneToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'tmp_token')
  String? get tmpToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'verified_email')
  String? get verifiedEmail => throw _privateConstructorUsedError;
  @JsonKey(name: 'verified_phone')
  String? get verifiedPhone => throw _privateConstructorUsedError;
  @JsonKey(name: 'accept_terms')
  String? get acceptTerms => throw _privateConstructorUsedError;
  @JsonKey(name: 'accept_marketing_offers')
  String? get acceptMarketingOffers => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_permanent')
  String? get isPermanent => throw _privateConstructorUsedError;
  String? get reviewed => throw _privateConstructorUsedError;
  String? get featured => throw _privateConstructorUsedError;
  String? get archived => throw _privateConstructorUsedError;
  @JsonKey(name: 'archived_at')
  String? get archivedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'archived_manually')
  String? get archivedManually => throw _privateConstructorUsedError;
  @JsonKey(name: 'deletion_mail_sent_at')
  String? get deletionMailSentAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'fb_profile')
  String? get fbProfile => throw _privateConstructorUsedError;
  String? get partner => throw _privateConstructorUsedError;
  @JsonKey(name: 'discounted_price')
  String? get discountedPrice => throw _privateConstructorUsedError;
  String? get trending => throw _privateConstructorUsedError;
  String? get stock => throw _privateConstructorUsedError;
  @JsonKey(name: 'min_order')
  String? get minOrder => throw _privateConstructorUsedError;
  @JsonKey(name: 'samp_price')
  String? get sampPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'text_one')
  String? get textOne => throw _privateConstructorUsedError;
  @JsonKey(name: 'text_two')
  String? get textTwo => throw _privateConstructorUsedError;
  @JsonKey(name: 'ava_to')
  String? get avaTo => throw _privateConstructorUsedError;
  @JsonKey(name: 'branded')
  String? get branded => throw _privateConstructorUsedError;
  @JsonKey(name: 'deleted_at')
  String? get deletedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'avg_rating')
  int? get avgRating => throw _privateConstructorUsedError;
  @JsonKey(name: 'savedByLoggedUser')
  List<dynamic>? get savedByLoggedUser => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDataCopyWith<ProductData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDataCopyWith<$Res> {
  factory $ProductDataCopyWith(
          ProductData value, $Res Function(ProductData) then) =
      _$ProductDataCopyWithImpl<$Res, ProductData>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'country_code') String? countryCode,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'category_id') String? categoryId,
      @JsonKey(name: 'post_type_id') String? postTypeId,
      String? title,
      String? description,
      String? tags,
      String? price,
      String? negotiable,
      @JsonKey(name: 'contact_name') String? contactName,
      String? email,
      String? phone,
      @JsonKey(name: 'phone_hidden') String? phoneHidden,
      String? address,
      @JsonKey(name: 'city_id') String? cityId,
      String? lon,
      String? lat,
      @JsonKey(name: 'ip_addr') String? ipAddr,
      String? length,
      String? width,
      String? weight,
      String? height,
      String? pickup,
      String? longitude,
      String? latitude,
      @JsonKey(name: 'hyper_del') String? hyperDel,
      @JsonKey(name: 'seller_del') String? sellerDel,
      String? visits,
      @JsonKey(name: 'email_token') String? emailToken,
      @JsonKey(name: 'phone_token') String? phoneToken,
      @JsonKey(name: 'tmp_token') String? tmpToken,
      @JsonKey(name: 'verified_email') String? verifiedEmail,
      @JsonKey(name: 'verified_phone') String? verifiedPhone,
      @JsonKey(name: 'accept_terms') String? acceptTerms,
      @JsonKey(name: 'accept_marketing_offers') String? acceptMarketingOffers,
      @JsonKey(name: 'is_permanent') String? isPermanent,
      String? reviewed,
      String? featured,
      String? archived,
      @JsonKey(name: 'archived_at') String? archivedAt,
      @JsonKey(name: 'archived_manually') String? archivedManually,
      @JsonKey(name: 'deletion_mail_sent_at') String? deletionMailSentAt,
      @JsonKey(name: 'fb_profile') String? fbProfile,
      String? partner,
      @JsonKey(name: 'discounted_price') String? discountedPrice,
      String? trending,
      String? stock,
      @JsonKey(name: 'min_order') String? minOrder,
      @JsonKey(name: 'samp_price') String? sampPrice,
      @JsonKey(name: 'text_one') String? textOne,
      @JsonKey(name: 'text_two') String? textTwo,
      @JsonKey(name: 'ava_to') String? avaTo,
      @JsonKey(name: 'branded') String? branded,
      @JsonKey(name: 'deleted_at') String? deletedAt,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      String? image,
      @JsonKey(name: 'avg_rating') int? avgRating,
      @JsonKey(name: 'savedByLoggedUser') List<dynamic>? savedByLoggedUser});
}

/// @nodoc
class _$ProductDataCopyWithImpl<$Res, $Val extends ProductData>
    implements $ProductDataCopyWith<$Res> {
  _$ProductDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? countryCode = freezed,
    Object? userId = freezed,
    Object? categoryId = freezed,
    Object? postTypeId = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? tags = freezed,
    Object? price = freezed,
    Object? negotiable = freezed,
    Object? contactName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? phoneHidden = freezed,
    Object? address = freezed,
    Object? cityId = freezed,
    Object? lon = freezed,
    Object? lat = freezed,
    Object? ipAddr = freezed,
    Object? length = freezed,
    Object? width = freezed,
    Object? weight = freezed,
    Object? height = freezed,
    Object? pickup = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
    Object? hyperDel = freezed,
    Object? sellerDel = freezed,
    Object? visits = freezed,
    Object? emailToken = freezed,
    Object? phoneToken = freezed,
    Object? tmpToken = freezed,
    Object? verifiedEmail = freezed,
    Object? verifiedPhone = freezed,
    Object? acceptTerms = freezed,
    Object? acceptMarketingOffers = freezed,
    Object? isPermanent = freezed,
    Object? reviewed = freezed,
    Object? featured = freezed,
    Object? archived = freezed,
    Object? archivedAt = freezed,
    Object? archivedManually = freezed,
    Object? deletionMailSentAt = freezed,
    Object? fbProfile = freezed,
    Object? partner = freezed,
    Object? discountedPrice = freezed,
    Object? trending = freezed,
    Object? stock = freezed,
    Object? minOrder = freezed,
    Object? sampPrice = freezed,
    Object? textOne = freezed,
    Object? textTwo = freezed,
    Object? avaTo = freezed,
    Object? branded = freezed,
    Object? deletedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? image = freezed,
    Object? avgRating = freezed,
    Object? savedByLoggedUser = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      postTypeId: freezed == postTypeId
          ? _value.postTypeId
          : postTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      negotiable: freezed == negotiable
          ? _value.negotiable
          : negotiable // ignore: cast_nullable_to_non_nullable
              as String?,
      contactName: freezed == contactName
          ? _value.contactName
          : contactName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneHidden: freezed == phoneHidden
          ? _value.phoneHidden
          : phoneHidden // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      cityId: freezed == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String?,
      lon: freezed == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      ipAddr: freezed == ipAddr
          ? _value.ipAddr
          : ipAddr // ignore: cast_nullable_to_non_nullable
              as String?,
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String?,
      pickup: freezed == pickup
          ? _value.pickup
          : pickup // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      hyperDel: freezed == hyperDel
          ? _value.hyperDel
          : hyperDel // ignore: cast_nullable_to_non_nullable
              as String?,
      sellerDel: freezed == sellerDel
          ? _value.sellerDel
          : sellerDel // ignore: cast_nullable_to_non_nullable
              as String?,
      visits: freezed == visits
          ? _value.visits
          : visits // ignore: cast_nullable_to_non_nullable
              as String?,
      emailToken: freezed == emailToken
          ? _value.emailToken
          : emailToken // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneToken: freezed == phoneToken
          ? _value.phoneToken
          : phoneToken // ignore: cast_nullable_to_non_nullable
              as String?,
      tmpToken: freezed == tmpToken
          ? _value.tmpToken
          : tmpToken // ignore: cast_nullable_to_non_nullable
              as String?,
      verifiedEmail: freezed == verifiedEmail
          ? _value.verifiedEmail
          : verifiedEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      verifiedPhone: freezed == verifiedPhone
          ? _value.verifiedPhone
          : verifiedPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      acceptTerms: freezed == acceptTerms
          ? _value.acceptTerms
          : acceptTerms // ignore: cast_nullable_to_non_nullable
              as String?,
      acceptMarketingOffers: freezed == acceptMarketingOffers
          ? _value.acceptMarketingOffers
          : acceptMarketingOffers // ignore: cast_nullable_to_non_nullable
              as String?,
      isPermanent: freezed == isPermanent
          ? _value.isPermanent
          : isPermanent // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewed: freezed == reviewed
          ? _value.reviewed
          : reviewed // ignore: cast_nullable_to_non_nullable
              as String?,
      featured: freezed == featured
          ? _value.featured
          : featured // ignore: cast_nullable_to_non_nullable
              as String?,
      archived: freezed == archived
          ? _value.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as String?,
      archivedAt: freezed == archivedAt
          ? _value.archivedAt
          : archivedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      archivedManually: freezed == archivedManually
          ? _value.archivedManually
          : archivedManually // ignore: cast_nullable_to_non_nullable
              as String?,
      deletionMailSentAt: freezed == deletionMailSentAt
          ? _value.deletionMailSentAt
          : deletionMailSentAt // ignore: cast_nullable_to_non_nullable
              as String?,
      fbProfile: freezed == fbProfile
          ? _value.fbProfile
          : fbProfile // ignore: cast_nullable_to_non_nullable
              as String?,
      partner: freezed == partner
          ? _value.partner
          : partner // ignore: cast_nullable_to_non_nullable
              as String?,
      discountedPrice: freezed == discountedPrice
          ? _value.discountedPrice
          : discountedPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      trending: freezed == trending
          ? _value.trending
          : trending // ignore: cast_nullable_to_non_nullable
              as String?,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as String?,
      minOrder: freezed == minOrder
          ? _value.minOrder
          : minOrder // ignore: cast_nullable_to_non_nullable
              as String?,
      sampPrice: freezed == sampPrice
          ? _value.sampPrice
          : sampPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      textOne: freezed == textOne
          ? _value.textOne
          : textOne // ignore: cast_nullable_to_non_nullable
              as String?,
      textTwo: freezed == textTwo
          ? _value.textTwo
          : textTwo // ignore: cast_nullable_to_non_nullable
              as String?,
      avaTo: freezed == avaTo
          ? _value.avaTo
          : avaTo // ignore: cast_nullable_to_non_nullable
              as String?,
      branded: freezed == branded
          ? _value.branded
          : branded // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      avgRating: freezed == avgRating
          ? _value.avgRating
          : avgRating // ignore: cast_nullable_to_non_nullable
              as int?,
      savedByLoggedUser: freezed == savedByLoggedUser
          ? _value.savedByLoggedUser
          : savedByLoggedUser // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductDataImplCopyWith<$Res>
    implements $ProductDataCopyWith<$Res> {
  factory _$$ProductDataImplCopyWith(
          _$ProductDataImpl value, $Res Function(_$ProductDataImpl) then) =
      __$$ProductDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'country_code') String? countryCode,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'category_id') String? categoryId,
      @JsonKey(name: 'post_type_id') String? postTypeId,
      String? title,
      String? description,
      String? tags,
      String? price,
      String? negotiable,
      @JsonKey(name: 'contact_name') String? contactName,
      String? email,
      String? phone,
      @JsonKey(name: 'phone_hidden') String? phoneHidden,
      String? address,
      @JsonKey(name: 'city_id') String? cityId,
      String? lon,
      String? lat,
      @JsonKey(name: 'ip_addr') String? ipAddr,
      String? length,
      String? width,
      String? weight,
      String? height,
      String? pickup,
      String? longitude,
      String? latitude,
      @JsonKey(name: 'hyper_del') String? hyperDel,
      @JsonKey(name: 'seller_del') String? sellerDel,
      String? visits,
      @JsonKey(name: 'email_token') String? emailToken,
      @JsonKey(name: 'phone_token') String? phoneToken,
      @JsonKey(name: 'tmp_token') String? tmpToken,
      @JsonKey(name: 'verified_email') String? verifiedEmail,
      @JsonKey(name: 'verified_phone') String? verifiedPhone,
      @JsonKey(name: 'accept_terms') String? acceptTerms,
      @JsonKey(name: 'accept_marketing_offers') String? acceptMarketingOffers,
      @JsonKey(name: 'is_permanent') String? isPermanent,
      String? reviewed,
      String? featured,
      String? archived,
      @JsonKey(name: 'archived_at') String? archivedAt,
      @JsonKey(name: 'archived_manually') String? archivedManually,
      @JsonKey(name: 'deletion_mail_sent_at') String? deletionMailSentAt,
      @JsonKey(name: 'fb_profile') String? fbProfile,
      String? partner,
      @JsonKey(name: 'discounted_price') String? discountedPrice,
      String? trending,
      String? stock,
      @JsonKey(name: 'min_order') String? minOrder,
      @JsonKey(name: 'samp_price') String? sampPrice,
      @JsonKey(name: 'text_one') String? textOne,
      @JsonKey(name: 'text_two') String? textTwo,
      @JsonKey(name: 'ava_to') String? avaTo,
      @JsonKey(name: 'branded') String? branded,
      @JsonKey(name: 'deleted_at') String? deletedAt,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      String? image,
      @JsonKey(name: 'avg_rating') int? avgRating,
      @JsonKey(name: 'savedByLoggedUser') List<dynamic>? savedByLoggedUser});
}

/// @nodoc
class __$$ProductDataImplCopyWithImpl<$Res>
    extends _$ProductDataCopyWithImpl<$Res, _$ProductDataImpl>
    implements _$$ProductDataImplCopyWith<$Res> {
  __$$ProductDataImplCopyWithImpl(
      _$ProductDataImpl _value, $Res Function(_$ProductDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? countryCode = freezed,
    Object? userId = freezed,
    Object? categoryId = freezed,
    Object? postTypeId = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? tags = freezed,
    Object? price = freezed,
    Object? negotiable = freezed,
    Object? contactName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? phoneHidden = freezed,
    Object? address = freezed,
    Object? cityId = freezed,
    Object? lon = freezed,
    Object? lat = freezed,
    Object? ipAddr = freezed,
    Object? length = freezed,
    Object? width = freezed,
    Object? weight = freezed,
    Object? height = freezed,
    Object? pickup = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
    Object? hyperDel = freezed,
    Object? sellerDel = freezed,
    Object? visits = freezed,
    Object? emailToken = freezed,
    Object? phoneToken = freezed,
    Object? tmpToken = freezed,
    Object? verifiedEmail = freezed,
    Object? verifiedPhone = freezed,
    Object? acceptTerms = freezed,
    Object? acceptMarketingOffers = freezed,
    Object? isPermanent = freezed,
    Object? reviewed = freezed,
    Object? featured = freezed,
    Object? archived = freezed,
    Object? archivedAt = freezed,
    Object? archivedManually = freezed,
    Object? deletionMailSentAt = freezed,
    Object? fbProfile = freezed,
    Object? partner = freezed,
    Object? discountedPrice = freezed,
    Object? trending = freezed,
    Object? stock = freezed,
    Object? minOrder = freezed,
    Object? sampPrice = freezed,
    Object? textOne = freezed,
    Object? textTwo = freezed,
    Object? avaTo = freezed,
    Object? branded = freezed,
    Object? deletedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? image = freezed,
    Object? avgRating = freezed,
    Object? savedByLoggedUser = freezed,
  }) {
    return _then(_$ProductDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      postTypeId: freezed == postTypeId
          ? _value.postTypeId
          : postTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      negotiable: freezed == negotiable
          ? _value.negotiable
          : negotiable // ignore: cast_nullable_to_non_nullable
              as String?,
      contactName: freezed == contactName
          ? _value.contactName
          : contactName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneHidden: freezed == phoneHidden
          ? _value.phoneHidden
          : phoneHidden // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      cityId: freezed == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String?,
      lon: freezed == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      ipAddr: freezed == ipAddr
          ? _value.ipAddr
          : ipAddr // ignore: cast_nullable_to_non_nullable
              as String?,
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String?,
      pickup: freezed == pickup
          ? _value.pickup
          : pickup // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      hyperDel: freezed == hyperDel
          ? _value.hyperDel
          : hyperDel // ignore: cast_nullable_to_non_nullable
              as String?,
      sellerDel: freezed == sellerDel
          ? _value.sellerDel
          : sellerDel // ignore: cast_nullable_to_non_nullable
              as String?,
      visits: freezed == visits
          ? _value.visits
          : visits // ignore: cast_nullable_to_non_nullable
              as String?,
      emailToken: freezed == emailToken
          ? _value.emailToken
          : emailToken // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneToken: freezed == phoneToken
          ? _value.phoneToken
          : phoneToken // ignore: cast_nullable_to_non_nullable
              as String?,
      tmpToken: freezed == tmpToken
          ? _value.tmpToken
          : tmpToken // ignore: cast_nullable_to_non_nullable
              as String?,
      verifiedEmail: freezed == verifiedEmail
          ? _value.verifiedEmail
          : verifiedEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      verifiedPhone: freezed == verifiedPhone
          ? _value.verifiedPhone
          : verifiedPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      acceptTerms: freezed == acceptTerms
          ? _value.acceptTerms
          : acceptTerms // ignore: cast_nullable_to_non_nullable
              as String?,
      acceptMarketingOffers: freezed == acceptMarketingOffers
          ? _value.acceptMarketingOffers
          : acceptMarketingOffers // ignore: cast_nullable_to_non_nullable
              as String?,
      isPermanent: freezed == isPermanent
          ? _value.isPermanent
          : isPermanent // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewed: freezed == reviewed
          ? _value.reviewed
          : reviewed // ignore: cast_nullable_to_non_nullable
              as String?,
      featured: freezed == featured
          ? _value.featured
          : featured // ignore: cast_nullable_to_non_nullable
              as String?,
      archived: freezed == archived
          ? _value.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as String?,
      archivedAt: freezed == archivedAt
          ? _value.archivedAt
          : archivedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      archivedManually: freezed == archivedManually
          ? _value.archivedManually
          : archivedManually // ignore: cast_nullable_to_non_nullable
              as String?,
      deletionMailSentAt: freezed == deletionMailSentAt
          ? _value.deletionMailSentAt
          : deletionMailSentAt // ignore: cast_nullable_to_non_nullable
              as String?,
      fbProfile: freezed == fbProfile
          ? _value.fbProfile
          : fbProfile // ignore: cast_nullable_to_non_nullable
              as String?,
      partner: freezed == partner
          ? _value.partner
          : partner // ignore: cast_nullable_to_non_nullable
              as String?,
      discountedPrice: freezed == discountedPrice
          ? _value.discountedPrice
          : discountedPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      trending: freezed == trending
          ? _value.trending
          : trending // ignore: cast_nullable_to_non_nullable
              as String?,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as String?,
      minOrder: freezed == minOrder
          ? _value.minOrder
          : minOrder // ignore: cast_nullable_to_non_nullable
              as String?,
      sampPrice: freezed == sampPrice
          ? _value.sampPrice
          : sampPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      textOne: freezed == textOne
          ? _value.textOne
          : textOne // ignore: cast_nullable_to_non_nullable
              as String?,
      textTwo: freezed == textTwo
          ? _value.textTwo
          : textTwo // ignore: cast_nullable_to_non_nullable
              as String?,
      avaTo: freezed == avaTo
          ? _value.avaTo
          : avaTo // ignore: cast_nullable_to_non_nullable
              as String?,
      branded: freezed == branded
          ? _value.branded
          : branded // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      avgRating: freezed == avgRating
          ? _value.avgRating
          : avgRating // ignore: cast_nullable_to_non_nullable
              as int?,
      savedByLoggedUser: freezed == savedByLoggedUser
          ? _value._savedByLoggedUser
          : savedByLoggedUser // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductDataImpl implements _ProductData {
  const _$ProductDataImpl(
      {required this.id,
      @JsonKey(name: 'country_code') required this.countryCode,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'category_id') required this.categoryId,
      @JsonKey(name: 'post_type_id') required this.postTypeId,
      required this.title,
      required this.description,
      this.tags,
      required this.price,
      this.negotiable,
      @JsonKey(name: 'contact_name') required this.contactName,
      required this.email,
      required this.phone,
      @JsonKey(name: 'phone_hidden') this.phoneHidden,
      this.address,
      @JsonKey(name: 'city_id') required this.cityId,
      required this.lon,
      required this.lat,
      @JsonKey(name: 'ip_addr') this.ipAddr,
      this.length,
      this.width,
      this.weight,
      this.height,
      required this.pickup,
      required this.longitude,
      required this.latitude,
      @JsonKey(name: 'hyper_del') this.hyperDel,
      @JsonKey(name: 'seller_del') this.sellerDel,
      required this.visits,
      @JsonKey(name: 'email_token') this.emailToken,
      @JsonKey(name: 'phone_token') this.phoneToken,
      @JsonKey(name: 'tmp_token') required this.tmpToken,
      @JsonKey(name: 'verified_email') required this.verifiedEmail,
      @JsonKey(name: 'verified_phone') required this.verifiedPhone,
      @JsonKey(name: 'accept_terms') required this.acceptTerms,
      @JsonKey(name: 'accept_marketing_offers')
      required this.acceptMarketingOffers,
      @JsonKey(name: 'is_permanent') required this.isPermanent,
      required this.reviewed,
      required this.featured,
      required this.archived,
      @JsonKey(name: 'archived_at') this.archivedAt,
      @JsonKey(name: 'archived_manually') required this.archivedManually,
      @JsonKey(name: 'deletion_mail_sent_at') this.deletionMailSentAt,
      @JsonKey(name: 'fb_profile') this.fbProfile,
      this.partner,
      @JsonKey(name: 'discounted_price') this.discountedPrice,
      this.trending,
      this.stock,
      @JsonKey(name: 'min_order') this.minOrder,
      @JsonKey(name: 'samp_price') this.sampPrice,
      @JsonKey(name: 'text_one') this.textOne,
      @JsonKey(name: 'text_two') this.textTwo,
      @JsonKey(name: 'ava_to') this.avaTo,
      @JsonKey(name: 'branded') required this.branded,
      @JsonKey(name: 'deleted_at') this.deletedAt,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      required this.image,
      @JsonKey(name: 'avg_rating') this.avgRating,
      @JsonKey(name: 'savedByLoggedUser')
      final List<dynamic>? savedByLoggedUser})
      : _savedByLoggedUser = savedByLoggedUser;

  factory _$ProductDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductDataImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'country_code')
  final String? countryCode;
  @override
  @JsonKey(name: 'user_id')
  final String? userId;
  @override
  @JsonKey(name: 'category_id')
  final String? categoryId;
  @override
  @JsonKey(name: 'post_type_id')
  final String? postTypeId;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? tags;
  @override
  final String? price;
  @override
  final String? negotiable;
  @override
  @JsonKey(name: 'contact_name')
  final String? contactName;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  @JsonKey(name: 'phone_hidden')
  final String? phoneHidden;
  @override
  final String? address;
  @override
  @JsonKey(name: 'city_id')
  final String? cityId;
  @override
  final String? lon;
  @override
  final String? lat;
  @override
  @JsonKey(name: 'ip_addr')
  final String? ipAddr;
  @override
  final String? length;
  @override
  final String? width;
  @override
  final String? weight;
  @override
  final String? height;
  @override
  final String? pickup;
  @override
  final String? longitude;
  @override
  final String? latitude;
  @override
  @JsonKey(name: 'hyper_del')
  final String? hyperDel;
  @override
  @JsonKey(name: 'seller_del')
  final String? sellerDel;
  @override
  final String? visits;
  @override
  @JsonKey(name: 'email_token')
  final String? emailToken;
  @override
  @JsonKey(name: 'phone_token')
  final String? phoneToken;
  @override
  @JsonKey(name: 'tmp_token')
  final String? tmpToken;
  @override
  @JsonKey(name: 'verified_email')
  final String? verifiedEmail;
  @override
  @JsonKey(name: 'verified_phone')
  final String? verifiedPhone;
  @override
  @JsonKey(name: 'accept_terms')
  final String? acceptTerms;
  @override
  @JsonKey(name: 'accept_marketing_offers')
  final String? acceptMarketingOffers;
  @override
  @JsonKey(name: 'is_permanent')
  final String? isPermanent;
  @override
  final String? reviewed;
  @override
  final String? featured;
  @override
  final String? archived;
  @override
  @JsonKey(name: 'archived_at')
  final String? archivedAt;
  @override
  @JsonKey(name: 'archived_manually')
  final String? archivedManually;
  @override
  @JsonKey(name: 'deletion_mail_sent_at')
  final String? deletionMailSentAt;
  @override
  @JsonKey(name: 'fb_profile')
  final String? fbProfile;
  @override
  final String? partner;
  @override
  @JsonKey(name: 'discounted_price')
  final String? discountedPrice;
  @override
  final String? trending;
  @override
  final String? stock;
  @override
  @JsonKey(name: 'min_order')
  final String? minOrder;
  @override
  @JsonKey(name: 'samp_price')
  final String? sampPrice;
  @override
  @JsonKey(name: 'text_one')
  final String? textOne;
  @override
  @JsonKey(name: 'text_two')
  final String? textTwo;
  @override
  @JsonKey(name: 'ava_to')
  final String? avaTo;
  @override
  @JsonKey(name: 'branded')
  final String? branded;
  @override
  @JsonKey(name: 'deleted_at')
  final String? deletedAt;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  final String? image;
  @override
  @JsonKey(name: 'avg_rating')
  final int? avgRating;
  final List<dynamic>? _savedByLoggedUser;
  @override
  @JsonKey(name: 'savedByLoggedUser')
  List<dynamic>? get savedByLoggedUser {
    final value = _savedByLoggedUser;
    if (value == null) return null;
    if (_savedByLoggedUser is EqualUnmodifiableListView)
      return _savedByLoggedUser;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProductData(id: $id, countryCode: $countryCode, userId: $userId, categoryId: $categoryId, postTypeId: $postTypeId, title: $title, description: $description, tags: $tags, price: $price, negotiable: $negotiable, contactName: $contactName, email: $email, phone: $phone, phoneHidden: $phoneHidden, address: $address, cityId: $cityId, lon: $lon, lat: $lat, ipAddr: $ipAddr, length: $length, width: $width, weight: $weight, height: $height, pickup: $pickup, longitude: $longitude, latitude: $latitude, hyperDel: $hyperDel, sellerDel: $sellerDel, visits: $visits, emailToken: $emailToken, phoneToken: $phoneToken, tmpToken: $tmpToken, verifiedEmail: $verifiedEmail, verifiedPhone: $verifiedPhone, acceptTerms: $acceptTerms, acceptMarketingOffers: $acceptMarketingOffers, isPermanent: $isPermanent, reviewed: $reviewed, featured: $featured, archived: $archived, archivedAt: $archivedAt, archivedManually: $archivedManually, deletionMailSentAt: $deletionMailSentAt, fbProfile: $fbProfile, partner: $partner, discountedPrice: $discountedPrice, trending: $trending, stock: $stock, minOrder: $minOrder, sampPrice: $sampPrice, textOne: $textOne, textTwo: $textTwo, avaTo: $avaTo, branded: $branded, deletedAt: $deletedAt, createdAt: $createdAt, updatedAt: $updatedAt, image: $image, avgRating: $avgRating, savedByLoggedUser: $savedByLoggedUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.postTypeId, postTypeId) ||
                other.postTypeId == postTypeId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.tags, tags) || other.tags == tags) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.negotiable, negotiable) ||
                other.negotiable == negotiable) &&
            (identical(other.contactName, contactName) ||
                other.contactName == contactName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.phoneHidden, phoneHidden) ||
                other.phoneHidden == phoneHidden) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.cityId, cityId) || other.cityId == cityId) &&
            (identical(other.lon, lon) || other.lon == lon) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.ipAddr, ipAddr) || other.ipAddr == ipAddr) &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.pickup, pickup) || other.pickup == pickup) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.hyperDel, hyperDel) ||
                other.hyperDel == hyperDel) &&
            (identical(other.sellerDel, sellerDel) ||
                other.sellerDel == sellerDel) &&
            (identical(other.visits, visits) || other.visits == visits) &&
            (identical(other.emailToken, emailToken) ||
                other.emailToken == emailToken) &&
            (identical(other.phoneToken, phoneToken) ||
                other.phoneToken == phoneToken) &&
            (identical(other.tmpToken, tmpToken) ||
                other.tmpToken == tmpToken) &&
            (identical(other.verifiedEmail, verifiedEmail) ||
                other.verifiedEmail == verifiedEmail) &&
            (identical(other.verifiedPhone, verifiedPhone) ||
                other.verifiedPhone == verifiedPhone) &&
            (identical(other.acceptTerms, acceptTerms) ||
                other.acceptTerms == acceptTerms) &&
            (identical(other.acceptMarketingOffers, acceptMarketingOffers) ||
                other.acceptMarketingOffers == acceptMarketingOffers) &&
            (identical(other.isPermanent, isPermanent) ||
                other.isPermanent == isPermanent) &&
            (identical(other.reviewed, reviewed) ||
                other.reviewed == reviewed) &&
            (identical(other.featured, featured) ||
                other.featured == featured) &&
            (identical(other.archived, archived) ||
                other.archived == archived) &&
            (identical(other.archivedAt, archivedAt) ||
                other.archivedAt == archivedAt) &&
            (identical(other.archivedManually, archivedManually) ||
                other.archivedManually == archivedManually) &&
            (identical(other.deletionMailSentAt, deletionMailSentAt) ||
                other.deletionMailSentAt == deletionMailSentAt) &&
            (identical(other.fbProfile, fbProfile) ||
                other.fbProfile == fbProfile) &&
            (identical(other.partner, partner) || other.partner == partner) &&
            (identical(other.discountedPrice, discountedPrice) ||
                other.discountedPrice == discountedPrice) &&
            (identical(other.trending, trending) ||
                other.trending == trending) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.minOrder, minOrder) ||
                other.minOrder == minOrder) &&
            (identical(other.sampPrice, sampPrice) ||
                other.sampPrice == sampPrice) &&
            (identical(other.textOne, textOne) || other.textOne == textOne) &&
            (identical(other.textTwo, textTwo) || other.textTwo == textTwo) &&
            (identical(other.avaTo, avaTo) || other.avaTo == avaTo) &&
            (identical(other.branded, branded) || other.branded == branded) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.avgRating, avgRating) ||
                other.avgRating == avgRating) &&
            const DeepCollectionEquality()
                .equals(other._savedByLoggedUser, _savedByLoggedUser));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        countryCode,
        userId,
        categoryId,
        postTypeId,
        title,
        description,
        tags,
        price,
        negotiable,
        contactName,
        email,
        phone,
        phoneHidden,
        address,
        cityId,
        lon,
        lat,
        ipAddr,
        length,
        width,
        weight,
        height,
        pickup,
        longitude,
        latitude,
        hyperDel,
        sellerDel,
        visits,
        emailToken,
        phoneToken,
        tmpToken,
        verifiedEmail,
        verifiedPhone,
        acceptTerms,
        acceptMarketingOffers,
        isPermanent,
        reviewed,
        featured,
        archived,
        archivedAt,
        archivedManually,
        deletionMailSentAt,
        fbProfile,
        partner,
        discountedPrice,
        trending,
        stock,
        minOrder,
        sampPrice,
        textOne,
        textTwo,
        avaTo,
        branded,
        deletedAt,
        createdAt,
        updatedAt,
        image,
        avgRating,
        const DeepCollectionEquality().hash(_savedByLoggedUser)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDataImplCopyWith<_$ProductDataImpl> get copyWith =>
      __$$ProductDataImplCopyWithImpl<_$ProductDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductDataImplToJson(
      this,
    );
  }
}

abstract class _ProductData implements ProductData {
  const factory _ProductData(
      {required final String? id,
      @JsonKey(name: 'country_code') required final String? countryCode,
      @JsonKey(name: 'user_id') required final String? userId,
      @JsonKey(name: 'category_id') required final String? categoryId,
      @JsonKey(name: 'post_type_id') required final String? postTypeId,
      required final String? title,
      required final String? description,
      final String? tags,
      required final String? price,
      final String? negotiable,
      @JsonKey(name: 'contact_name') required final String? contactName,
      required final String? email,
      required final String? phone,
      @JsonKey(name: 'phone_hidden') final String? phoneHidden,
      final String? address,
      @JsonKey(name: 'city_id') required final String? cityId,
      required final String? lon,
      required final String? lat,
      @JsonKey(name: 'ip_addr') final String? ipAddr,
      final String? length,
      final String? width,
      final String? weight,
      final String? height,
      required final String? pickup,
      required final String? longitude,
      required final String? latitude,
      @JsonKey(name: 'hyper_del') final String? hyperDel,
      @JsonKey(name: 'seller_del') final String? sellerDel,
      required final String? visits,
      @JsonKey(name: 'email_token') final String? emailToken,
      @JsonKey(name: 'phone_token') final String? phoneToken,
      @JsonKey(name: 'tmp_token') required final String? tmpToken,
      @JsonKey(name: 'verified_email') required final String? verifiedEmail,
      @JsonKey(name: 'verified_phone') required final String? verifiedPhone,
      @JsonKey(name: 'accept_terms') required final String? acceptTerms,
      @JsonKey(name: 'accept_marketing_offers')
      required final String? acceptMarketingOffers,
      @JsonKey(name: 'is_permanent') required final String? isPermanent,
      required final String? reviewed,
      required final String? featured,
      required final String? archived,
      @JsonKey(name: 'archived_at') final String? archivedAt,
      @JsonKey(name: 'archived_manually')
      required final String? archivedManually,
      @JsonKey(name: 'deletion_mail_sent_at') final String? deletionMailSentAt,
      @JsonKey(name: 'fb_profile') final String? fbProfile,
      final String? partner,
      @JsonKey(name: 'discounted_price') final String? discountedPrice,
      final String? trending,
      final String? stock,
      @JsonKey(name: 'min_order') final String? minOrder,
      @JsonKey(name: 'samp_price') final String? sampPrice,
      @JsonKey(name: 'text_one') final String? textOne,
      @JsonKey(name: 'text_two') final String? textTwo,
      @JsonKey(name: 'ava_to') final String? avaTo,
      @JsonKey(name: 'branded') required final String? branded,
      @JsonKey(name: 'deleted_at') final String? deletedAt,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'updated_at') final String? updatedAt,
      required final String? image,
      @JsonKey(name: 'avg_rating') final int? avgRating,
      @JsonKey(name: 'savedByLoggedUser')
      final List<dynamic>? savedByLoggedUser}) = _$ProductDataImpl;

  factory _ProductData.fromJson(Map<String, dynamic> json) =
      _$ProductDataImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'country_code')
  String? get countryCode;
  @override
  @JsonKey(name: 'user_id')
  String? get userId;
  @override
  @JsonKey(name: 'category_id')
  String? get categoryId;
  @override
  @JsonKey(name: 'post_type_id')
  String? get postTypeId;
  @override
  String? get title;
  @override
  String? get description;
  @override
  String? get tags;
  @override
  String? get price;
  @override
  String? get negotiable;
  @override
  @JsonKey(name: 'contact_name')
  String? get contactName;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  @JsonKey(name: 'phone_hidden')
  String? get phoneHidden;
  @override
  String? get address;
  @override
  @JsonKey(name: 'city_id')
  String? get cityId;
  @override
  String? get lon;
  @override
  String? get lat;
  @override
  @JsonKey(name: 'ip_addr')
  String? get ipAddr;
  @override
  String? get length;
  @override
  String? get width;
  @override
  String? get weight;
  @override
  String? get height;
  @override
  String? get pickup;
  @override
  String? get longitude;
  @override
  String? get latitude;
  @override
  @JsonKey(name: 'hyper_del')
  String? get hyperDel;
  @override
  @JsonKey(name: 'seller_del')
  String? get sellerDel;
  @override
  String? get visits;
  @override
  @JsonKey(name: 'email_token')
  String? get emailToken;
  @override
  @JsonKey(name: 'phone_token')
  String? get phoneToken;
  @override
  @JsonKey(name: 'tmp_token')
  String? get tmpToken;
  @override
  @JsonKey(name: 'verified_email')
  String? get verifiedEmail;
  @override
  @JsonKey(name: 'verified_phone')
  String? get verifiedPhone;
  @override
  @JsonKey(name: 'accept_terms')
  String? get acceptTerms;
  @override
  @JsonKey(name: 'accept_marketing_offers')
  String? get acceptMarketingOffers;
  @override
  @JsonKey(name: 'is_permanent')
  String? get isPermanent;
  @override
  String? get reviewed;
  @override
  String? get featured;
  @override
  String? get archived;
  @override
  @JsonKey(name: 'archived_at')
  String? get archivedAt;
  @override
  @JsonKey(name: 'archived_manually')
  String? get archivedManually;
  @override
  @JsonKey(name: 'deletion_mail_sent_at')
  String? get deletionMailSentAt;
  @override
  @JsonKey(name: 'fb_profile')
  String? get fbProfile;
  @override
  String? get partner;
  @override
  @JsonKey(name: 'discounted_price')
  String? get discountedPrice;
  @override
  String? get trending;
  @override
  String? get stock;
  @override
  @JsonKey(name: 'min_order')
  String? get minOrder;
  @override
  @JsonKey(name: 'samp_price')
  String? get sampPrice;
  @override
  @JsonKey(name: 'text_one')
  String? get textOne;
  @override
  @JsonKey(name: 'text_two')
  String? get textTwo;
  @override
  @JsonKey(name: 'ava_to')
  String? get avaTo;
  @override
  @JsonKey(name: 'branded')
  String? get branded;
  @override
  @JsonKey(name: 'deleted_at')
  String? get deletedAt;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  String? get image;
  @override
  @JsonKey(name: 'avg_rating')
  int? get avgRating;
  @override
  @JsonKey(name: 'savedByLoggedUser')
  List<dynamic>? get savedByLoggedUser;
  @override
  @JsonKey(ignore: true)
  _$$ProductDataImplCopyWith<_$ProductDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PageLink _$PageLinkFromJson(Map<String, dynamic> json) {
  return _PageLink.fromJson(json);
}

/// @nodoc
mixin _$PageLink {
  String? get url => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PageLinkCopyWith<PageLink> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageLinkCopyWith<$Res> {
  factory $PageLinkCopyWith(PageLink value, $Res Function(PageLink) then) =
      _$PageLinkCopyWithImpl<$Res, PageLink>;
  @useResult
  $Res call({String? url, String? label, bool? active});
}

/// @nodoc
class _$PageLinkCopyWithImpl<$Res, $Val extends PageLink>
    implements $PageLinkCopyWith<$Res> {
  _$PageLinkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? label = freezed,
    Object? active = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PageLinkImplCopyWith<$Res>
    implements $PageLinkCopyWith<$Res> {
  factory _$$PageLinkImplCopyWith(
          _$PageLinkImpl value, $Res Function(_$PageLinkImpl) then) =
      __$$PageLinkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? url, String? label, bool? active});
}

/// @nodoc
class __$$PageLinkImplCopyWithImpl<$Res>
    extends _$PageLinkCopyWithImpl<$Res, _$PageLinkImpl>
    implements _$$PageLinkImplCopyWith<$Res> {
  __$$PageLinkImplCopyWithImpl(
      _$PageLinkImpl _value, $Res Function(_$PageLinkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? label = freezed,
    Object? active = freezed,
  }) {
    return _then(_$PageLinkImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PageLinkImpl implements _PageLink {
  const _$PageLinkImpl({this.url, required this.label, required this.active});

  factory _$PageLinkImpl.fromJson(Map<String, dynamic> json) =>
      _$$PageLinkImplFromJson(json);

  @override
  final String? url;
  @override
  final String? label;
  @override
  final bool? active;

  @override
  String toString() {
    return 'PageLink(url: $url, label: $label, active: $active)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageLinkImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.active, active) || other.active == active));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, label, active);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PageLinkImplCopyWith<_$PageLinkImpl> get copyWith =>
      __$$PageLinkImplCopyWithImpl<_$PageLinkImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PageLinkImplToJson(
      this,
    );
  }
}

abstract class _PageLink implements PageLink {
  const factory _PageLink(
      {final String? url,
      required final String? label,
      required final bool? active}) = _$PageLinkImpl;

  factory _PageLink.fromJson(Map<String, dynamic> json) =
      _$PageLinkImpl.fromJson;

  @override
  String? get url;
  @override
  String? get label;
  @override
  bool? get active;
  @override
  @JsonKey(ignore: true)
  _$$PageLinkImplCopyWith<_$PageLinkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
