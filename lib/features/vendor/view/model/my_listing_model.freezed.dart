// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_listing_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MyListingModel _$MyListingModelFromJson(Map<String, dynamic> json) {
  return _MyListingModel.fromJson(json);
}

/// @nodoc
mixin _$MyListingModel {
  Products? get products => throw _privateConstructorUsedError;

  /// Serializes this MyListingModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MyListingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyListingModelCopyWith<MyListingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyListingModelCopyWith<$Res> {
  factory $MyListingModelCopyWith(
          MyListingModel value, $Res Function(MyListingModel) then) =
      _$MyListingModelCopyWithImpl<$Res, MyListingModel>;
  @useResult
  $Res call({Products? products});

  $ProductsCopyWith<$Res>? get products;
}

/// @nodoc
class _$MyListingModelCopyWithImpl<$Res, $Val extends MyListingModel>
    implements $MyListingModelCopyWith<$Res> {
  _$MyListingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyListingModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = freezed,
  }) {
    return _then(_value.copyWith(
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as Products?,
    ) as $Val);
  }

  /// Create a copy of MyListingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductsCopyWith<$Res>? get products {
    if (_value.products == null) {
      return null;
    }

    return $ProductsCopyWith<$Res>(_value.products!, (value) {
      return _then(_value.copyWith(products: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MyListingModelImplCopyWith<$Res>
    implements $MyListingModelCopyWith<$Res> {
  factory _$$MyListingModelImplCopyWith(_$MyListingModelImpl value,
          $Res Function(_$MyListingModelImpl) then) =
      __$$MyListingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Products? products});

  @override
  $ProductsCopyWith<$Res>? get products;
}

/// @nodoc
class __$$MyListingModelImplCopyWithImpl<$Res>
    extends _$MyListingModelCopyWithImpl<$Res, _$MyListingModelImpl>
    implements _$$MyListingModelImplCopyWith<$Res> {
  __$$MyListingModelImplCopyWithImpl(
      _$MyListingModelImpl _value, $Res Function(_$MyListingModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyListingModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = freezed,
  }) {
    return _then(_$MyListingModelImpl(
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as Products?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyListingModelImpl implements _MyListingModel {
  const _$MyListingModelImpl({required this.products});

  factory _$MyListingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyListingModelImplFromJson(json);

  @override
  final Products? products;

  @override
  String toString() {
    return 'MyListingModel(products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyListingModelImpl &&
            (identical(other.products, products) ||
                other.products == products));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, products);

  /// Create a copy of MyListingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyListingModelImplCopyWith<_$MyListingModelImpl> get copyWith =>
      __$$MyListingModelImplCopyWithImpl<_$MyListingModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyListingModelImplToJson(
      this,
    );
  }
}

abstract class _MyListingModel implements MyListingModel {
  const factory _MyListingModel({required final Products? products}) =
      _$MyListingModelImpl;

  factory _MyListingModel.fromJson(Map<String, dynamic> json) =
      _$MyListingModelImpl.fromJson;

  @override
  Products? get products;

  /// Create a copy of MyListingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyListingModelImplCopyWith<_$MyListingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Products _$ProductsFromJson(Map<String, dynamic> json) {
  return _Products.fromJson(json);
}

/// @nodoc
mixin _$Products {
  List<Product>? get data => throw _privateConstructorUsedError;

  /// Serializes this Products to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Products
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductsCopyWith<Products> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsCopyWith<$Res> {
  factory $ProductsCopyWith(Products value, $Res Function(Products) then) =
      _$ProductsCopyWithImpl<$Res, Products>;
  @useResult
  $Res call({List<Product>? data});
}

/// @nodoc
class _$ProductsCopyWithImpl<$Res, $Val extends Products>
    implements $ProductsCopyWith<$Res> {
  _$ProductsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Products
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
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
  $Res call({List<Product>? data});
}

/// @nodoc
class __$$ProductsImplCopyWithImpl<$Res>
    extends _$ProductsCopyWithImpl<$Res, _$ProductsImpl>
    implements _$$ProductsImplCopyWith<$Res> {
  __$$ProductsImplCopyWithImpl(
      _$ProductsImpl _value, $Res Function(_$ProductsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Products
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ProductsImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductsImpl implements _Products {
  const _$ProductsImpl({required final List<Product>? data}) : _data = data;

  factory _$ProductsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductsImplFromJson(json);

  final List<Product>? _data;
  @override
  List<Product>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Products(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of Products
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
  const factory _Products({required final List<Product>? data}) =
      _$ProductsImpl;

  factory _Products.fromJson(Map<String, dynamic> json) =
      _$ProductsImpl.fromJson;

  @override
  List<Product>? get data;

  /// Create a copy of Products
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsImplCopyWith<_$ProductsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  String? get id => throw _privateConstructorUsedError;
  String? get countryCode => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get categoryId => throw _privateConstructorUsedError;
  String? get postTypeId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get tags => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  String? get negotiable => throw _privateConstructorUsedError;
  String? get contactName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get phoneHidden => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get cityId => throw _privateConstructorUsedError;
  String? get lon => throw _privateConstructorUsedError;
  String? get lat => throw _privateConstructorUsedError;
  String? get ipAddr => throw _privateConstructorUsedError;
  String? get length => throw _privateConstructorUsedError;
  String? get width => throw _privateConstructorUsedError;
  String? get weight => throw _privateConstructorUsedError;
  String? get height => throw _privateConstructorUsedError;
  String? get pickup => throw _privateConstructorUsedError;
  String? get longitude => throw _privateConstructorUsedError;
  String? get latitude => throw _privateConstructorUsedError;
  String? get hyperDel => throw _privateConstructorUsedError;
  String? get sellerDel => throw _privateConstructorUsedError;
  String? get visits => throw _privateConstructorUsedError;
  String? get emailToken => throw _privateConstructorUsedError;
  String? get phoneToken => throw _privateConstructorUsedError;
  String? get tmpToken => throw _privateConstructorUsedError;
  String? get verifiedEmail => throw _privateConstructorUsedError;
  String? get verifiedPhone => throw _privateConstructorUsedError;
  String? get acceptTerms => throw _privateConstructorUsedError;
  String? get acceptMarketingOffers => throw _privateConstructorUsedError;
  String? get isPermanent => throw _privateConstructorUsedError;
  String? get reviewed => throw _privateConstructorUsedError;
  String? get featured => throw _privateConstructorUsedError;
  String? get archived => throw _privateConstructorUsedError;
  String? get archivedAt => throw _privateConstructorUsedError;
  String? get archivedManually => throw _privateConstructorUsedError;
  String? get deletionMailSentAt => throw _privateConstructorUsedError;
  String? get fbProfile => throw _privateConstructorUsedError;
  String? get partner => throw _privateConstructorUsedError;
  String? get discountedPrice => throw _privateConstructorUsedError;
  String? get trending => throw _privateConstructorUsedError;
  String? get stock => throw _privateConstructorUsedError;
  String? get minOrder => throw _privateConstructorUsedError;
  String? get sampPrice => throw _privateConstructorUsedError;
  String? get textOne => throw _privateConstructorUsedError;
  String? get textTwo => throw _privateConstructorUsedError;
  String? get avaTo => throw _privateConstructorUsedError;
  String? get branded => throw _privateConstructorUsedError;
  String? get wow => throw _privateConstructorUsedError;
  String? get offers => throw _privateConstructorUsedError;
  String? get storyDisplayDays => throw _privateConstructorUsedError;
  String? get barcode => throw _privateConstructorUsedError;
  String? get b2bPricing => throw _privateConstructorUsedError;
  String? get deletedAt => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  int? get avgRating => throw _privateConstructorUsedError;

  /// Serializes this Product to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {String? id,
      String? countryCode,
      String? userId,
      String? categoryId,
      String? postTypeId,
      String? title,
      String? description,
      String? tags,
      String? price,
      String? negotiable,
      String? contactName,
      String? email,
      String? phone,
      String? phoneHidden,
      String? address,
      String? cityId,
      String? lon,
      String? lat,
      String? ipAddr,
      String? length,
      String? width,
      String? weight,
      String? height,
      String? pickup,
      String? longitude,
      String? latitude,
      String? hyperDel,
      String? sellerDel,
      String? visits,
      String? emailToken,
      String? phoneToken,
      String? tmpToken,
      String? verifiedEmail,
      String? verifiedPhone,
      String? acceptTerms,
      String? acceptMarketingOffers,
      String? isPermanent,
      String? reviewed,
      String? featured,
      String? archived,
      String? archivedAt,
      String? archivedManually,
      String? deletionMailSentAt,
      String? fbProfile,
      String? partner,
      String? discountedPrice,
      String? trending,
      String? stock,
      String? minOrder,
      String? sampPrice,
      String? textOne,
      String? textTwo,
      String? avaTo,
      String? branded,
      String? wow,
      String? offers,
      String? storyDisplayDays,
      String? barcode,
      String? b2bPricing,
      String? deletedAt,
      String? createdAt,
      String? updatedAt,
      String? image,
      int? avgRating});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
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
    Object? wow = freezed,
    Object? offers = freezed,
    Object? storyDisplayDays = freezed,
    Object? barcode = freezed,
    Object? b2bPricing = freezed,
    Object? deletedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? image = freezed,
    Object? avgRating = freezed,
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
      wow: freezed == wow
          ? _value.wow
          : wow // ignore: cast_nullable_to_non_nullable
              as String?,
      offers: freezed == offers
          ? _value.offers
          : offers // ignore: cast_nullable_to_non_nullable
              as String?,
      storyDisplayDays: freezed == storyDisplayDays
          ? _value.storyDisplayDays
          : storyDisplayDays // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      b2bPricing: freezed == b2bPricing
          ? _value.b2bPricing
          : b2bPricing // ignore: cast_nullable_to_non_nullable
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
      String? countryCode,
      String? userId,
      String? categoryId,
      String? postTypeId,
      String? title,
      String? description,
      String? tags,
      String? price,
      String? negotiable,
      String? contactName,
      String? email,
      String? phone,
      String? phoneHidden,
      String? address,
      String? cityId,
      String? lon,
      String? lat,
      String? ipAddr,
      String? length,
      String? width,
      String? weight,
      String? height,
      String? pickup,
      String? longitude,
      String? latitude,
      String? hyperDel,
      String? sellerDel,
      String? visits,
      String? emailToken,
      String? phoneToken,
      String? tmpToken,
      String? verifiedEmail,
      String? verifiedPhone,
      String? acceptTerms,
      String? acceptMarketingOffers,
      String? isPermanent,
      String? reviewed,
      String? featured,
      String? archived,
      String? archivedAt,
      String? archivedManually,
      String? deletionMailSentAt,
      String? fbProfile,
      String? partner,
      String? discountedPrice,
      String? trending,
      String? stock,
      String? minOrder,
      String? sampPrice,
      String? textOne,
      String? textTwo,
      String? avaTo,
      String? branded,
      String? wow,
      String? offers,
      String? storyDisplayDays,
      String? barcode,
      String? b2bPricing,
      String? deletedAt,
      String? createdAt,
      String? updatedAt,
      String? image,
      int? avgRating});
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
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
    Object? wow = freezed,
    Object? offers = freezed,
    Object? storyDisplayDays = freezed,
    Object? barcode = freezed,
    Object? b2bPricing = freezed,
    Object? deletedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? image = freezed,
    Object? avgRating = freezed,
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
      wow: freezed == wow
          ? _value.wow
          : wow // ignore: cast_nullable_to_non_nullable
              as String?,
      offers: freezed == offers
          ? _value.offers
          : offers // ignore: cast_nullable_to_non_nullable
              as String?,
      storyDisplayDays: freezed == storyDisplayDays
          ? _value.storyDisplayDays
          : storyDisplayDays // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      b2bPricing: freezed == b2bPricing
          ? _value.b2bPricing
          : b2bPricing // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImpl implements _Product {
  const _$ProductImpl(
      {required this.id,
      required this.countryCode,
      required this.userId,
      required this.categoryId,
      required this.postTypeId,
      required this.title,
      required this.description,
      required this.tags,
      required this.price,
      required this.negotiable,
      required this.contactName,
      required this.email,
      required this.phone,
      required this.phoneHidden,
      required this.address,
      required this.cityId,
      required this.lon,
      required this.lat,
      required this.ipAddr,
      required this.length,
      required this.width,
      required this.weight,
      required this.height,
      required this.pickup,
      required this.longitude,
      required this.latitude,
      required this.hyperDel,
      required this.sellerDel,
      required this.visits,
      required this.emailToken,
      required this.phoneToken,
      required this.tmpToken,
      required this.verifiedEmail,
      required this.verifiedPhone,
      required this.acceptTerms,
      required this.acceptMarketingOffers,
      required this.isPermanent,
      required this.reviewed,
      required this.featured,
      required this.archived,
      required this.archivedAt,
      required this.archivedManually,
      required this.deletionMailSentAt,
      required this.fbProfile,
      required this.partner,
      required this.discountedPrice,
      required this.trending,
      required this.stock,
      required this.minOrder,
      required this.sampPrice,
      required this.textOne,
      required this.textTwo,
      required this.avaTo,
      required this.branded,
      required this.wow,
      required this.offers,
      required this.storyDisplayDays,
      required this.barcode,
      required this.b2bPricing,
      required this.deletedAt,
      required this.createdAt,
      required this.updatedAt,
      required this.image,
      required this.avgRating});

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  final String? id;
  @override
  final String? countryCode;
  @override
  final String? userId;
  @override
  final String? categoryId;
  @override
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
  final String? contactName;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  final String? phoneHidden;
  @override
  final String? address;
  @override
  final String? cityId;
  @override
  final String? lon;
  @override
  final String? lat;
  @override
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
  final String? hyperDel;
  @override
  final String? sellerDel;
  @override
  final String? visits;
  @override
  final String? emailToken;
  @override
  final String? phoneToken;
  @override
  final String? tmpToken;
  @override
  final String? verifiedEmail;
  @override
  final String? verifiedPhone;
  @override
  final String? acceptTerms;
  @override
  final String? acceptMarketingOffers;
  @override
  final String? isPermanent;
  @override
  final String? reviewed;
  @override
  final String? featured;
  @override
  final String? archived;
  @override
  final String? archivedAt;
  @override
  final String? archivedManually;
  @override
  final String? deletionMailSentAt;
  @override
  final String? fbProfile;
  @override
  final String? partner;
  @override
  final String? discountedPrice;
  @override
  final String? trending;
  @override
  final String? stock;
  @override
  final String? minOrder;
  @override
  final String? sampPrice;
  @override
  final String? textOne;
  @override
  final String? textTwo;
  @override
  final String? avaTo;
  @override
  final String? branded;
  @override
  final String? wow;
  @override
  final String? offers;
  @override
  final String? storyDisplayDays;
  @override
  final String? barcode;
  @override
  final String? b2bPricing;
  @override
  final String? deletedAt;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  final String? image;
  @override
  final int? avgRating;

  @override
  String toString() {
    return 'Product(id: $id, countryCode: $countryCode, userId: $userId, categoryId: $categoryId, postTypeId: $postTypeId, title: $title, description: $description, tags: $tags, price: $price, negotiable: $negotiable, contactName: $contactName, email: $email, phone: $phone, phoneHidden: $phoneHidden, address: $address, cityId: $cityId, lon: $lon, lat: $lat, ipAddr: $ipAddr, length: $length, width: $width, weight: $weight, height: $height, pickup: $pickup, longitude: $longitude, latitude: $latitude, hyperDel: $hyperDel, sellerDel: $sellerDel, visits: $visits, emailToken: $emailToken, phoneToken: $phoneToken, tmpToken: $tmpToken, verifiedEmail: $verifiedEmail, verifiedPhone: $verifiedPhone, acceptTerms: $acceptTerms, acceptMarketingOffers: $acceptMarketingOffers, isPermanent: $isPermanent, reviewed: $reviewed, featured: $featured, archived: $archived, archivedAt: $archivedAt, archivedManually: $archivedManually, deletionMailSentAt: $deletionMailSentAt, fbProfile: $fbProfile, partner: $partner, discountedPrice: $discountedPrice, trending: $trending, stock: $stock, minOrder: $minOrder, sampPrice: $sampPrice, textOne: $textOne, textTwo: $textTwo, avaTo: $avaTo, branded: $branded, wow: $wow, offers: $offers, storyDisplayDays: $storyDisplayDays, barcode: $barcode, b2bPricing: $b2bPricing, deletedAt: $deletedAt, createdAt: $createdAt, updatedAt: $updatedAt, image: $image, avgRating: $avgRating)';
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
            (identical(other.wow, wow) || other.wow == wow) &&
            (identical(other.offers, offers) || other.offers == offers) &&
            (identical(other.storyDisplayDays, storyDisplayDays) ||
                other.storyDisplayDays == storyDisplayDays) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.b2bPricing, b2bPricing) ||
                other.b2bPricing == b2bPricing) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.avgRating, avgRating) ||
                other.avgRating == avgRating));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
        wow,
        offers,
        storyDisplayDays,
        barcode,
        b2bPricing,
        deletedAt,
        createdAt,
        updatedAt,
        image,
        avgRating
      ]);

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      required final String? countryCode,
      required final String? userId,
      required final String? categoryId,
      required final String? postTypeId,
      required final String? title,
      required final String? description,
      required final String? tags,
      required final String? price,
      required final String? negotiable,
      required final String? contactName,
      required final String? email,
      required final String? phone,
      required final String? phoneHidden,
      required final String? address,
      required final String? cityId,
      required final String? lon,
      required final String? lat,
      required final String? ipAddr,
      required final String? length,
      required final String? width,
      required final String? weight,
      required final String? height,
      required final String? pickup,
      required final String? longitude,
      required final String? latitude,
      required final String? hyperDel,
      required final String? sellerDel,
      required final String? visits,
      required final String? emailToken,
      required final String? phoneToken,
      required final String? tmpToken,
      required final String? verifiedEmail,
      required final String? verifiedPhone,
      required final String? acceptTerms,
      required final String? acceptMarketingOffers,
      required final String? isPermanent,
      required final String? reviewed,
      required final String? featured,
      required final String? archived,
      required final String? archivedAt,
      required final String? archivedManually,
      required final String? deletionMailSentAt,
      required final String? fbProfile,
      required final String? partner,
      required final String? discountedPrice,
      required final String? trending,
      required final String? stock,
      required final String? minOrder,
      required final String? sampPrice,
      required final String? textOne,
      required final String? textTwo,
      required final String? avaTo,
      required final String? branded,
      required final String? wow,
      required final String? offers,
      required final String? storyDisplayDays,
      required final String? barcode,
      required final String? b2bPricing,
      required final String? deletedAt,
      required final String? createdAt,
      required final String? updatedAt,
      required final String? image,
      required final int? avgRating}) = _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  String? get id;
  @override
  String? get countryCode;
  @override
  String? get userId;
  @override
  String? get categoryId;
  @override
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
  String? get contactName;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  String? get phoneHidden;
  @override
  String? get address;
  @override
  String? get cityId;
  @override
  String? get lon;
  @override
  String? get lat;
  @override
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
  String? get hyperDel;
  @override
  String? get sellerDel;
  @override
  String? get visits;
  @override
  String? get emailToken;
  @override
  String? get phoneToken;
  @override
  String? get tmpToken;
  @override
  String? get verifiedEmail;
  @override
  String? get verifiedPhone;
  @override
  String? get acceptTerms;
  @override
  String? get acceptMarketingOffers;
  @override
  String? get isPermanent;
  @override
  String? get reviewed;
  @override
  String? get featured;
  @override
  String? get archived;
  @override
  String? get archivedAt;
  @override
  String? get archivedManually;
  @override
  String? get deletionMailSentAt;
  @override
  String? get fbProfile;
  @override
  String? get partner;
  @override
  String? get discountedPrice;
  @override
  String? get trending;
  @override
  String? get stock;
  @override
  String? get minOrder;
  @override
  String? get sampPrice;
  @override
  String? get textOne;
  @override
  String? get textTwo;
  @override
  String? get avaTo;
  @override
  String? get branded;
  @override
  String? get wow;
  @override
  String? get offers;
  @override
  String? get storyDisplayDays;
  @override
  String? get barcode;
  @override
  String? get b2bPricing;
  @override
  String? get deletedAt;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  String? get image;
  @override
  int? get avgRating;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
