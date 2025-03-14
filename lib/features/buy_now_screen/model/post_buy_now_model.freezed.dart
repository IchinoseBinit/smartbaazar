// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_buy_now_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostBuyNowModel _$PostBuyNowModelFromJson(Map<String, dynamic> json) {
  return _PostBuyNowModel.fromJson(json);
}

/// @nodoc
mixin _$PostBuyNowModel {
  BuyNowModel? get data => throw _privateConstructorUsedError;
  String? get msg => throw _privateConstructorUsedError;

  /// Serializes this PostBuyNowModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostBuyNowModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostBuyNowModelCopyWith<PostBuyNowModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostBuyNowModelCopyWith<$Res> {
  factory $PostBuyNowModelCopyWith(
          PostBuyNowModel value, $Res Function(PostBuyNowModel) then) =
      _$PostBuyNowModelCopyWithImpl<$Res, PostBuyNowModel>;
  @useResult
  $Res call({BuyNowModel? data, String? msg});

  $BuyNowModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$PostBuyNowModelCopyWithImpl<$Res, $Val extends PostBuyNowModel>
    implements $PostBuyNowModelCopyWith<$Res> {
  _$PostBuyNowModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostBuyNowModel
  /// with the given fields replaced by the non-null parameter values.
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
              as BuyNowModel?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of PostBuyNowModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BuyNowModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $BuyNowModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostBuyNowModelImplCopyWith<$Res>
    implements $PostBuyNowModelCopyWith<$Res> {
  factory _$$PostBuyNowModelImplCopyWith(_$PostBuyNowModelImpl value,
          $Res Function(_$PostBuyNowModelImpl) then) =
      __$$PostBuyNowModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BuyNowModel? data, String? msg});

  @override
  $BuyNowModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$PostBuyNowModelImplCopyWithImpl<$Res>
    extends _$PostBuyNowModelCopyWithImpl<$Res, _$PostBuyNowModelImpl>
    implements _$$PostBuyNowModelImplCopyWith<$Res> {
  __$$PostBuyNowModelImplCopyWithImpl(
      _$PostBuyNowModelImpl _value, $Res Function(_$PostBuyNowModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostBuyNowModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? msg = freezed,
  }) {
    return _then(_$PostBuyNowModelImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BuyNowModel?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostBuyNowModelImpl implements _PostBuyNowModel {
  const _$PostBuyNowModelImpl({this.data, this.msg});

  factory _$PostBuyNowModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostBuyNowModelImplFromJson(json);

  @override
  final BuyNowModel? data;
  @override
  final String? msg;

  @override
  String toString() {
    return 'PostBuyNowModel(data: $data, msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostBuyNowModelImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data, msg);

  /// Create a copy of PostBuyNowModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostBuyNowModelImplCopyWith<_$PostBuyNowModelImpl> get copyWith =>
      __$$PostBuyNowModelImplCopyWithImpl<_$PostBuyNowModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostBuyNowModelImplToJson(
      this,
    );
  }
}

abstract class _PostBuyNowModel implements PostBuyNowModel {
  const factory _PostBuyNowModel({final BuyNowModel? data, final String? msg}) =
      _$PostBuyNowModelImpl;

  factory _PostBuyNowModel.fromJson(Map<String, dynamic> json) =
      _$PostBuyNowModelImpl.fromJson;

  @override
  BuyNowModel? get data;
  @override
  String? get msg;

  /// Create a copy of PostBuyNowModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostBuyNowModelImplCopyWith<_$PostBuyNowModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BuyNowModel _$BuyNowModelFromJson(Map<String, dynamic> json) {
  return _BuyNowModel.fromJson(json);
}

/// @nodoc
mixin _$BuyNowModel {
  List<BuyNowPostModel>? get posts =>
      throw _privateConstructorUsedError; // Avoid null issues
  List<VendorBuyNowModel>? get vendor => throw _privateConstructorUsedError;
  List<BuyNowUserModel>? get user => throw _privateConstructorUsedError;
  List<dynamic>? get coupons => throw _privateConstructorUsedError;

  /// Serializes this BuyNowModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BuyNowModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BuyNowModelCopyWith<BuyNowModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuyNowModelCopyWith<$Res> {
  factory $BuyNowModelCopyWith(
          BuyNowModel value, $Res Function(BuyNowModel) then) =
      _$BuyNowModelCopyWithImpl<$Res, BuyNowModel>;
  @useResult
  $Res call(
      {List<BuyNowPostModel>? posts,
      List<VendorBuyNowModel>? vendor,
      List<BuyNowUserModel>? user,
      List<dynamic>? coupons});
}

/// @nodoc
class _$BuyNowModelCopyWithImpl<$Res, $Val extends BuyNowModel>
    implements $BuyNowModelCopyWith<$Res> {
  _$BuyNowModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BuyNowModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = freezed,
    Object? vendor = freezed,
    Object? user = freezed,
    Object? coupons = freezed,
  }) {
    return _then(_value.copyWith(
      posts: freezed == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<BuyNowPostModel>?,
      vendor: freezed == vendor
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as List<VendorBuyNowModel>?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as List<BuyNowUserModel>?,
      coupons: freezed == coupons
          ? _value.coupons
          : coupons // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BuyNowModelImplCopyWith<$Res>
    implements $BuyNowModelCopyWith<$Res> {
  factory _$$BuyNowModelImplCopyWith(
          _$BuyNowModelImpl value, $Res Function(_$BuyNowModelImpl) then) =
      __$$BuyNowModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<BuyNowPostModel>? posts,
      List<VendorBuyNowModel>? vendor,
      List<BuyNowUserModel>? user,
      List<dynamic>? coupons});
}

/// @nodoc
class __$$BuyNowModelImplCopyWithImpl<$Res>
    extends _$BuyNowModelCopyWithImpl<$Res, _$BuyNowModelImpl>
    implements _$$BuyNowModelImplCopyWith<$Res> {
  __$$BuyNowModelImplCopyWithImpl(
      _$BuyNowModelImpl _value, $Res Function(_$BuyNowModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BuyNowModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = freezed,
    Object? vendor = freezed,
    Object? user = freezed,
    Object? coupons = freezed,
  }) {
    return _then(_$BuyNowModelImpl(
      posts: freezed == posts
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<BuyNowPostModel>?,
      vendor: freezed == vendor
          ? _value._vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as List<VendorBuyNowModel>?,
      user: freezed == user
          ? _value._user
          : user // ignore: cast_nullable_to_non_nullable
              as List<BuyNowUserModel>?,
      coupons: freezed == coupons
          ? _value._coupons
          : coupons // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BuyNowModelImpl implements _BuyNowModel {
  const _$BuyNowModelImpl(
      {final List<BuyNowPostModel>? posts = const [],
      final List<VendorBuyNowModel>? vendor = const [],
      final List<BuyNowUserModel>? user = const [],
      final List<dynamic>? coupons = const []})
      : _posts = posts,
        _vendor = vendor,
        _user = user,
        _coupons = coupons;

  factory _$BuyNowModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BuyNowModelImplFromJson(json);

  final List<BuyNowPostModel>? _posts;
  @override
  @JsonKey()
  List<BuyNowPostModel>? get posts {
    final value = _posts;
    if (value == null) return null;
    if (_posts is EqualUnmodifiableListView) return _posts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// Avoid null issues
  final List<VendorBuyNowModel>? _vendor;
// Avoid null issues
  @override
  @JsonKey()
  List<VendorBuyNowModel>? get vendor {
    final value = _vendor;
    if (value == null) return null;
    if (_vendor is EqualUnmodifiableListView) return _vendor;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<BuyNowUserModel>? _user;
  @override
  @JsonKey()
  List<BuyNowUserModel>? get user {
    final value = _user;
    if (value == null) return null;
    if (_user is EqualUnmodifiableListView) return _user;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _coupons;
  @override
  @JsonKey()
  List<dynamic>? get coupons {
    final value = _coupons;
    if (value == null) return null;
    if (_coupons is EqualUnmodifiableListView) return _coupons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BuyNowModel(posts: $posts, vendor: $vendor, user: $user, coupons: $coupons)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BuyNowModelImpl &&
            const DeepCollectionEquality().equals(other._posts, _posts) &&
            const DeepCollectionEquality().equals(other._vendor, _vendor) &&
            const DeepCollectionEquality().equals(other._user, _user) &&
            const DeepCollectionEquality().equals(other._coupons, _coupons));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_posts),
      const DeepCollectionEquality().hash(_vendor),
      const DeepCollectionEquality().hash(_user),
      const DeepCollectionEquality().hash(_coupons));

  /// Create a copy of BuyNowModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BuyNowModelImplCopyWith<_$BuyNowModelImpl> get copyWith =>
      __$$BuyNowModelImplCopyWithImpl<_$BuyNowModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BuyNowModelImplToJson(
      this,
    );
  }
}

abstract class _BuyNowModel implements BuyNowModel {
  const factory _BuyNowModel(
      {final List<BuyNowPostModel>? posts,
      final List<VendorBuyNowModel>? vendor,
      final List<BuyNowUserModel>? user,
      final List<dynamic>? coupons}) = _$BuyNowModelImpl;

  factory _BuyNowModel.fromJson(Map<String, dynamic> json) =
      _$BuyNowModelImpl.fromJson;

  @override
  List<BuyNowPostModel>? get posts; // Avoid null issues
  @override
  List<VendorBuyNowModel>? get vendor;
  @override
  List<BuyNowUserModel>? get user;
  @override
  List<dynamic>? get coupons;

  /// Create a copy of BuyNowModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BuyNowModelImplCopyWith<_$BuyNowModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BuyNowPostModel _$BuyNowPostModelFromJson(Map<String, dynamic> json) {
  return _BuyNowPostModel.fromJson(json);
}

/// @nodoc
mixin _$BuyNowPostModel {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'country_code')
  String? get countryCode =>
      throw _privateConstructorUsedError; // JSON key mapping
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
  String? get contactName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get phoneHidden => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'city_id')
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

  /// Serializes this BuyNowPostModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BuyNowPostModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BuyNowPostModelCopyWith<BuyNowPostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuyNowPostModelCopyWith<$Res> {
  factory $BuyNowPostModelCopyWith(
          BuyNowPostModel value, $Res Function(BuyNowPostModel) then) =
      _$BuyNowPostModelCopyWithImpl<$Res, BuyNowPostModel>;
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
      String? contactName,
      String? email,
      String? phone,
      String? phoneHidden,
      String? address,
      @JsonKey(name: 'city_id') String? cityId,
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
      String? updatedAt});
}

/// @nodoc
class _$BuyNowPostModelCopyWithImpl<$Res, $Val extends BuyNowPostModel>
    implements $BuyNowPostModelCopyWith<$Res> {
  _$BuyNowPostModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BuyNowPostModel
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BuyNowPostModelImplCopyWith<$Res>
    implements $BuyNowPostModelCopyWith<$Res> {
  factory _$$BuyNowPostModelImplCopyWith(_$BuyNowPostModelImpl value,
          $Res Function(_$BuyNowPostModelImpl) then) =
      __$$BuyNowPostModelImplCopyWithImpl<$Res>;
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
      String? contactName,
      String? email,
      String? phone,
      String? phoneHidden,
      String? address,
      @JsonKey(name: 'city_id') String? cityId,
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
      String? updatedAt});
}

/// @nodoc
class __$$BuyNowPostModelImplCopyWithImpl<$Res>
    extends _$BuyNowPostModelCopyWithImpl<$Res, _$BuyNowPostModelImpl>
    implements _$$BuyNowPostModelImplCopyWith<$Res> {
  __$$BuyNowPostModelImplCopyWithImpl(
      _$BuyNowPostModelImpl _value, $Res Function(_$BuyNowPostModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BuyNowPostModel
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
  }) {
    return _then(_$BuyNowPostModelImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BuyNowPostModelImpl implements _BuyNowPostModel {
  const _$BuyNowPostModelImpl(
      {this.id,
      @JsonKey(name: 'country_code') this.countryCode,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'category_id') this.categoryId,
      @JsonKey(name: 'post_type_id') this.postTypeId,
      this.title,
      this.description,
      this.tags,
      this.price,
      this.negotiable,
      this.contactName,
      this.email,
      this.phone,
      this.phoneHidden,
      this.address,
      @JsonKey(name: 'city_id') this.cityId,
      this.lon,
      this.lat,
      this.ipAddr,
      this.length,
      this.width,
      this.weight,
      this.height,
      this.pickup,
      this.longitude,
      this.latitude,
      this.hyperDel,
      this.sellerDel,
      this.visits,
      this.emailToken,
      this.phoneToken,
      this.tmpToken,
      this.verifiedEmail,
      this.verifiedPhone,
      this.acceptTerms,
      this.acceptMarketingOffers,
      this.isPermanent,
      this.reviewed,
      this.featured,
      this.archived,
      this.archivedAt,
      this.archivedManually,
      this.deletionMailSentAt,
      this.fbProfile,
      this.partner,
      this.discountedPrice,
      this.trending,
      this.stock,
      this.minOrder,
      this.sampPrice,
      this.textOne,
      this.textTwo,
      this.avaTo,
      this.branded,
      this.wow,
      this.offers,
      this.storyDisplayDays,
      this.barcode,
      this.b2bPricing,
      this.deletedAt,
      this.createdAt,
      this.updatedAt});

  factory _$BuyNowPostModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BuyNowPostModelImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'country_code')
  final String? countryCode;
// JSON key mapping
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
  @JsonKey(name: 'city_id')
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
  String toString() {
    return 'BuyNowPostModel(id: $id, countryCode: $countryCode, userId: $userId, categoryId: $categoryId, postTypeId: $postTypeId, title: $title, description: $description, tags: $tags, price: $price, negotiable: $negotiable, contactName: $contactName, email: $email, phone: $phone, phoneHidden: $phoneHidden, address: $address, cityId: $cityId, lon: $lon, lat: $lat, ipAddr: $ipAddr, length: $length, width: $width, weight: $weight, height: $height, pickup: $pickup, longitude: $longitude, latitude: $latitude, hyperDel: $hyperDel, sellerDel: $sellerDel, visits: $visits, emailToken: $emailToken, phoneToken: $phoneToken, tmpToken: $tmpToken, verifiedEmail: $verifiedEmail, verifiedPhone: $verifiedPhone, acceptTerms: $acceptTerms, acceptMarketingOffers: $acceptMarketingOffers, isPermanent: $isPermanent, reviewed: $reviewed, featured: $featured, archived: $archived, archivedAt: $archivedAt, archivedManually: $archivedManually, deletionMailSentAt: $deletionMailSentAt, fbProfile: $fbProfile, partner: $partner, discountedPrice: $discountedPrice, trending: $trending, stock: $stock, minOrder: $minOrder, sampPrice: $sampPrice, textOne: $textOne, textTwo: $textTwo, avaTo: $avaTo, branded: $branded, wow: $wow, offers: $offers, storyDisplayDays: $storyDisplayDays, barcode: $barcode, b2bPricing: $b2bPricing, deletedAt: $deletedAt, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BuyNowPostModelImpl &&
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
                other.updatedAt == updatedAt));
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
        updatedAt
      ]);

  /// Create a copy of BuyNowPostModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BuyNowPostModelImplCopyWith<_$BuyNowPostModelImpl> get copyWith =>
      __$$BuyNowPostModelImplCopyWithImpl<_$BuyNowPostModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BuyNowPostModelImplToJson(
      this,
    );
  }
}

