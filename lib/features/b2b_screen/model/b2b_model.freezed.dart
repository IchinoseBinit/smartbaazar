// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'b2b_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

B2bModel _$B2bModelFromJson(Map<String, dynamic> json) {
  return _B2bModel.fromJson(json);
}

/// @nodoc
mixin _$B2bModel {
  String? get posttype_name => throw _privateConstructorUsedError;
  String? get post_type_id => throw _privateConstructorUsedError;
  List<Product>? get hot_products => throw _privateConstructorUsedError;
  B2bProducts? get products => throw _privateConstructorUsedError;
  List<B2bAdvertisement>? get advertisements =>
      throw _privateConstructorUsedError;
  List<B2bSlider>? get sliders => throw _privateConstructorUsedError;

  /// Serializes this B2bModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of B2bModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $B2bModelCopyWith<B2bModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $B2bModelCopyWith<$Res> {
  factory $B2bModelCopyWith(B2bModel value, $Res Function(B2bModel) then) =
      _$B2bModelCopyWithImpl<$Res, B2bModel>;
  @useResult
  $Res call(
      {String? posttype_name,
      String? post_type_id,
      List<Product>? hot_products,
      B2bProducts? products,
      List<B2bAdvertisement>? advertisements,
      List<B2bSlider>? sliders});

  $B2bProductsCopyWith<$Res>? get products;
}

