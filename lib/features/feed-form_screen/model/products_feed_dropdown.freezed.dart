// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_feed_dropdown.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductsFeedDropdown _$ProductsFeedDropdownFromJson(Map<String, dynamic> json) {
  return _ProductsFeedDropdown.fromJson(json);
}

/// @nodoc
mixin _$ProductsFeedDropdown {
  @JsonKey(name: 'products')
  List<Product>? get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductsFeedDropdownCopyWith<ProductsFeedDropdown> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsFeedDropdownCopyWith<$Res> {
  factory $ProductsFeedDropdownCopyWith(ProductsFeedDropdown value,
          $Res Function(ProductsFeedDropdown) then) =
      _$ProductsFeedDropdownCopyWithImpl<$Res, ProductsFeedDropdown>;
  @useResult
  $Res call({@JsonKey(name: 'products') List<Product>? products});
}

/// @nodoc
class _$ProductsFeedDropdownCopyWithImpl<$Res,
        $Val extends ProductsFeedDropdown>
    implements $ProductsFeedDropdownCopyWith<$Res> {
  _$ProductsFeedDropdownCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = freezed,
  }) {
    return _then(_value.copyWith(
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductsFeedDropdownImplCopyWith<$Res>
    implements $ProductsFeedDropdownCopyWith<$Res> {
  factory _$$ProductsFeedDropdownImplCopyWith(_$ProductsFeedDropdownImpl value,
          $Res Function(_$ProductsFeedDropdownImpl) then) =
      __$$ProductsFeedDropdownImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'products') List<Product>? products});
}

/// @nodoc
class __$$ProductsFeedDropdownImplCopyWithImpl<$Res>
    extends _$ProductsFeedDropdownCopyWithImpl<$Res, _$ProductsFeedDropdownImpl>
    implements _$$ProductsFeedDropdownImplCopyWith<$Res> {
  __$$ProductsFeedDropdownImplCopyWithImpl(_$ProductsFeedDropdownImpl _value,
      $Res Function(_$ProductsFeedDropdownImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = freezed,
  }) {
    return _then(_$ProductsFeedDropdownImpl(
      products: freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductsFeedDropdownImpl implements _ProductsFeedDropdown {
  _$ProductsFeedDropdownImpl(
      {@JsonKey(name: 'products') final List<Product>? products})
      : _products = products;

  factory _$ProductsFeedDropdownImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductsFeedDropdownImplFromJson(json);

  final List<Product>? _products;
  @override
  @JsonKey(name: 'products')
  List<Product>? get products {
    final value = _products;
    if (value == null) return null;
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProductsFeedDropdown(products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsFeedDropdownImpl &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsFeedDropdownImplCopyWith<_$ProductsFeedDropdownImpl>
      get copyWith =>
          __$$ProductsFeedDropdownImplCopyWithImpl<_$ProductsFeedDropdownImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsFeedDropdownImplToJson(
      this,
    );
  }
}

abstract class _ProductsFeedDropdown implements ProductsFeedDropdown {
  factory _ProductsFeedDropdown(
          {@JsonKey(name: 'products') final List<Product>? products}) =
      _$ProductsFeedDropdownImpl;

  factory _ProductsFeedDropdown.fromJson(Map<String, dynamic> json) =
      _$ProductsFeedDropdownImpl.fromJson;

  @override
  @JsonKey(name: 'products')
  List<Product>? get products;
  @override
  @JsonKey(ignore: true)
  _$$ProductsFeedDropdownImplCopyWith<_$ProductsFeedDropdownImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'id') String? id, @JsonKey(name: 'title') String? title});
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
    Object? title = freezed,
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
      {@JsonKey(name: 'id') String? id, @JsonKey(name: 'title') String? title});
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
    Object? title = freezed,
  }) {
    return _then(_$ProductImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImpl implements _Product {
  _$ProductImpl(
      {@JsonKey(name: 'id') this.id, @JsonKey(name: 'title') this.title});

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'title')
  final String? title;

  @override
  String toString() {
    return 'Product(id: $id, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title);

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
  factory _Product(
      {@JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'title') final String? title}) = _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