abstract class _BuyNowPostModel implements BuyNowPostModel {
  const factory _BuyNowPostModel(
      {final String? id,
      @JsonKey(name: 'country_code') final String? countryCode,
      @JsonKey(name: 'user_id') final String? userId,
      @JsonKey(name: 'category_id') final String? categoryId,
      @JsonKey(name: 'post_type_id') final String? postTypeId,
      final String? title,
      final String? description,
      final String? tags,
      final String? price,
      final String? negotiable,
      final String? contactName,
      final String? email,
      final String? phone,
      final String? phoneHidden,
      final String? address,
      @JsonKey(name: 'city_id') final String? cityId,
      final String? lon,
      final String? lat,
      final String? ipAddr,
      final String? length,
      final String? width,
      final String? weight,
      final String? height,
      final String? pickup,
      final String? longitude,
      final String? latitude,
      final String? hyperDel,
      final String? sellerDel,
      final String? visits,
      final String? emailToken,
      final String? phoneToken,
      final String? tmpToken,
      final String? verifiedEmail,
      final String? verifiedPhone,
      final String? acceptTerms,
      final String? acceptMarketingOffers,
      final String? isPermanent,
      final String? reviewed,
      final String? featured,
      final String? archived,
      final String? archivedAt,
      final String? archivedManually,
      final String? deletionMailSentAt,
      final String? fbProfile,
      final String? partner,
      final String? discountedPrice,
      final String? trending,
      final String? stock,
      final String? minOrder,
      final String? sampPrice,
      final String? textOne,
      final String? textTwo,
      final String? avaTo,
      final String? branded,
      final String? wow,
      final String? offers,
      final String? storyDisplayDays,
      final String? barcode,
      final String? b2bPricing,
      final String? deletedAt,
      final String? createdAt,
      final String? updatedAt}) = _$BuyNowPostModelImpl;

