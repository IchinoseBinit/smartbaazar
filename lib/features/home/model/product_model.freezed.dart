// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get visits => throw _privateConstructorUsedError;
  double get avg_rating => throw _privateConstructorUsedError;
  String get contact_name => throw _privateConstructorUsedError;
  String? get pickup => throw _privateConstructorUsedError;

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
      {String id,
      String title,
      String price,
      String image,
      String visits,
      double avg_rating,
      String contact_name,
      String? pickup});
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
    Object? id = null,
    Object? title = null,
    Object? price = null,
    Object? image = null,
    Object? visits = null,
    Object? avg_rating = null,
    Object? contact_name = null,
    Object? pickup = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      visits: null == visits
          ? _value.visits
          : visits // ignore: cast_nullable_to_non_nullable
              as String,
      avg_rating: null == avg_rating
          ? _value.avg_rating
          : avg_rating // ignore: cast_nullable_to_non_nullable
              as double,
      contact_name: null == contact_name
          ? _value.contact_name
          : contact_name // ignore: cast_nullable_to_non_nullable
              as String,
      pickup: freezed == pickup
          ? _value.pickup
          : pickup // ignore: cast_nullable_to_non_nullable
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
      {String id,
      String title,
      String price,
      String image,
      String visits,
      double avg_rating,
      String contact_name,
      String? pickup});
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
    Object? id = null,
    Object? title = null,
    Object? price = null,
    Object? image = null,
    Object? visits = null,
    Object? avg_rating = null,
    Object? contact_name = null,
    Object? pickup = freezed,
  }) {
    return _then(_$ProductImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      visits: null == visits
          ? _value.visits
          : visits // ignore: cast_nullable_to_non_nullable
              as String,
      avg_rating: null == avg_rating
          ? _value.avg_rating
          : avg_rating // ignore: cast_nullable_to_non_nullable
              as double,
      contact_name: null == contact_name
          ? _value.contact_name
          : contact_name // ignore: cast_nullable_to_non_nullable
              as String,
      pickup: freezed == pickup
          ? _value.pickup
          : pickup // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImpl implements _Product {
  _$ProductImpl(
      {required this.id,
      required this.title,
      required this.price,
      required this.image,
      required this.visits,
      this.avg_rating = 0,
      required this.contact_name,
      this.pickup});

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String price;
  @override
  final String image;
  @override
  final String visits;
  @override
  @JsonKey()
  final double avg_rating;
  @override
  final String contact_name;
  @override
  final String? pickup;

  @override
  String toString() {
    return 'Product(id: $id, title: $title, price: $price, image: $image, visits: $visits, avg_rating: $avg_rating, contact_name: $contact_name, pickup: $pickup)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, price, image, visits,
      avg_rating, contact_name, pickup);

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
      {required final String id,
      required final String title,
      required final String price,
      required final String image,
      required final String visits,
      final double avg_rating,
      required final String contact_name,
      final String? pickup}) = _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get price;
  @override
  String get image;
  @override
  String get visits;
  @override
  double get avg_rating;
  @override
  String get contact_name;
  @override
  String? get pickup;
  @override
  @JsonKey(ignore: true)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