/// @nodoc
class _$B2bModelCopyWithImpl<$Res, $Val extends B2bModel>
    implements $B2bModelCopyWith<$Res> {
  _$B2bModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of B2bModel
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
              as List<Product>?,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as B2bProducts?,
      advertisements: freezed == advertisements
          ? _value.advertisements
          : advertisements // ignore: cast_nullable_to_non_nullable
              as List<B2bAdvertisement>?,
      sliders: freezed == sliders
          ? _value.sliders
          : sliders // ignore: cast_nullable_to_non_nullable
              as List<B2bSlider>?,
    ) as $Val);
  }

  /// Create a copy of B2bModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $B2bProductsCopyWith<$Res>? get products {
    if (_value.products == null) {
      return null;
    }

    return $B2bProductsCopyWith<$Res>(_value.products!, (value) {
      return _then(_value.copyWith(products: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$B2bModelImplCopyWith<$Res>
    implements $B2bModelCopyWith<$Res> {
  factory _$$B2bModelImplCopyWith(
          _$B2bModelImpl value, $Res Function(_$B2bModelImpl) then) =
      __$$B2bModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? posttype_name,
      String? post_type_id,
      List<Product>? hot_products,
      B2bProducts? products,
      List<B2bAdvertisement>? advertisements,
      List<B2bSlider>? sliders});

  @override
  $B2bProductsCopyWith<$Res>? get products;
}

/// @nodoc
class __$$B2bModelImplCopyWithImpl<$Res>
    extends _$B2bModelCopyWithImpl<$Res, _$B2bModelImpl>
    implements _$$B2bModelImplCopyWith<$Res> {
  __$$B2bModelImplCopyWithImpl(
      _$B2bModelImpl _value, $Res Function(_$B2bModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of B2bModel
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
    return _then(_$B2bModelImpl(
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
              as List<Product>?,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as B2bProducts?,
      advertisements: freezed == advertisements
          ? _value._advertisements
          : advertisements // ignore: cast_nullable_to_non_nullable
              as List<B2bAdvertisement>?,
      sliders: freezed == sliders
          ? _value._sliders
          : sliders // ignore: cast_nullable_to_non_nullable
              as List<B2bSlider>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$B2bModelImpl implements _B2bModel {
  const _$B2bModelImpl(
      {this.posttype_name,
      this.post_type_id,
      final List<Product>? hot_products,
      this.products,
      final List<B2bAdvertisement>? advertisements,
      final List<B2bSlider>? sliders})
      : _hot_products = hot_products,
        _advertisements = advertisements,
        _sliders = sliders;

  factory _$B2bModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$B2bModelImplFromJson(json);

  @override
  final String? posttype_name;
  @override
  final String? post_type_id;
  final List<Product>? _hot_products;
  @override
  List<Product>? get hot_products {
    final value = _hot_products;
    if (value == null) return null;
    if (_hot_products is EqualUnmodifiableListView) return _hot_products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final B2bProducts? products;
  final List<B2bAdvertisement>? _advertisements;
  @override
  List<B2bAdvertisement>? get advertisements {
    final value = _advertisements;
    if (value == null) return null;
    if (_advertisements is EqualUnmodifiableListView) return _advertisements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<B2bSlider>? _sliders;
  @override
  List<B2bSlider>? get sliders {
    final value = _sliders;
    if (value == null) return null;
    if (_sliders is EqualUnmodifiableListView) return _sliders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'B2bModel(posttype_name: $posttype_name, post_type_id: $post_type_id, hot_products: $hot_products, products: $products, advertisements: $advertisements, sliders: $sliders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$B2bModelImpl &&
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

  /// Create a copy of B2bModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$B2bModelImplCopyWith<_$B2bModelImpl> get copyWith =>
      __$$B2bModelImplCopyWithImpl<_$B2bModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$B2bModelImplToJson(
      this,
    );
  }
}

abstract class _B2bModel implements B2bModel {
  const factory _B2bModel(
      {final String? posttype_name,
      final String? post_type_id,
      final List<Product>? hot_products,
      final B2bProducts? products,
      final List<B2bAdvertisement>? advertisements,
      final List<B2bSlider>? sliders}) = _$B2bModelImpl;

  factory _B2bModel.fromJson(Map<String, dynamic> json) =
      _$B2bModelImpl.fromJson;

  @override
  String? get posttype_name;
  @override
  String? get post_type_id;
  @override
  List<Product>? get hot_products;
  @override
  B2bProducts? get products;
  @override
  List<B2bAdvertisement>? get advertisements;
  @override
  List<B2bSlider>? get sliders;

  /// Create a copy of B2bModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$B2bModelImplCopyWith<_$B2bModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

B2bProducts _$B2bProductsFromJson(Map<String, dynamic> json) {
  return _B2bProducts.fromJson(json);
}

/// @nodoc
mixin _$B2bProducts {
  int? get current_page => throw _privateConstructorUsedError;
  List<Product>? get data => throw _privateConstructorUsedError;

  /// Serializes this B2bProducts to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of B2bProducts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $B2bProductsCopyWith<B2bProducts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $B2bProductsCopyWith<$Res> {
  factory $B2bProductsCopyWith(
          B2bProducts value, $Res Function(B2bProducts) then) =
      _$B2bProductsCopyWithImpl<$Res, B2bProducts>;
  @useResult
  $Res call({int? current_page, List<Product>? data});
}

/// @nodoc
class _$B2bProductsCopyWithImpl<$Res, $Val extends B2bProducts>
    implements $B2bProductsCopyWith<$Res> {
  _$B2bProductsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of B2bProducts
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
              as List<Product>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$B2bProductsImplCopyWith<$Res>
    implements $B2bProductsCopyWith<$Res> {
  factory _$$B2bProductsImplCopyWith(
          _$B2bProductsImpl value, $Res Function(_$B2bProductsImpl) then) =
      __$$B2bProductsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? current_page, List<Product>? data});
}

/// @nodoc
class __$$B2bProductsImplCopyWithImpl<$Res>
    extends _$B2bProductsCopyWithImpl<$Res, _$B2bProductsImpl>
    implements _$$B2bProductsImplCopyWith<$Res> {
  __$$B2bProductsImplCopyWithImpl(
      _$B2bProductsImpl _value, $Res Function(_$B2bProductsImpl) _then)
      : super(_value, _then);

  /// Create a copy of B2bProducts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current_page = freezed,
    Object? data = freezed,
  }) {
    return _then(_$B2bProductsImpl(
      current_page: freezed == current_page
          ? _value.current_page
          : current_page // ignore: cast_nullable_to_non_nullable
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
class _$B2bProductsImpl implements _B2bProducts {
  const _$B2bProductsImpl({this.current_page, final List<Product>? data})
      : _data = data;

  factory _$B2bProductsImpl.fromJson(Map<String, dynamic> json) =>
      _$$B2bProductsImplFromJson(json);

  @override
  final int? current_page;
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
    return 'B2bProducts(current_page: $current_page, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$B2bProductsImpl &&
            (identical(other.current_page, current_page) ||
                other.current_page == current_page) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, current_page, const DeepCollectionEquality().hash(_data));

  /// Create a copy of B2bProducts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$B2bProductsImplCopyWith<_$B2bProductsImpl> get copyWith =>
      __$$B2bProductsImplCopyWithImpl<_$B2bProductsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$B2bProductsImplToJson(
      this,
    );
  }
}

abstract class _B2bProducts implements B2bProducts {
  const factory _B2bProducts(
      {final int? current_page, final List<Product>? data}) = _$B2bProductsImpl;

  factory _B2bProducts.fromJson(Map<String, dynamic> json) =
      _$B2bProductsImpl.fromJson;

  @override
  int? get current_page;
  @override
  List<Product>? get data;

  /// Create a copy of B2bProducts
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$B2bProductsImplCopyWith<_$B2bProductsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

B2bAdvertisement _$B2bAdvertisementFromJson(Map<String, dynamic> json) {
  return _B2bAdvertisement.fromJson(json);
}

/// @nodoc
mixin _$B2bAdvertisement {
  String? get id => throw _privateConstructorUsedError;
  String? get order => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;

  /// Serializes this B2bAdvertisement to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of B2bAdvertisement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $B2bAdvertisementCopyWith<B2bAdvertisement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $B2bAdvertisementCopyWith<$Res> {
  factory $B2bAdvertisementCopyWith(
          B2bAdvertisement value, $Res Function(B2bAdvertisement) then) =
      _$B2bAdvertisementCopyWithImpl<$Res, B2bAdvertisement>;
  @useResult
  $Res call(
      {String? id, String? order, String? status, String? image, String? link});
}

/// @nodoc
class _$B2bAdvertisementCopyWithImpl<$Res, $Val extends B2bAdvertisement>
    implements $B2bAdvertisementCopyWith<$Res> {
  _$B2bAdvertisementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of B2bAdvertisement
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
abstract class _$$B2bAdvertisementImplCopyWith<$Res>
    implements $B2bAdvertisementCopyWith<$Res> {
  factory _$$B2bAdvertisementImplCopyWith(_$B2bAdvertisementImpl value,
          $Res Function(_$B2bAdvertisementImpl) then) =
      __$$B2bAdvertisementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id, String? order, String? status, String? image, String? link});
}

/// @nodoc
class __$$B2bAdvertisementImplCopyWithImpl<$Res>
    extends _$B2bAdvertisementCopyWithImpl<$Res, _$B2bAdvertisementImpl>
    implements _$$B2bAdvertisementImplCopyWith<$Res> {
  __$$B2bAdvertisementImplCopyWithImpl(_$B2bAdvertisementImpl _value,
      $Res Function(_$B2bAdvertisementImpl) _then)
      : super(_value, _then);

  /// Create a copy of B2bAdvertisement
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
    return _then(_$B2bAdvertisementImpl(
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
class _$B2bAdvertisementImpl implements _B2bAdvertisement {
  const _$B2bAdvertisementImpl(
      {this.id, this.order, this.status, this.image, this.link});

  factory _$B2bAdvertisementImpl.fromJson(Map<String, dynamic> json) =>
      _$$B2bAdvertisementImplFromJson(json);

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
    return 'B2bAdvertisement(id: $id, order: $order, status: $status, image: $image, link: $link)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$B2bAdvertisementImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.link, link) || other.link == link));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, order, status, image, link);

  /// Create a copy of B2bAdvertisement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$B2bAdvertisementImplCopyWith<_$B2bAdvertisementImpl> get copyWith =>
      __$$B2bAdvertisementImplCopyWithImpl<_$B2bAdvertisementImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$B2bAdvertisementImplToJson(
      this,
    );
  }
}

abstract class _B2bAdvertisement implements B2bAdvertisement {
  const factory _B2bAdvertisement(
      {final String? id,
      final String? order,
      final String? status,
      final String? image,
      final String? link}) = _$B2bAdvertisementImpl;

  factory _B2bAdvertisement.fromJson(Map<String, dynamic> json) =
      _$B2bAdvertisementImpl.fromJson;

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

  /// Create a copy of B2bAdvertisement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$B2bAdvertisementImplCopyWith<_$B2bAdvertisementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

B2bSlider _$B2bSliderFromJson(Map<String, dynamic> json) {
  return _B2bSlider.fromJson(json);
}

/// @nodoc
mixin _$B2bSlider {
  String? get id => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;
  String? get page => throw _privateConstructorUsedError;

  /// Serializes this B2bSlider to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of B2bSlider
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $B2bSliderCopyWith<B2bSlider> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $B2bSliderCopyWith<$Res> {
  factory $B2bSliderCopyWith(B2bSlider value, $Res Function(B2bSlider) then) =
      _$B2bSliderCopyWithImpl<$Res, B2bSlider>;
  @useResult
  $Res call(
      {String? id,
      String? image,
      String? description,
      String? link,
      String? page});
}

/// @nodoc
class _$B2bSliderCopyWithImpl<$Res, $Val extends B2bSlider>
    implements $B2bSliderCopyWith<$Res> {
  _$B2bSliderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of B2bSlider
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
abstract class _$$B2bSliderImplCopyWith<$Res>
    implements $B2bSliderCopyWith<$Res> {
  factory _$$B2bSliderImplCopyWith(
          _$B2bSliderImpl value, $Res Function(_$B2bSliderImpl) then) =
      __$$B2bSliderImplCopyWithImpl<$Res>;
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
class __$$B2bSliderImplCopyWithImpl<$Res>
    extends _$B2bSliderCopyWithImpl<$Res, _$B2bSliderImpl>
    implements _$$B2bSliderImplCopyWith<$Res> {
  __$$B2bSliderImplCopyWithImpl(
      _$B2bSliderImpl _value, $Res Function(_$B2bSliderImpl) _then)
      : super(_value, _then);

  /// Create a copy of B2bSlider
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
    return _then(_$B2bSliderImpl(
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
class _$B2bSliderImpl implements _B2bSlider {
  const _$B2bSliderImpl(
      {this.id, this.image, this.description, this.link, this.page});

  factory _$B2bSliderImpl.fromJson(Map<String, dynamic> json) =>
      _$$B2bSliderImplFromJson(json);

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
    return 'B2bSlider(id: $id, image: $image, description: $description, link: $link, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$B2bSliderImpl &&
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

  /// Create a copy of B2bSlider
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$B2bSliderImplCopyWith<_$B2bSliderImpl> get copyWith =>
      __$$B2bSliderImplCopyWithImpl<_$B2bSliderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$B2bSliderImplToJson(
      this,
    );
  }
}

abstract class _B2bSlider implements B2bSlider {
  const factory _B2bSlider(
      {final String? id,
      final String? image,
      final String? description,
      final String? link,
      final String? page}) = _$B2bSliderImpl;

  factory _B2bSlider.fromJson(Map<String, dynamic> json) =
      _$B2bSliderImpl.fromJson;

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

  /// Create a copy of B2bSlider
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$B2bSliderImplCopyWith<_$B2bSliderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