  factory _BuyNowPostModel.fromJson(Map<String, dynamic> json) =
      _$BuyNowPostModelImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'country_code')
  String? get countryCode; // JSON key mapping
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
  @JsonKey(name: 'city_id')
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

  /// Create a copy of BuyNowPostModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BuyNowPostModelImplCopyWith<_$BuyNowPostModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VendorBuyNowModel _$VendorBuyNowModelFromJson(Map<String, dynamic> json) {
  return _VendorBuyNowModel.fromJson(json);
}

/// @nodoc
mixin _$VendorBuyNowModel {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get paymentQr => throw _privateConstructorUsedError;

  /// Serializes this VendorBuyNowModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VendorBuyNowModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VendorBuyNowModelCopyWith<VendorBuyNowModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendorBuyNowModelCopyWith<$Res> {
  factory $VendorBuyNowModelCopyWith(
          VendorBuyNowModel value, $Res Function(VendorBuyNowModel) then) =
      _$VendorBuyNowModelCopyWithImpl<$Res, VendorBuyNowModel>;
  @useResult
  $Res call({String? id, String? name, String? paymentQr});
}

/// @nodoc
class _$VendorBuyNowModelCopyWithImpl<$Res, $Val extends VendorBuyNowModel>
    implements $VendorBuyNowModelCopyWith<$Res> {
  _$VendorBuyNowModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VendorBuyNowModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? paymentQr = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentQr: freezed == paymentQr
          ? _value.paymentQr
          : paymentQr // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VendorBuyNowModelImplCopyWith<$Res>
    implements $VendorBuyNowModelCopyWith<$Res> {
  factory _$$VendorBuyNowModelImplCopyWith(_$VendorBuyNowModelImpl value,
          $Res Function(_$VendorBuyNowModelImpl) then) =
      __$$VendorBuyNowModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name, String? paymentQr});
}

