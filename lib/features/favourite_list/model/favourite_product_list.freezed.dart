// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favourite_product_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FavouriteProductList _$FavouriteProductListFromJson(Map<String, dynamic> json) {
  return _FavouriteProductList.fromJson(json);
}

/// @nodoc
mixin _$FavouriteProductList {
  Data? get data => throw _privateConstructorUsedError;
  String? get msg => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavouriteProductListCopyWith<FavouriteProductList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouriteProductListCopyWith<$Res> {
  factory $FavouriteProductListCopyWith(FavouriteProductList value,
          $Res Function(FavouriteProductList) then) =
      _$FavouriteProductListCopyWithImpl<$Res, FavouriteProductList>;
  @useResult
  $Res call({Data? data, String? msg});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$FavouriteProductListCopyWithImpl<$Res,
        $Val extends FavouriteProductList>
    implements $FavouriteProductListCopyWith<$Res> {
  _$FavouriteProductListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? msg = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FavouriteProductListImplCopyWith<$Res>
    implements $FavouriteProductListCopyWith<$Res> {
  factory _$$FavouriteProductListImplCopyWith(_$FavouriteProductListImpl value,
          $Res Function(_$FavouriteProductListImpl) then) =
      __$$FavouriteProductListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Data? data, String? msg});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$FavouriteProductListImplCopyWithImpl<$Res>
    extends _$FavouriteProductListCopyWithImpl<$Res, _$FavouriteProductListImpl>
    implements _$$FavouriteProductListImplCopyWith<$Res> {
  __$$FavouriteProductListImplCopyWithImpl(_$FavouriteProductListImpl _value,
      $Res Function(_$FavouriteProductListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? msg = freezed,
  }) {
    return _then(_$FavouriteProductListImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FavouriteProductListImpl implements _FavouriteProductList {
  const _$FavouriteProductListImpl({required this.data, required this.msg});

  factory _$FavouriteProductListImpl.fromJson(Map<String, dynamic> json) =>
      _$$FavouriteProductListImplFromJson(json);

  @override
  final Data? data;
  @override
  final String? msg;

  @override
  String toString() {
    return 'FavouriteProductList(data: $data, msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavouriteProductListImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavouriteProductListImplCopyWith<_$FavouriteProductListImpl>
      get copyWith =>
          __$$FavouriteProductListImplCopyWithImpl<_$FavouriteProductListImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FavouriteProductListImplToJson(
      this,
    );
  }
}

abstract class _FavouriteProductList implements FavouriteProductList {
  const factory _FavouriteProductList(
      {required final Data? data,
      required final String? msg}) = _$FavouriteProductListImpl;

  factory _FavouriteProductList.fromJson(Map<String, dynamic> json) =
      _$FavouriteProductListImpl.fromJson;

  @override
  Data? get data;
  @override
  String? get msg;
  @override
  @JsonKey(ignore: true)
  _$$FavouriteProductListImplCopyWith<_$FavouriteProductListImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: "saved_products")
  SavedProducts? get savedProducts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call({@JsonKey(name: "saved_products") SavedProducts? savedProducts});

  $SavedProductsCopyWith<$Res>? get savedProducts;
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? savedProducts = freezed,
  }) {
    return _then(_value.copyWith(
      savedProducts: freezed == savedProducts
          ? _value.savedProducts
          : savedProducts // ignore: cast_nullable_to_non_nullable
              as SavedProducts?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SavedProductsCopyWith<$Res>? get savedProducts {
    if (_value.savedProducts == null) {
      return null;
    }

    return $SavedProductsCopyWith<$Res>(_value.savedProducts!, (value) {
      return _then(_value.copyWith(savedProducts: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "saved_products") SavedProducts? savedProducts});

  @override
  $SavedProductsCopyWith<$Res>? get savedProducts;
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? savedProducts = freezed,
  }) {
    return _then(_$DataImpl(
      savedProducts: freezed == savedProducts
          ? _value.savedProducts
          : savedProducts // ignore: cast_nullable_to_non_nullable
              as SavedProducts?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: "saved_products") required this.savedProducts});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: "saved_products")
  final SavedProducts? savedProducts;

  @override
  String toString() {
    return 'Data(savedProducts: $savedProducts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.savedProducts, savedProducts) ||
                other.savedProducts == savedProducts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, savedProducts);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {@JsonKey(name: "saved_products")
      required final SavedProducts? savedProducts}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "saved_products")
  SavedProducts? get savedProducts;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SavedProducts _$SavedProductsFromJson(Map<String, dynamic> json) {
  return _SavedProducts.fromJson(json);
}

/// @nodoc
mixin _$SavedProducts {
  @JsonKey(name: "current_page")
  int? get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<Product>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SavedProductsCopyWith<SavedProducts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavedProductsCopyWith<$Res> {
  factory $SavedProductsCopyWith(
          SavedProducts value, $Res Function(SavedProducts) then) =
      _$SavedProductsCopyWithImpl<$Res, SavedProducts>;
  @useResult
  $Res call(
      {@JsonKey(name: "current_page") int? currentPage,
      @JsonKey(name: "data") List<Product>? data});
}

/// @nodoc
class _$SavedProductsCopyWithImpl<$Res, $Val extends SavedProducts>
    implements $SavedProductsCopyWith<$Res> {
  _$SavedProductsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SavedProductsImplCopyWith<$Res>
    implements $SavedProductsCopyWith<$Res> {
  factory _$$SavedProductsImplCopyWith(
          _$SavedProductsImpl value, $Res Function(_$SavedProductsImpl) then) =
      __$$SavedProductsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "current_page") int? currentPage,
      @JsonKey(name: "data") List<Product>? data});
}

/// @nodoc
class __$$SavedProductsImplCopyWithImpl<$Res>
    extends _$SavedProductsCopyWithImpl<$Res, _$SavedProductsImpl>
    implements _$$SavedProductsImplCopyWith<$Res> {
  __$$SavedProductsImplCopyWithImpl(
      _$SavedProductsImpl _value, $Res Function(_$SavedProductsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? data = freezed,
  }) {
    return _then(_$SavedProductsImpl(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SavedProductsImpl implements _SavedProducts {
  const _$SavedProductsImpl(
      {@JsonKey(name: "current_page") required this.currentPage,
      @JsonKey(name: "data") required final List<Product>? data})
      : _data = data;

  factory _$SavedProductsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SavedProductsImplFromJson(json);

  @override
  @JsonKey(name: "current_page")
  final int? currentPage;
  final List<Product>? _data;
  @override
  @JsonKey(name: "data")
  List<Product>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SavedProducts(currentPage: $currentPage, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavedProductsImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, currentPage, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SavedProductsImplCopyWith<_$SavedProductsImpl> get copyWith =>
      __$$SavedProductsImplCopyWithImpl<_$SavedProductsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SavedProductsImplToJson(
      this,
    );
  }
}

abstract class _SavedProducts implements SavedProducts {
  const factory _SavedProducts(
          {@JsonKey(name: "current_page") required final int? currentPage,
          @JsonKey(name: "data") required final List<Product>? data}) =
      _$SavedProductsImpl;

  factory _SavedProducts.fromJson(Map<String, dynamic> json) =
      _$SavedProductsImpl.fromJson;

  @override
  @JsonKey(name: "current_page")
  int? get currentPage;
  @override
  @JsonKey(name: "data")
  List<Product>? get data;
  @override
  @JsonKey(ignore: true)
  _$$SavedProductsImplCopyWith<_$SavedProductsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "country_code")
  String? get countryCode => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "category_id")
  String? get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "post_type_id")
  String? get postTypeId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description =>
      throw _privateConstructorUsedError; // required String? tags,
  String? get price =>
      throw _privateConstructorUsedError; // required String? negotiable,
// @JsonKey(name: "contact_name") required String? contactName,
// required String? email,
// required String? phone,
// @JsonKey(name: "phone_hidden") required String? phoneHidden,
// required String? address,
// @JsonKey(name: "city_id") required String? cityId,
// required String? lon,
// required String? lat,
// @JsonKey(name: "ip_addr") required String? ipAddr,
// required String? length,
// required String? width,
// required String? weight,
// required String? height,
// required String? pickup,
// required String? longitude,
// required String? latitude,
// @JsonKey(name: "hyper_del") required String? hyperDel,
// @JsonKey(name: "seller_del") required String? sellerDel,
// required String? visits,
// @JsonKey(name: "email_token") required String? emailToken,
// @JsonKey(name: "phone_token") required String? phoneToken,
// @JsonKey(name: "tmp_token") required String? tmpToken,
// @JsonKey(name: "verified_email") required String? verifiedEmail,
// @JsonKey(name: "verified_phone") required String? verifiedPhone,
// @JsonKey(name: "accept_terms") required String? acceptTerms,
// @JsonKey(name: "accept_marketing_offers")
// required String? acceptMarketingOffers,
// @JsonKey(name: "is_permanent") required String? isPermanent,
// required String? reviewed,
// required String? featured,
// required String? archived,
// @JsonKey(name: "archived_at") required String? archivedAt,
// @JsonKey(name: "archived_manually") required String? archivedManually,
// @JsonKey(name: "deletion_mail_sent_at") required String? deletionMailSentAt,
// @JsonKey(name: "fb_profile") required String? fbProfile,
// required String? partner,
  @JsonKey(name: "discounted_price")
  String? get discountedPrice =>
      throw _privateConstructorUsedError; // required String? trending,
// required String? stock,
// @JsonKey(name: "min_order") required String? minOrder,
// @JsonKey(name: "samp_price") required String? sampPrice,
// @JsonKey(name: "text_one") required String? textOne,
// @JsonKey(name: "text_two") required String? textTwo,
// @JsonKey(name: "ava_to") required String? avaTo,
// required String? branded,
// @JsonKey(name: "deleted_at") required String? deletedAt,
// @JsonKey(name: "created_at") required String? createdAt,
// @JsonKey(name: "updated_at") required String? updatedAt,
  String? get image =>
      throw _privateConstructorUsedError; // @JsonKey(name: "avg_rating") required String? avgRating,
  List<SavedByLoggedUser>? get savedByLoggedUser =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: "country_code") String? countryCode,
      @JsonKey(name: "user_id") String? userId,
      @JsonKey(name: "category_id") String? categoryId,
      @JsonKey(name: "post_type_id") String? postTypeId,
      String? title,
      String? description,
      String? price,
      @JsonKey(name: "discounted_price") String? discountedPrice,
      String? image,
      List<SavedByLoggedUser>? savedByLoggedUser});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

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
    Object? price = freezed,
    Object? discountedPrice = freezed,
    Object? image = freezed,
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
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      discountedPrice: freezed == discountedPrice
          ? _value.discountedPrice
          : discountedPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      savedByLoggedUser: freezed == savedByLoggedUser
          ? _value.savedByLoggedUser
          : savedByLoggedUser // ignore: cast_nullable_to_non_nullable
              as List<SavedByLoggedUser>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: "country_code") String? countryCode,
      @JsonKey(name: "user_id") String? userId,
      @JsonKey(name: "category_id") String? categoryId,
      @JsonKey(name: "post_type_id") String? postTypeId,
      String? title,
      String? description,
      String? price,
      @JsonKey(name: "discounted_price") String? discountedPrice,
      String? image,
      List<SavedByLoggedUser>? savedByLoggedUser});
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
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
    Object? price = freezed,
    Object? discountedPrice = freezed,
    Object? image = freezed,
    Object? savedByLoggedUser = freezed,
  }) {
    return _then(_$ProductImpl(
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
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      discountedPrice: freezed == discountedPrice
          ? _value.discountedPrice
          : discountedPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      savedByLoggedUser: freezed == savedByLoggedUser
          ? _value._savedByLoggedUser
          : savedByLoggedUser // ignore: cast_nullable_to_non_nullable
              as List<SavedByLoggedUser>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImpl implements _Product {
  const _$ProductImpl(
      {required this.id,
      @JsonKey(name: "country_code") required this.countryCode,
      @JsonKey(name: "user_id") required this.userId,
      @JsonKey(name: "category_id") required this.categoryId,
      @JsonKey(name: "post_type_id") required this.postTypeId,
      required this.title,
      required this.description,
      required this.price,
      @JsonKey(name: "discounted_price") required this.discountedPrice,
      required this.image,
      required final List<SavedByLoggedUser>? savedByLoggedUser})
      : _savedByLoggedUser = savedByLoggedUser;

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: "country_code")
  final String? countryCode;
  @override
  @JsonKey(name: "user_id")
  final String? userId;
  @override
  @JsonKey(name: "category_id")
  final String? categoryId;
  @override
  @JsonKey(name: "post_type_id")
  final String? postTypeId;
  @override
  final String? title;
  @override
  final String? description;
// required String? tags,
  @override
  final String? price;
// required String? negotiable,
// @JsonKey(name: "contact_name") required String? contactName,
// required String? email,
// required String? phone,
// @JsonKey(name: "phone_hidden") required String? phoneHidden,
// required String? address,
// @JsonKey(name: "city_id") required String? cityId,
// required String? lon,
// required String? lat,
// @JsonKey(name: "ip_addr") required String? ipAddr,
// required String? length,
// required String? width,
// required String? weight,
// required String? height,
// required String? pickup,
// required String? longitude,
// required String? latitude,
// @JsonKey(name: "hyper_del") required String? hyperDel,
// @JsonKey(name: "seller_del") required String? sellerDel,
// required String? visits,
// @JsonKey(name: "email_token") required String? emailToken,
// @JsonKey(name: "phone_token") required String? phoneToken,
// @JsonKey(name: "tmp_token") required String? tmpToken,
// @JsonKey(name: "verified_email") required String? verifiedEmail,
// @JsonKey(name: "verified_phone") required String? verifiedPhone,
// @JsonKey(name: "accept_terms") required String? acceptTerms,
// @JsonKey(name: "accept_marketing_offers")
// required String? acceptMarketingOffers,
// @JsonKey(name: "is_permanent") required String? isPermanent,
// required String? reviewed,
// required String? featured,
// required String? archived,
// @JsonKey(name: "archived_at") required String? archivedAt,
// @JsonKey(name: "archived_manually") required String? archivedManually,
// @JsonKey(name: "deletion_mail_sent_at") required String? deletionMailSentAt,
// @JsonKey(name: "fb_profile") required String? fbProfile,
// required String? partner,
  @override
  @JsonKey(name: "discounted_price")
  final String? discountedPrice;
// required String? trending,
// required String? stock,
// @JsonKey(name: "min_order") required String? minOrder,
// @JsonKey(name: "samp_price") required String? sampPrice,
// @JsonKey(name: "text_one") required String? textOne,
// @JsonKey(name: "text_two") required String? textTwo,
// @JsonKey(name: "ava_to") required String? avaTo,
// required String? branded,
// @JsonKey(name: "deleted_at") required String? deletedAt,
// @JsonKey(name: "created_at") required String? createdAt,
// @JsonKey(name: "updated_at") required String? updatedAt,
  @override
  final String? image;
// @JsonKey(name: "avg_rating") required String? avgRating,
  final List<SavedByLoggedUser>? _savedByLoggedUser;
// @JsonKey(name: "avg_rating") required String? avgRating,
  @override
  List<SavedByLoggedUser>? get savedByLoggedUser {
    final value = _savedByLoggedUser;
    if (value == null) return null;
    if (_savedByLoggedUser is EqualUnmodifiableListView)
      return _savedByLoggedUser;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Product(id: $id, countryCode: $countryCode, userId: $userId, categoryId: $categoryId, postTypeId: $postTypeId, title: $title, description: $description, price: $price, discountedPrice: $discountedPrice, image: $image, savedByLoggedUser: $savedByLoggedUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
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
            (identical(other.price, price) || other.price == price) &&
            (identical(other.discountedPrice, discountedPrice) ||
                other.discountedPrice == discountedPrice) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality()
                .equals(other._savedByLoggedUser, _savedByLoggedUser));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      countryCode,
      userId,
      categoryId,
      postTypeId,
      title,
      description,
      price,
      discountedPrice,
      image,
      const DeepCollectionEquality().hash(_savedByLoggedUser));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImplToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  const factory _Product(
      {required final String? id,
      @JsonKey(name: "country_code") required final String? countryCode,
      @JsonKey(name: "user_id") required final String? userId,
      @JsonKey(name: "category_id") required final String? categoryId,
      @JsonKey(name: "post_type_id") required final String? postTypeId,
      required final String? title,
      required final String? description,
      required final String? price,
      @JsonKey(name: "discounted_price") required final String? discountedPrice,
      required final String? image,
      required final List<SavedByLoggedUser>?
          savedByLoggedUser}) = _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: "country_code")
  String? get countryCode;
  @override
  @JsonKey(name: "user_id")
  String? get userId;
  @override
  @JsonKey(name: "category_id")
  String? get categoryId;
  @override
  @JsonKey(name: "post_type_id")
  String? get postTypeId;
  @override
  String? get title;
  @override
  String? get description;
  @override // required String? tags,
  String? get price;
  @override // required String? negotiable,
// @JsonKey(name: "contact_name") required String? contactName,
// required String? email,
// required String? phone,
// @JsonKey(name: "phone_hidden") required String? phoneHidden,
// required String? address,
// @JsonKey(name: "city_id") required String? cityId,
// required String? lon,
// required String? lat,
// @JsonKey(name: "ip_addr") required String? ipAddr,
// required String? length,
// required String? width,
// required String? weight,
// required String? height,
// required String? pickup,
// required String? longitude,
// required String? latitude,
// @JsonKey(name: "hyper_del") required String? hyperDel,
// @JsonKey(name: "seller_del") required String? sellerDel,
// required String? visits,
// @JsonKey(name: "email_token") required String? emailToken,
// @JsonKey(name: "phone_token") required String? phoneToken,
// @JsonKey(name: "tmp_token") required String? tmpToken,
// @JsonKey(name: "verified_email") required String? verifiedEmail,
// @JsonKey(name: "verified_phone") required String? verifiedPhone,
// @JsonKey(name: "accept_terms") required String? acceptTerms,
// @JsonKey(name: "accept_marketing_offers")
// required String? acceptMarketingOffers,
// @JsonKey(name: "is_permanent") required String? isPermanent,
// required String? reviewed,
// required String? featured,
// required String? archived,
// @JsonKey(name: "archived_at") required String? archivedAt,
// @JsonKey(name: "archived_manually") required String? archivedManually,
// @JsonKey(name: "deletion_mail_sent_at") required String? deletionMailSentAt,
// @JsonKey(name: "fb_profile") required String? fbProfile,
// required String? partner,
  @JsonKey(name: "discounted_price")
  String? get discountedPrice;
  @override // required String? trending,
// required String? stock,
// @JsonKey(name: "min_order") required String? minOrder,
// @JsonKey(name: "samp_price") required String? sampPrice,
// @JsonKey(name: "text_one") required String? textOne,
// @JsonKey(name: "text_two") required String? textTwo,
// @JsonKey(name: "ava_to") required String? avaTo,
// required String? branded,
// @JsonKey(name: "deleted_at") required String? deletedAt,
// @JsonKey(name: "created_at") required String? createdAt,
// @JsonKey(name: "updated_at") required String? updatedAt,
  String? get image;
  @override // @JsonKey(name: "avg_rating") required String? avgRating,
  List<SavedByLoggedUser>? get savedByLoggedUser;
  @override
  @JsonKey(ignore: true)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SavedByLoggedUser _$SavedByLoggedUserFromJson(Map<String, dynamic> json) {
  return _SavedByLoggedUser.fromJson(json);
}

/// @nodoc
mixin _$SavedByLoggedUser {
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SavedByLoggedUserCopyWith<SavedByLoggedUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavedByLoggedUserCopyWith<$Res> {
  factory $SavedByLoggedUserCopyWith(
          SavedByLoggedUser value, $Res Function(SavedByLoggedUser) then) =
      _$SavedByLoggedUserCopyWithImpl<$Res, SavedByLoggedUser>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$SavedByLoggedUserCopyWithImpl<$Res, $Val extends SavedByLoggedUser>
    implements $SavedByLoggedUserCopyWith<$Res> {
  _$SavedByLoggedUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SavedByLoggedUserImplCopyWith<$Res>
    implements $SavedByLoggedUserCopyWith<$Res> {
  factory _$$SavedByLoggedUserImplCopyWith(_$SavedByLoggedUserImpl value,
          $Res Function(_$SavedByLoggedUserImpl) then) =
      __$$SavedByLoggedUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$SavedByLoggedUserImplCopyWithImpl<$Res>
    extends _$SavedByLoggedUserCopyWithImpl<$Res, _$SavedByLoggedUserImpl>
    implements _$$SavedByLoggedUserImplCopyWith<$Res> {
  __$$SavedByLoggedUserImplCopyWithImpl(_$SavedByLoggedUserImpl _value,
      $Res Function(_$SavedByLoggedUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$SavedByLoggedUserImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SavedByLoggedUserImpl implements _SavedByLoggedUser {
  const _$SavedByLoggedUserImpl({required this.id});

  factory _$SavedByLoggedUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$SavedByLoggedUserImplFromJson(json);

  @override
  final String? id;

  @override
  String toString() {
    return 'SavedByLoggedUser(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavedByLoggedUserImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SavedByLoggedUserImplCopyWith<_$SavedByLoggedUserImpl> get copyWith =>
      __$$SavedByLoggedUserImplCopyWithImpl<_$SavedByLoggedUserImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SavedByLoggedUserImplToJson(
      this,
    );
  }
}

abstract class _SavedByLoggedUser implements SavedByLoggedUser {
  const factory _SavedByLoggedUser({required final String? id}) =
      _$SavedByLoggedUserImpl;

  factory _SavedByLoggedUser.fromJson(Map<String, dynamic> json) =
      _$SavedByLoggedUserImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$SavedByLoggedUserImplCopyWith<_$SavedByLoggedUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Link _$LinkFromJson(Map<String, dynamic> json) {
  return _Link.fromJson(json);
}

/// @nodoc
mixin _$Link {
  String? get url => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinkCopyWith<Link> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkCopyWith<$Res> {
  factory $LinkCopyWith(Link value, $Res Function(Link) then) =
      _$LinkCopyWithImpl<$Res, Link>;
  @useResult
  $Res call({String? url, String? label, bool? active});
}

/// @nodoc
class _$LinkCopyWithImpl<$Res, $Val extends Link>
    implements $LinkCopyWith<$Res> {
  _$LinkCopyWithImpl(this._value, this._then);

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
abstract class _$$LinkImplCopyWith<$Res> implements $LinkCopyWith<$Res> {
  factory _$$LinkImplCopyWith(
          _$LinkImpl value, $Res Function(_$LinkImpl) then) =
      __$$LinkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? url, String? label, bool? active});
}

/// @nodoc
class __$$LinkImplCopyWithImpl<$Res>
    extends _$LinkCopyWithImpl<$Res, _$LinkImpl>
    implements _$$LinkImplCopyWith<$Res> {
  __$$LinkImplCopyWithImpl(_$LinkImpl _value, $Res Function(_$LinkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? label = freezed,
    Object? active = freezed,
  }) {
    return _then(_$LinkImpl(
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
class _$LinkImpl implements _Link {
  const _$LinkImpl(
      {required this.url, required this.label, required this.active});

  factory _$LinkImpl.fromJson(Map<String, dynamic> json) =>
      _$$LinkImplFromJson(json);

  @override
  final String? url;
  @override
  final String? label;
  @override
  final bool? active;

  @override
  String toString() {
    return 'Link(url: $url, label: $label, active: $active)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LinkImpl &&
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
  _$$LinkImplCopyWith<_$LinkImpl> get copyWith =>
      __$$LinkImplCopyWithImpl<_$LinkImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LinkImplToJson(
      this,
    );
  }
}

abstract class _Link implements Link {
  const factory _Link(
      {required final String? url,
      required final String? label,
      required final bool? active}) = _$LinkImpl;

  factory _Link.fromJson(Map<String, dynamic> json) = _$LinkImpl.fromJson;

  @override
  String? get url;
  @override
  String? get label;
  @override
  bool? get active;
  @override
  @JsonKey(ignore: true)
  _$$LinkImplCopyWith<_$LinkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
