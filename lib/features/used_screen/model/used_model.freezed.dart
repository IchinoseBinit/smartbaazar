// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'used_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UsedModel _$UsedModelFromJson(Map<String, dynamic> json) {
  return _UsedModel.fromJson(json);
}

/// @nodoc
mixin _$UsedModel {
  String? get posttype_name => throw _privateConstructorUsedError;
  String? get post_type_id => throw _privateConstructorUsedError;
  List<UsedProduct>? get hot_products => throw _privateConstructorUsedError;
  UsedProducts? get products => throw _privateConstructorUsedError;
  List<UsedAdvertisement>? get advertisements =>
      throw _privateConstructorUsedError;
  List<UsedSlider>? get sliders => throw _privateConstructorUsedError;

  /// Serializes this UsedModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UsedModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UsedModelCopyWith<UsedModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsedModelCopyWith<$Res> {
  factory $UsedModelCopyWith(UsedModel value, $Res Function(UsedModel) then) =
      _$UsedModelCopyWithImpl<$Res, UsedModel>;
  @useResult
  $Res call(
      {String? posttype_name,
      String? post_type_id,
      List<UsedProduct>? hot_products,
      UsedProducts? products,
      List<UsedAdvertisement>? advertisements,
      List<UsedSlider>? sliders});

  $UsedProductsCopyWith<$Res>? get products;
}