/// @nodoc
class __$$VendorBuyNowModelImplCopyWithImpl<$Res>
    extends _$VendorBuyNowModelCopyWithImpl<$Res, _$VendorBuyNowModelImpl>
    implements _$$VendorBuyNowModelImplCopyWith<$Res> {
  __$$VendorBuyNowModelImplCopyWithImpl(_$VendorBuyNowModelImpl _value,
      $Res Function(_$VendorBuyNowModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of VendorBuyNowModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? paymentQr = freezed,
  }) {
    return _then(_$VendorBuyNowModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentQr: freezed == paymentQr
          ? _value.paymentQr
          : paymentQr // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VendorBuyNowModelImpl implements _VendorBuyNowModel {
  const _$VendorBuyNowModelImpl({this.id, this.name, this.paymentQr});

  factory _$VendorBuyNowModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VendorBuyNowModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? paymentQr;

  @override
  String toString() {
    return 'VendorBuyNowModel(id: $id, name: $name, paymentQr: $paymentQr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VendorBuyNowModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.paymentQr, paymentQr) ||
                other.paymentQr == paymentQr));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, paymentQr);

  /// Create a copy of VendorBuyNowModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VendorBuyNowModelImplCopyWith<_$VendorBuyNowModelImpl> get copyWith =>
      __$$VendorBuyNowModelImplCopyWithImpl<_$VendorBuyNowModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VendorBuyNowModelImplToJson(
      this,
    );
  }
}

