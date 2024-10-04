// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vendor_profile_name.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VendorData _$VendorDataFromJson(Map<String, dynamic> json) {
  return _VendorData.fromJson(json);
}

/// @nodoc
mixin _$VendorData {
  Vendor? get vendor => throw _privateConstructorUsedError;
  List<Advertisement> get advertisements => throw _privateConstructorUsedError;
  List<HotProduct> get hotProducts => throw _privateConstructorUsedError;
  String? get scratchBanner => throw _privateConstructorUsedError;
  Posts? get posts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VendorDataCopyWith<VendorData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendorDataCopyWith<$Res> {
  factory $VendorDataCopyWith(
          VendorData value, $Res Function(VendorData) then) =
      _$VendorDataCopyWithImpl<$Res, VendorData>;
  @useResult
  $Res call(
      {Vendor? vendor,
      List<Advertisement> advertisements,
      List<HotProduct> hotProducts,
      String? scratchBanner,
      Posts? posts});

  $VendorCopyWith<$Res>? get vendor;
  $PostsCopyWith<$Res>? get posts;
}

/// @nodoc
class _$VendorDataCopyWithImpl<$Res, $Val extends VendorData>
    implements $VendorDataCopyWith<$Res> {
  _$VendorDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vendor = freezed,
    Object? advertisements = null,
    Object? hotProducts = null,
    Object? scratchBanner = freezed,
    Object? posts = freezed,
  }) {
    return _then(_value.copyWith(
      vendor: freezed == vendor
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as Vendor?,
      advertisements: null == advertisements
          ? _value.advertisements
          : advertisements // ignore: cast_nullable_to_non_nullable
              as List<Advertisement>,
      hotProducts: null == hotProducts
          ? _value.hotProducts
          : hotProducts // ignore: cast_nullable_to_non_nullable
              as List<HotProduct>,
      scratchBanner: freezed == scratchBanner
          ? _value.scratchBanner
          : scratchBanner // ignore: cast_nullable_to_non_nullable
              as String?,
      posts: freezed == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as Posts?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VendorCopyWith<$Res>? get vendor {
    if (_value.vendor == null) {
      return null;
    }

    return $VendorCopyWith<$Res>(_value.vendor!, (value) {
      return _then(_value.copyWith(vendor: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PostsCopyWith<$Res>? get posts {
    if (_value.posts == null) {
      return null;
    }

    return $PostsCopyWith<$Res>(_value.posts!, (value) {
      return _then(_value.copyWith(posts: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VendorDataImplCopyWith<$Res>
    implements $VendorDataCopyWith<$Res> {
  factory _$$VendorDataImplCopyWith(
          _$VendorDataImpl value, $Res Function(_$VendorDataImpl) then) =
      __$$VendorDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Vendor? vendor,
      List<Advertisement> advertisements,
      List<HotProduct> hotProducts,
      String? scratchBanner,
      Posts? posts});

  @override
  $VendorCopyWith<$Res>? get vendor;
  @override
  $PostsCopyWith<$Res>? get posts;
}

/// @nodoc
class __$$VendorDataImplCopyWithImpl<$Res>
    extends _$VendorDataCopyWithImpl<$Res, _$VendorDataImpl>
    implements _$$VendorDataImplCopyWith<$Res> {
  __$$VendorDataImplCopyWithImpl(
      _$VendorDataImpl _value, $Res Function(_$VendorDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vendor = freezed,
    Object? advertisements = null,
    Object? hotProducts = null,
    Object? scratchBanner = freezed,
    Object? posts = freezed,
  }) {
    return _then(_$VendorDataImpl(
      vendor: freezed == vendor
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as Vendor?,
      advertisements: null == advertisements
          ? _value._advertisements
          : advertisements // ignore: cast_nullable_to_non_nullable
              as List<Advertisement>,
      hotProducts: null == hotProducts
          ? _value._hotProducts
          : hotProducts // ignore: cast_nullable_to_non_nullable
              as List<HotProduct>,
      scratchBanner: freezed == scratchBanner
          ? _value.scratchBanner
          : scratchBanner // ignore: cast_nullable_to_non_nullable
              as String?,
      posts: freezed == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as Posts?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VendorDataImpl implements _VendorData {
  _$VendorDataImpl(
      {this.vendor,
      final List<Advertisement> advertisements = const [],
      final List<HotProduct> hotProducts = const [],
      this.scratchBanner,
      this.posts})
      : _advertisements = advertisements,
        _hotProducts = hotProducts;

  factory _$VendorDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$VendorDataImplFromJson(json);

  @override
  final Vendor? vendor;
  final List<Advertisement> _advertisements;
  @override
  @JsonKey()
  List<Advertisement> get advertisements {
    if (_advertisements is EqualUnmodifiableListView) return _advertisements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_advertisements);
  }

  final List<HotProduct> _hotProducts;
  @override
  @JsonKey()
  List<HotProduct> get hotProducts {
    if (_hotProducts is EqualUnmodifiableListView) return _hotProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hotProducts);
  }

  @override
  final String? scratchBanner;
  @override
  final Posts? posts;

  @override
  String toString() {
    return 'VendorData(vendor: $vendor, advertisements: $advertisements, hotProducts: $hotProducts, scratchBanner: $scratchBanner, posts: $posts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VendorDataImpl &&
            (identical(other.vendor, vendor) || other.vendor == vendor) &&
            const DeepCollectionEquality()
                .equals(other._advertisements, _advertisements) &&
            const DeepCollectionEquality()
                .equals(other._hotProducts, _hotProducts) &&
            (identical(other.scratchBanner, scratchBanner) ||
                other.scratchBanner == scratchBanner) &&
            (identical(other.posts, posts) || other.posts == posts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      vendor,
      const DeepCollectionEquality().hash(_advertisements),
      const DeepCollectionEquality().hash(_hotProducts),
      scratchBanner,
      posts);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VendorDataImplCopyWith<_$VendorDataImpl> get copyWith =>
      __$$VendorDataImplCopyWithImpl<_$VendorDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VendorDataImplToJson(
      this,
    );
  }
}

abstract class _VendorData implements VendorData {
  factory _VendorData(
      {final Vendor? vendor,
      final List<Advertisement> advertisements,
      final List<HotProduct> hotProducts,
      final String? scratchBanner,
      final Posts? posts}) = _$VendorDataImpl;

  factory _VendorData.fromJson(Map<String, dynamic> json) =
      _$VendorDataImpl.fromJson;

  @override
  Vendor? get vendor;
  @override
  List<Advertisement> get advertisements;
  @override
  List<HotProduct> get hotProducts;
  @override
  String? get scratchBanner;
  @override
  Posts? get posts;
  @override
  @JsonKey(ignore: true)
  _$$VendorDataImplCopyWith<_$VendorDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Vendor _$VendorFromJson(Map<String, dynamic> json) {
  return _Vendor.fromJson(json);
}

/// @nodoc
mixin _$Vendor {
  String? get id => throw _privateConstructorUsedError;
  String? get countryCode => throw _privateConstructorUsedError;
  String? get languageCode => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VendorCopyWith<Vendor> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendorCopyWith<$Res> {
  factory $VendorCopyWith(Vendor value, $Res Function(Vendor) then) =
      _$VendorCopyWithImpl<$Res, Vendor>;
  @useResult
  $Res call(
      {String? id,
      String? countryCode,
      String? languageCode,
      String? name,
      String? photo,
      String? phone,
      String? username});
}

/// @nodoc
class _$VendorCopyWithImpl<$Res, $Val extends Vendor>
    implements $VendorCopyWith<$Res> {
  _$VendorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? countryCode = freezed,
    Object? languageCode = freezed,
    Object? name = freezed,
    Object? photo = freezed,
    Object? phone = freezed,
    Object? username = freezed,
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
      languageCode: freezed == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VendorImplCopyWith<$Res> implements $VendorCopyWith<$Res> {
  factory _$$VendorImplCopyWith(
          _$VendorImpl value, $Res Function(_$VendorImpl) then) =
      __$$VendorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? countryCode,
      String? languageCode,
      String? name,
      String? photo,
      String? phone,
      String? username});
}

/// @nodoc
class __$$VendorImplCopyWithImpl<$Res>
    extends _$VendorCopyWithImpl<$Res, _$VendorImpl>
    implements _$$VendorImplCopyWith<$Res> {
  __$$VendorImplCopyWithImpl(
      _$VendorImpl _value, $Res Function(_$VendorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? countryCode = freezed,
    Object? languageCode = freezed,
    Object? name = freezed,
    Object? photo = freezed,
    Object? phone = freezed,
    Object? username = freezed,
  }) {
    return _then(_$VendorImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      languageCode: freezed == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VendorImpl implements _Vendor {
  _$VendorImpl(
      {this.id,
      this.countryCode,
      this.languageCode,
      this.name,
      this.photo,
      this.phone,
      this.username});

  factory _$VendorImpl.fromJson(Map<String, dynamic> json) =>
      _$$VendorImplFromJson(json);

  @override
  final String? id;
  @override
  final String? countryCode;
  @override
  final String? languageCode;
  @override
  final String? name;
  @override
  final String? photo;
  @override
  final String? phone;
  @override
  final String? username;

  @override
  String toString() {
    return 'Vendor(id: $id, countryCode: $countryCode, languageCode: $languageCode, name: $name, photo: $photo, phone: $phone, username: $username)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VendorImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.languageCode, languageCode) ||
                other.languageCode == languageCode) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, countryCode, languageCode, name, photo, phone, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VendorImplCopyWith<_$VendorImpl> get copyWith =>
      __$$VendorImplCopyWithImpl<_$VendorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VendorImplToJson(
      this,
    );
  }
}

abstract class _Vendor implements Vendor {
  factory _Vendor(
      {final String? id,
      final String? countryCode,
      final String? languageCode,
      final String? name,
      final String? photo,
      final String? phone,
      final String? username}) = _$VendorImpl;

  factory _Vendor.fromJson(Map<String, dynamic> json) = _$VendorImpl.fromJson;

  @override
  String? get id;
  @override
  String? get countryCode;
  @override
  String? get languageCode;
  @override
  String? get name;
  @override
  String? get photo;
  @override
  String? get phone;
  @override
  String? get username;
  @override
  @JsonKey(ignore: true)
  _$$VendorImplCopyWith<_$VendorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Advertisement _$AdvertisementFromJson(Map<String, dynamic> json) {
  return _Advertisement.fromJson(json);
}

/// @nodoc
mixin _$Advertisement {
  String? get id => throw _privateConstructorUsedError;
  String? get order => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdvertisementCopyWith<Advertisement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdvertisementCopyWith<$Res> {
  factory $AdvertisementCopyWith(
          Advertisement value, $Res Function(Advertisement) then) =
      _$AdvertisementCopyWithImpl<$Res, Advertisement>;
  @useResult
  $Res call(
      {String? id, String? order, String? status, String? image, String? link});
}

/// @nodoc
class _$AdvertisementCopyWithImpl<$Res, $Val extends Advertisement>
    implements $AdvertisementCopyWith<$Res> {
  _$AdvertisementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? order = freezed,
    Object? status = freezed,
    Object? image = freezed,
    Object? link = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdvertisementImplCopyWith<$Res>
    implements $AdvertisementCopyWith<$Res> {
  factory _$$AdvertisementImplCopyWith(
          _$AdvertisementImpl value, $Res Function(_$AdvertisementImpl) then) =
      __$$AdvertisementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id, String? order, String? status, String? image, String? link});
}

/// @nodoc
class __$$AdvertisementImplCopyWithImpl<$Res>
    extends _$AdvertisementCopyWithImpl<$Res, _$AdvertisementImpl>
    implements _$$AdvertisementImplCopyWith<$Res> {
  __$$AdvertisementImplCopyWithImpl(
      _$AdvertisementImpl _value, $Res Function(_$AdvertisementImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? order = freezed,
    Object? status = freezed,
    Object? image = freezed,
    Object? link = freezed,
  }) {
    return _then(_$AdvertisementImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdvertisementImpl implements _Advertisement {
  _$AdvertisementImpl(
      {this.id, this.order, this.status, this.image, this.link});

  factory _$AdvertisementImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdvertisementImplFromJson(json);

  @override
  final String? id;
  @override
  final String? order;
  @override
  final String? status;
  @override
  final String? image;
  @override
  final String? link;

  @override
  String toString() {
    return 'Advertisement(id: $id, order: $order, status: $status, image: $image, link: $link)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdvertisementImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.link, link) || other.link == link));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, order, status, image, link);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdvertisementImplCopyWith<_$AdvertisementImpl> get copyWith =>
      __$$AdvertisementImplCopyWithImpl<_$AdvertisementImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdvertisementImplToJson(
      this,
    );
  }
}

abstract class _Advertisement implements Advertisement {
  factory _Advertisement(
      {final String? id,
      final String? order,
      final String? status,
      final String? image,
      final String? link}) = _$AdvertisementImpl;

  factory _Advertisement.fromJson(Map<String, dynamic> json) =
      _$AdvertisementImpl.fromJson;

  @override
  String? get id;
  @override
  String? get order;
  @override
  String? get status;
  @override
  String? get image;
  @override
  String? get link;
  @override
  @JsonKey(ignore: true)
  _$$AdvertisementImplCopyWith<_$AdvertisementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HotProduct _$HotProductFromJson(Map<String, dynamic> json) {
  return _HotProduct.fromJson(json);
}

/// @nodoc
mixin _$HotProduct {
  String? get id => throw _privateConstructorUsedError;
  String? get countryCode => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HotProductCopyWith<HotProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotProductCopyWith<$Res> {
  factory $HotProductCopyWith(
          HotProduct value, $Res Function(HotProduct) then) =
      _$HotProductCopyWithImpl<$Res, HotProduct>;
  @useResult
  $Res call(
      {String? id,
      String? countryCode,
      String? title,
      String? description,
      String? price,
      String? image});
}

/// @nodoc
class _$HotProductCopyWithImpl<$Res, $Val extends HotProduct>
    implements $HotProductCopyWith<$Res> {
  _$HotProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? countryCode = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? image = freezed,
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
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HotProductImplCopyWith<$Res>
    implements $HotProductCopyWith<$Res> {
  factory _$$HotProductImplCopyWith(
          _$HotProductImpl value, $Res Function(_$HotProductImpl) then) =
      __$$HotProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? countryCode,
      String? title,
      String? description,
      String? price,
      String? image});
}

/// @nodoc
class __$$HotProductImplCopyWithImpl<$Res>
    extends _$HotProductCopyWithImpl<$Res, _$HotProductImpl>
    implements _$$HotProductImplCopyWith<$Res> {
  __$$HotProductImplCopyWithImpl(
      _$HotProductImpl _value, $Res Function(_$HotProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? countryCode = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? image = freezed,
  }) {
    return _then(_$HotProductImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
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
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HotProductImpl implements _HotProduct {
  _$HotProductImpl(
      {this.id,
      this.countryCode,
      this.title,
      this.description,
      this.price,
      this.image});

  factory _$HotProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$HotProductImplFromJson(json);

  @override
  final String? id;
  @override
  final String? countryCode;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? price;
  @override
  final String? image;

  @override
  String toString() {
    return 'HotProduct(id: $id, countryCode: $countryCode, title: $title, description: $description, price: $price, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, countryCode, title, description, price, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HotProductImplCopyWith<_$HotProductImpl> get copyWith =>
      __$$HotProductImplCopyWithImpl<_$HotProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HotProductImplToJson(
      this,
    );
  }
}

abstract class _HotProduct implements HotProduct {
  factory _HotProduct(
      {final String? id,
      final String? countryCode,
      final String? title,
      final String? description,
      final String? price,
      final String? image}) = _$HotProductImpl;

  factory _HotProduct.fromJson(Map<String, dynamic> json) =
      _$HotProductImpl.fromJson;

  @override
  String? get id;
  @override
  String? get countryCode;
  @override
  String? get title;
  @override
  String? get description;
  @override
  String? get price;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$HotProductImplCopyWith<_$HotProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Post _$PostFromJson(Map<String, dynamic> json) {
  return _Post.fromJson(json);
}

/// @nodoc
mixin _$Post {
  String? get id => throw _privateConstructorUsedError;
  String? get countryCode => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get categoryId => throw _privateConstructorUsedError;
  String? get postTypeId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostCopyWith<Post> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCopyWith<$Res> {
  factory $PostCopyWith(Post value, $Res Function(Post) then) =
      _$PostCopyWithImpl<$Res, Post>;
  @useResult
  $Res call(
      {String? id,
      String? countryCode,
      String? userId,
      String? categoryId,
      String? postTypeId,
      String? title,
      String? description,
      String? price,
      String? image,
      String? createdAt});
}

/// @nodoc
class _$PostCopyWithImpl<$Res, $Val extends Post>
    implements $PostCopyWith<$Res> {
  _$PostCopyWithImpl(this._value, this._then);

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
    Object? image = freezed,
    Object? createdAt = freezed,
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
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostImplCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$$PostImplCopyWith(
          _$PostImpl value, $Res Function(_$PostImpl) then) =
      __$$PostImplCopyWithImpl<$Res>;
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
      String? price,
      String? image,
      String? createdAt});
}

/// @nodoc
class __$$PostImplCopyWithImpl<$Res>
    extends _$PostCopyWithImpl<$Res, _$PostImpl>
    implements _$$PostImplCopyWith<$Res> {
  __$$PostImplCopyWithImpl(_$PostImpl _value, $Res Function(_$PostImpl) _then)
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
    Object? image = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$PostImpl(
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
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostImpl implements _Post {
  _$PostImpl(
      {this.id,
      this.countryCode,
      this.userId,
      this.categoryId,
      this.postTypeId,
      this.title,
      this.description,
      this.price,
      this.image,
      this.createdAt});

  factory _$PostImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostImplFromJson(json);

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
  final String? price;
  @override
  final String? image;
  @override
  final String? createdAt;

  @override
  String toString() {
    return 'Post(id: $id, countryCode: $countryCode, userId: $userId, categoryId: $categoryId, postTypeId: $postTypeId, title: $title, description: $description, price: $price, image: $image, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostImpl &&
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
            (identical(other.image, image) || other.image == image) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, countryCode, userId,
      categoryId, postTypeId, title, description, price, image, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostImplCopyWith<_$PostImpl> get copyWith =>
      __$$PostImplCopyWithImpl<_$PostImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostImplToJson(
      this,
    );
  }
}

abstract class _Post implements Post {
  factory _Post(
      {final String? id,
      final String? countryCode,
      final String? userId,
      final String? categoryId,
      final String? postTypeId,
      final String? title,
      final String? description,
      final String? price,
      final String? image,
      final String? createdAt}) = _$PostImpl;

  factory _Post.fromJson(Map<String, dynamic> json) = _$PostImpl.fromJson;

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
  String? get price;
  @override
  String? get image;
  @override
  String? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$PostImplCopyWith<_$PostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Posts _$PostsFromJson(Map<String, dynamic> json) {
  return _Posts.fromJson(json);
}

/// @nodoc
mixin _$Posts {
  int? get currentPage => throw _privateConstructorUsedError;
  List<Post> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostsCopyWith<Posts> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostsCopyWith<$Res> {
  factory $PostsCopyWith(Posts value, $Res Function(Posts) then) =
      _$PostsCopyWithImpl<$Res, Posts>;
  @useResult
  $Res call({int? currentPage, List<Post> data});
}

/// @nodoc
class _$PostsCopyWithImpl<$Res, $Val extends Posts>
    implements $PostsCopyWith<$Res> {
  _$PostsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Post>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostsImplCopyWith<$Res> implements $PostsCopyWith<$Res> {
  factory _$$PostsImplCopyWith(
          _$PostsImpl value, $Res Function(_$PostsImpl) then) =
      __$$PostsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? currentPage, List<Post> data});
}

/// @nodoc
class __$$PostsImplCopyWithImpl<$Res>
    extends _$PostsCopyWithImpl<$Res, _$PostsImpl>
    implements _$$PostsImplCopyWith<$Res> {
  __$$PostsImplCopyWithImpl(
      _$PostsImpl _value, $Res Function(_$PostsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? data = null,
  }) {
    return _then(_$PostsImpl(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Post>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostsImpl implements _Posts {
  _$PostsImpl({this.currentPage, final List<Post> data = const []})
      : _data = data;

  factory _$PostsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostsImplFromJson(json);

  @override
  final int? currentPage;
  final List<Post> _data;
  @override
  @JsonKey()
  List<Post> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'Posts(currentPage: $currentPage, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostsImpl &&
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
  _$$PostsImplCopyWith<_$PostsImpl> get copyWith =>
      __$$PostsImplCopyWithImpl<_$PostsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostsImplToJson(
      this,
    );
  }
}

abstract class _Posts implements Posts {
  factory _Posts({final int? currentPage, final List<Post> data}) = _$PostsImpl;

  factory _Posts.fromJson(Map<String, dynamic> json) = _$PostsImpl.fromJson;

  @override
  int? get currentPage;
  @override
  List<Post> get data;
  @override
  @JsonKey(ignore: true)
  _$$PostsImplCopyWith<_$PostsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