/// @nodoc
class _$UsedModelCopyWithImpl<$Res, $Val extends UsedModel>
    implements $UsedModelCopyWith<$Res> {
  _$UsedModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UsedModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posttype_name = freezed,
    Object? post_type_id = freezed,
    Object? hot_products = freezed,
    Object? products = freezed,
    Object? advertisements = freezed,
    Object? sliders = freezed,
  }) {
    return _then(_value.copyWith(
      posttype_name: freezed == posttype_name
          ? _value.posttype_name
          : posttype_name // ignore: cast_nullable_to_non_nullable
              as String?,
      post_type_id: freezed == post_type_id
          ? _value.post_type_id
          : post_type_id // ignore: cast_nullable_to_non_nullable
              as String?,
      hot_products: freezed == hot_products
          ? _value.hot_products
          : hot_products // ignore: cast_nullable_to_non_nullable
              as List<UsedProduct>?,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as UsedProducts?,
      advertisements: freezed == advertisements
          ? _value.advertisements
          : advertisements // ignore: cast_nullable_to_non_nullable
              as List<UsedAdvertisement>?,
      sliders: freezed == sliders
          ? _value.sliders
          : sliders // ignore: cast_nullable_to_non_nullable
              as List<UsedSlider>?,
    ) as $Val);
  }

  /// Create a copy of UsedModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UsedProductsCopyWith<$Res>? get products {
    if (_value.products == null) {
      return null;
    }

    return $UsedProductsCopyWith<$Res>(_value.products!, (value) {
      return _then(_value.copyWith(products: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UsedModelImplCopyWith<$Res>
    implements $UsedModelCopyWith<$Res> {
  factory _$$UsedModelImplCopyWith(
          _$UsedModelImpl value, $Res Function(_$UsedModelImpl) then) =
      __$$UsedModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? posttype_name,
      String? post_type_id,
      List<UsedProduct>? hot_products,
      UsedProducts? products,
      List<UsedAdvertisement>? advertisements,
      List<UsedSlider>? sliders});

  @override
  $UsedProductsCopyWith<$Res>? get products;
}

/// @nodoc
class __$$UsedModelImplCopyWithImpl<$Res>
    extends _$UsedModelCopyWithImpl<$Res, _$UsedModelImpl>
    implements _$$UsedModelImplCopyWith<$Res> {
  __$$UsedModelImplCopyWithImpl(
      _$UsedModelImpl _value, $Res Function(_$UsedModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UsedModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posttype_name = freezed,
    Object? post_type_id = freezed,
    Object? hot_products = freezed,
    Object? products = freezed,
    Object? advertisements = freezed,
    Object? sliders = freezed,
  }) {
    return _then(_$UsedModelImpl(
      posttype_name: freezed == posttype_name
          ? _value.posttype_name
          : posttype_name // ignore: cast_nullable_to_non_nullable
              as String?,
      post_type_id: freezed == post_type_id
          ? _value.post_type_id
          : post_type_id // ignore: cast_nullable_to_non_nullable
              as String?,
      hot_products: freezed == hot_products
          ? _value._hot_products
          : hot_products // ignore: cast_nullable_to_non_nullable
              as List<UsedProduct>?,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as UsedProducts?,
      advertisements: freezed == advertisements
          ? _value._advertisements
          : advertisements // ignore: cast_nullable_to_non_nullable
              as List<UsedAdvertisement>?,
      sliders: freezed == sliders
          ? _value._sliders
          : sliders // ignore: cast_nullable_to_non_nullable
              as List<UsedSlider>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UsedModelImpl implements _UsedModel {
  const _$UsedModelImpl(
      {this.posttype_name,
      this.post_type_id,
      final List<UsedProduct>? hot_products,
      this.products,
      final List<UsedAdvertisement>? advertisements,
      final List<UsedSlider>? sliders})
      : _hot_products = hot_products,
        _advertisements = advertisements,
        _sliders = sliders;

  factory _$UsedModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UsedModelImplFromJson(json);

  @override
  final String? posttype_name;
  @override
  final String? post_type_id;
  final List<UsedProduct>? _hot_products;
  @override
  List<UsedProduct>? get hot_products {
    final value = _hot_products;
    if (value == null) return null;
    if (_hot_products is EqualUnmodifiableListView) return _hot_products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final UsedProducts? products;
  final List<UsedAdvertisement>? _advertisements;
  @override
  List<UsedAdvertisement>? get advertisements {
    final value = _advertisements;
    if (value == null) return null;
    if (_advertisements is EqualUnmodifiableListView) return _advertisements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<UsedSlider>? _sliders;
  @override
  List<UsedSlider>? get sliders {
    final value = _sliders;
    if (value == null) return null;
    if (_sliders is EqualUnmodifiableListView) return _sliders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UsedModel(posttype_name: $posttype_name, post_type_id: $post_type_id, hot_products: $hot_products, products: $products, advertisements: $advertisements, sliders: $sliders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsedModelImpl &&
            (identical(other.posttype_name, posttype_name) ||
                other.posttype_name == posttype_name) &&
            (identical(other.post_type_id, post_type_id) ||
                other.post_type_id == post_type_id) &&
            const DeepCollectionEquality()
                .equals(other._hot_products, _hot_products) &&
            (identical(other.products, products) ||
                other.products == products) &&
            const DeepCollectionEquality()
                .equals(other._advertisements, _advertisements) &&
            const DeepCollectionEquality().equals(other._sliders, _sliders));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      posttype_name,
      post_type_id,
      const DeepCollectionEquality().hash(_hot_products),
      products,
      const DeepCollectionEquality().hash(_advertisements),
      const DeepCollectionEquality().hash(_sliders));

  /// Create a copy of UsedModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UsedModelImplCopyWith<_$UsedModelImpl> get copyWith =>
      __$$UsedModelImplCopyWithImpl<_$UsedModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UsedModelImplToJson(
      this,
    );
  }
}

abstract class _UsedModel implements UsedModel {
  const factory _UsedModel(
      {final String? posttype_name,
      final String? post_type_id,
      final List<UsedProduct>? hot_products,
      final UsedProducts? products,
      final List<UsedAdvertisement>? advertisements,
      final List<UsedSlider>? sliders}) = _$UsedModelImpl;

  factory _UsedModel.fromJson(Map<String, dynamic> json) =
      _$UsedModelImpl.fromJson;

  @override
  String? get posttype_name;
  @override
  String? get post_type_id;
  @override
  List<UsedProduct>? get hot_products;
  @override
  UsedProducts? get products;
  @override
  List<UsedAdvertisement>? get advertisements;
  @override
  List<UsedSlider>? get sliders;

  /// Create a copy of UsedModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UsedModelImplCopyWith<_$UsedModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UsedProducts _$UsedProductsFromJson(Map<String, dynamic> json) {
  return _UsedProducts.fromJson(json);
}

/// @nodoc
mixin _$UsedProducts {
  int? get current_page => throw _privateConstructorUsedError;
  List<UsedProduct>? get data => throw _privateConstructorUsedError;

  /// Serializes this UsedProducts to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UsedProducts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UsedProductsCopyWith<UsedProducts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsedProductsCopyWith<$Res> {
  factory $UsedProductsCopyWith(
          UsedProducts value, $Res Function(UsedProducts) then) =
      _$UsedProductsCopyWithImpl<$Res, UsedProducts>;
  @useResult
  $Res call({int? current_page, List<UsedProduct>? data});
}

/// @nodoc
class _$UsedProductsCopyWithImpl<$Res, $Val extends UsedProducts>
    implements $UsedProductsCopyWith<$Res> {
  _$UsedProductsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UsedProducts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current_page = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      current_page: freezed == current_page
          ? _value.current_page
          : current_page // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<UsedProduct>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UsedProductsImplCopyWith<$Res>
    implements $UsedProductsCopyWith<$Res> {
  factory _$$UsedProductsImplCopyWith(
          _$UsedProductsImpl value, $Res Function(_$UsedProductsImpl) then) =
      __$$UsedProductsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? current_page, List<UsedProduct>? data});
}

/// @nodoc
class __$$UsedProductsImplCopyWithImpl<$Res>
    extends _$UsedProductsCopyWithImpl<$Res, _$UsedProductsImpl>
    implements _$$UsedProductsImplCopyWith<$Res> {
  __$$UsedProductsImplCopyWithImpl(
      _$UsedProductsImpl _value, $Res Function(_$UsedProductsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UsedProducts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current_page = freezed,
    Object? data = freezed,
  }) {
    return _then(_$UsedProductsImpl(
      current_page: freezed == current_page
          ? _value.current_page
          : current_page // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<UsedProduct>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UsedProductsImpl implements _UsedProducts {
  const _$UsedProductsImpl({this.current_page, final List<UsedProduct>? data})
      : _data = data;

  factory _$UsedProductsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UsedProductsImplFromJson(json);

  @override
  final int? current_page;
  final List<UsedProduct>? _data;
  @override
  List<UsedProduct>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UsedProducts(current_page: $current_page, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsedProductsImpl &&
            (identical(other.current_page, current_page) ||
                other.current_page == current_page) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, current_page, const DeepCollectionEquality().hash(_data));

  /// Create a copy of UsedProducts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UsedProductsImplCopyWith<_$UsedProductsImpl> get copyWith =>
      __$$UsedProductsImplCopyWithImpl<_$UsedProductsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UsedProductsImplToJson(
      this,
    );
  }
}

abstract class _UsedProducts implements UsedProducts {
  const factory _UsedProducts(
      {final int? current_page,
      final List<UsedProduct>? data}) = _$UsedProductsImpl;

  factory _UsedProducts.fromJson(Map<String, dynamic> json) =
      _$UsedProductsImpl.fromJson;

  @override
  int? get current_page;
  @override
  List<UsedProduct>? get data;

  /// Create a copy of UsedProducts
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UsedProductsImplCopyWith<_$UsedProductsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UsedProduct _$UsedProductFromJson(Map<String, dynamic> json) {
  return _UsedProduct.fromJson(json);
}

/// @nodoc
mixin _$UsedProduct {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get visits => throw _privateConstructorUsedError;
  double? get avg_rating => throw _privateConstructorUsedError;
  String? get contact_name => throw _privateConstructorUsedError;
  String? get pickup => throw _privateConstructorUsedError;

  /// Serializes this UsedProduct to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UsedProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UsedProductCopyWith<UsedProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsedProductCopyWith<$Res> {
  factory $UsedProductCopyWith(
          UsedProduct value, $Res Function(UsedProduct) then) =
      _$UsedProductCopyWithImpl<$Res, UsedProduct>;
  @useResult
  $Res call(
      {String? id,
      String? title,
      String? price,
      String? image,
      String? visits,
      double? avg_rating,
      String? contact_name,
      String? pickup});
}

/// @nodoc
class _$UsedProductCopyWithImpl<$Res, $Val extends UsedProduct>
    implements $UsedProductCopyWith<$Res> {
  _$UsedProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UsedProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? image = freezed,
    Object? visits = freezed,
    Object? avg_rating = freezed,
    Object? contact_name = freezed,
    Object? pickup = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      visits: freezed == visits
          ? _value.visits
          : visits // ignore: cast_nullable_to_non_nullable
              as String?,
      avg_rating: freezed == avg_rating
          ? _value.avg_rating
          : avg_rating // ignore: cast_nullable_to_non_nullable
              as double?,
      contact_name: freezed == contact_name
          ? _value.contact_name
          : contact_name // ignore: cast_nullable_to_non_nullable
              as String?,
      pickup: freezed == pickup
          ? _value.pickup
          : pickup // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UsedProductImplCopyWith<$Res>
    implements $UsedProductCopyWith<$Res> {
  factory _$$UsedProductImplCopyWith(
          _$UsedProductImpl value, $Res Function(_$UsedProductImpl) then) =
      __$$UsedProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? title,
      String? price,
      String? image,
      String? visits,
      double? avg_rating,
      String? contact_name,
      String? pickup});
}

/// @nodoc
class __$$UsedProductImplCopyWithImpl<$Res>
    extends _$UsedProductCopyWithImpl<$Res, _$UsedProductImpl>
    implements _$$UsedProductImplCopyWith<$Res> {
  __$$UsedProductImplCopyWithImpl(
      _$UsedProductImpl _value, $Res Function(_$UsedProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of UsedProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? image = freezed,
    Object? visits = freezed,
    Object? avg_rating = freezed,
    Object? contact_name = freezed,
    Object? pickup = freezed,
  }) {
    return _then(_$UsedProductImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      visits: freezed == visits
          ? _value.visits
          : visits // ignore: cast_nullable_to_non_nullable
              as String?,
      avg_rating: freezed == avg_rating
          ? _value.avg_rating
          : avg_rating // ignore: cast_nullable_to_non_nullable
              as double?,
      contact_name: freezed == contact_name
          ? _value.contact_name
          : contact_name // ignore: cast_nullable_to_non_nullable
              as String?,
      pickup: freezed == pickup
          ? _value.pickup
          : pickup // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UsedProductImpl implements _UsedProduct {
  _$UsedProductImpl(
      {this.id,
      this.title,
      this.price,
      this.image,
      this.visits,
      this.avg_rating,
      this.contact_name,
      this.pickup});

  factory _$UsedProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$UsedProductImplFromJson(json);

  @override
  final String? id;
  @override
  final String? title;
  @override
  final String? price;
  @override
  final String? image;
  @override
  final String? visits;
  @override
  final double? avg_rating;
  @override
  final String? contact_name;
  @override
  final String? pickup;

  @override
  String toString() {
    return 'UsedProduct(id: $id, title: $title, price: $price, image: $image, visits: $visits, avg_rating: $avg_rating, contact_name: $contact_name, pickup: $pickup)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsedProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.visits, visits) || other.visits == visits) &&
            (identical(other.avg_rating, avg_rating) ||
                other.avg_rating == avg_rating) &&
            (identical(other.contact_name, contact_name) ||
                other.contact_name == contact_name) &&
            (identical(other.pickup, pickup) || other.pickup == pickup));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, price, image, visits,
      avg_rating, contact_name, pickup);

  /// Create a copy of UsedProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UsedProductImplCopyWith<_$UsedProductImpl> get copyWith =>
      __$$UsedProductImplCopyWithImpl<_$UsedProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UsedProductImplToJson(
      this,
    );
  }
}

abstract class _UsedProduct implements UsedProduct {
  factory _UsedProduct(
      {final String? id,
      final String? title,
      final String? price,
      final String? image,
      final String? visits,
      final double? avg_rating,
      final String? contact_name,
      final String? pickup}) = _$UsedProductImpl;

  factory _UsedProduct.fromJson(Map<String, dynamic> json) =
      _$UsedProductImpl.fromJson;

  @override
  String? get id;
  @override
  String? get title;
  @override
  String? get price;
  @override
  String? get image;
  @override
  String? get visits;
  @override
  double? get avg_rating;
  @override
  String? get contact_name;
  @override
  String? get pickup;

  /// Create a copy of UsedProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UsedProductImplCopyWith<_$UsedProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UsedAdvertisement _$UsedAdvertisementFromJson(Map<String, dynamic> json) {
  return _UsedAdvertisement.fromJson(json);
}

/// @nodoc
mixin _$UsedAdvertisement {
  String? get id => throw _privateConstructorUsedError;
  String? get order => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;

  /// Serializes this UsedAdvertisement to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UsedAdvertisement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UsedAdvertisementCopyWith<UsedAdvertisement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsedAdvertisementCopyWith<$Res> {
  factory $UsedAdvertisementCopyWith(
          UsedAdvertisement value, $Res Function(UsedAdvertisement) then) =
      _$UsedAdvertisementCopyWithImpl<$Res, UsedAdvertisement>;
  @useResult
  $Res call(
      {String? id, String? order, String? status, String? image, String? link});
}

/// @nodoc
class _$UsedAdvertisementCopyWithImpl<$Res, $Val extends UsedAdvertisement>
    implements $UsedAdvertisementCopyWith<$Res> {
  _$UsedAdvertisementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UsedAdvertisement
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$UsedAdvertisementImplCopyWith<$Res>
    implements $UsedAdvertisementCopyWith<$Res> {
  factory _$$UsedAdvertisementImplCopyWith(_$UsedAdvertisementImpl value,
          $Res Function(_$UsedAdvertisementImpl) then) =
      __$$UsedAdvertisementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id, String? order, String? status, String? image, String? link});
}

/// @nodoc
class __$$UsedAdvertisementImplCopyWithImpl<$Res>
    extends _$UsedAdvertisementCopyWithImpl<$Res, _$UsedAdvertisementImpl>
    implements _$$UsedAdvertisementImplCopyWith<$Res> {
  __$$UsedAdvertisementImplCopyWithImpl(_$UsedAdvertisementImpl _value,
      $Res Function(_$UsedAdvertisementImpl) _then)
      : super(_value, _then);

  /// Create a copy of UsedAdvertisement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? order = freezed,
    Object? status = freezed,
    Object? image = freezed,
    Object? link = freezed,
  }) {
    return _then(_$UsedAdvertisementImpl(
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
class _$UsedAdvertisementImpl implements _UsedAdvertisement {
  const _$UsedAdvertisementImpl(
      {this.id, this.order, this.status, this.image, this.link});

  factory _$UsedAdvertisementImpl.fromJson(Map<String, dynamic> json) =>
      _$$UsedAdvertisementImplFromJson(json);

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
    return 'UsedAdvertisement(id: $id, order: $order, status: $status, image: $image, link: $link)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsedAdvertisementImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.link, link) || other.link == link));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, order, status, image, link);

  /// Create a copy of UsedAdvertisement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UsedAdvertisementImplCopyWith<_$UsedAdvertisementImpl> get copyWith =>
      __$$UsedAdvertisementImplCopyWithImpl<_$UsedAdvertisementImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UsedAdvertisementImplToJson(
      this,
    );
  }
}

abstract class _UsedAdvertisement implements UsedAdvertisement {
  const factory _UsedAdvertisement(
      {final String? id,
      final String? order,
      final String? status,
      final String? image,
      final String? link}) = _$UsedAdvertisementImpl;

  factory _UsedAdvertisement.fromJson(Map<String, dynamic> json) =
      _$UsedAdvertisementImpl.fromJson;

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

  /// Create a copy of UsedAdvertisement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UsedAdvertisementImplCopyWith<_$UsedAdvertisementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UsedSlider _$UsedSliderFromJson(Map<String, dynamic> json) {
  return _UsedSlider.fromJson(json);
}

/// @nodoc
mixin _$UsedSlider {
  String? get id => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;
  String? get page => throw _privateConstructorUsedError;

  /// Serializes this UsedSlider to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UsedSlider
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UsedSliderCopyWith<UsedSlider> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsedSliderCopyWith<$Res> {
  factory $UsedSliderCopyWith(
          UsedSlider value, $Res Function(UsedSlider) then) =
      _$UsedSliderCopyWithImpl<$Res, UsedSlider>;
  @useResult
  $Res call(
      {String? id,
      String? image,
      String? description,
      String? link,
      String? page});
}

/// @nodoc
class _$UsedSliderCopyWithImpl<$Res, $Val extends UsedSlider>
    implements $UsedSliderCopyWith<$Res> {
  _$UsedSliderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UsedSlider
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? description = freezed,
    Object? link = freezed,
    Object? page = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UsedSliderImplCopyWith<$Res>
    implements $UsedSliderCopyWith<$Res> {
  factory _$$UsedSliderImplCopyWith(
          _$UsedSliderImpl value, $Res Function(_$UsedSliderImpl) then) =
      __$$UsedSliderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? image,
      String? description,
      String? link,
      String? page});
}

/// @nodoc
class __$$UsedSliderImplCopyWithImpl<$Res>
    extends _$UsedSliderCopyWithImpl<$Res, _$UsedSliderImpl>
    implements _$$UsedSliderImplCopyWith<$Res> {
  __$$UsedSliderImplCopyWithImpl(
      _$UsedSliderImpl _value, $Res Function(_$UsedSliderImpl) _then)
      : super(_value, _then);

  /// Create a copy of UsedSlider
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? description = freezed,
    Object? link = freezed,
    Object? page = freezed,
  }) {
    return _then(_$UsedSliderImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UsedSliderImpl implements _UsedSlider {
  const _$UsedSliderImpl(
      {this.id, this.image, this.description, this.link, this.page});

  factory _$UsedSliderImpl.fromJson(Map<String, dynamic> json) =>
      _$$UsedSliderImplFromJson(json);

  @override
  final String? id;
  @override
  final String? image;
  @override
  final String? description;
  @override
  final String? link;
  @override
  final String? page;

  @override
  String toString() {
    return 'UsedSlider(id: $id, image: $image, description: $description, link: $link, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsedSliderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.page, page) || other.page == page));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, image, description, link, page);

  /// Create a copy of UsedSlider
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UsedSliderImplCopyWith<_$UsedSliderImpl> get copyWith =>
      __$$UsedSliderImplCopyWithImpl<_$UsedSliderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UsedSliderImplToJson(
      this,
    );
  }
}

abstract class _UsedSlider implements UsedSlider {
  const factory _UsedSlider(
      {final String? id,
      final String? image,
      final String? description,
      final String? link,
      final String? page}) = _$UsedSliderImpl;

  factory _UsedSlider.fromJson(Map<String, dynamic> json) =
      _$UsedSliderImpl.fromJson;

  @override
  String? get id;
  @override
  String? get image;
  @override
  String? get description;
  @override
  String? get link;
  @override
  String? get page;

  /// Create a copy of UsedSlider
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UsedSliderImplCopyWith<_$UsedSliderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