abstract class _VendorBuyNowModel implements VendorBuyNowModel {
  const factory _VendorBuyNowModel(
      {final String? id,
      final String? name,
      final String? paymentQr}) = _$VendorBuyNowModelImpl;

  factory _VendorBuyNowModel.fromJson(Map<String, dynamic> json) =
      _$VendorBuyNowModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get paymentQr;

  /// Create a copy of VendorBuyNowModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VendorBuyNowModelImplCopyWith<_$VendorBuyNowModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BuyNowUserModel _$BuyNowUserModelFromJson(Map<String, dynamic> json) {
  return _BuyNowUserModel.fromJson(json);
}

/// @nodoc
mixin _$BuyNowUserModel {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;

  /// Serializes this BuyNowUserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BuyNowUserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BuyNowUserModelCopyWith<BuyNowUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuyNowUserModelCopyWith<$Res> {
  factory $BuyNowUserModelCopyWith(
          BuyNowUserModel value, $Res Function(BuyNowUserModel) then) =
      _$BuyNowUserModelCopyWithImpl<$Res, BuyNowUserModel>;
  @useResult
  $Res call({String? id, String? name, String? email, String? phone});
}

/// @nodoc
class _$BuyNowUserModelCopyWithImpl<$Res, $Val extends BuyNowUserModel>
    implements $BuyNowUserModelCopyWith<$Res> {
  _$BuyNowUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BuyNowUserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BuyNowUserModelImplCopyWith<$Res>
    implements $BuyNowUserModelCopyWith<$Res> {
  factory _$$BuyNowUserModelImplCopyWith(_$BuyNowUserModelImpl value,
          $Res Function(_$BuyNowUserModelImpl) then) =
      __$$BuyNowUserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name, String? email, String? phone});
}

/// @nodoc
class __$$BuyNowUserModelImplCopyWithImpl<$Res>
    extends _$BuyNowUserModelCopyWithImpl<$Res, _$BuyNowUserModelImpl>
    implements _$$BuyNowUserModelImplCopyWith<$Res> {
  __$$BuyNowUserModelImplCopyWithImpl(
      _$BuyNowUserModelImpl _value, $Res Function(_$BuyNowUserModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BuyNowUserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
  }) {
    return _then(_$BuyNowUserModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BuyNowUserModelImpl implements _BuyNowUserModel {
  const _$BuyNowUserModelImpl({this.id, this.name, this.email, this.phone});

  factory _$BuyNowUserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BuyNowUserModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? phone;

  @override
  String toString() {
    return 'BuyNowUserModel(id: $id, name: $name, email: $email, phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BuyNowUserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, email, phone);

  /// Create a copy of BuyNowUserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BuyNowUserModelImplCopyWith<_$BuyNowUserModelImpl> get copyWith =>
      __$$BuyNowUserModelImplCopyWithImpl<_$BuyNowUserModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BuyNowUserModelImplToJson(
      this,
    );
  }
}

abstract class _BuyNowUserModel implements BuyNowUserModel {
  const factory _BuyNowUserModel(
      {final String? id,
      final String? name,
      final String? email,
      final String? phone}) = _$BuyNowUserModelImpl;

  factory _BuyNowUserModel.fromJson(Map<String, dynamic> json) =
      _$BuyNowUserModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get phone;

  /// Create a copy of BuyNowUserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BuyNowUserModelImplCopyWith<_$BuyNowUserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
