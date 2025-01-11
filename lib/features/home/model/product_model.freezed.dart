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
  String? get id => throw _privateConstructorUsedError; // String? country_code,
  String? get user_id => throw _privateConstructorUsedError;
  String? get category_id => throw _privateConstructorUsedError;
  String? get post_type_id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get tags => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  String? get negotiable => throw _privateConstructorUsedError;
  String? get contact_name =>
      throw _privateConstructorUsedError; // String? email,
// String? phone,
// String? phone_hidden,
// String? address,
// String? city_id,
// String? lon,
// String? lat,
// String? ip_addr,
// String? length,
// String? width,
// String? weight,
// String? height,
  String? get pickup =>
      throw _privateConstructorUsedError; // String? longitude,
// String? latitude,
// String? hyper_del,
// String? seller_del,
  String? get visits => throw _privateConstructorUsedError;
  String? get email_token =>
      throw _privateConstructorUsedError; // String? phone_token,
// String? tmp_token,
// String? verified_email,
// String? verified_phone,
// String? accept_terms,
// String? accept_marketing_offers,
// String? is_permanent,
// String? reviewed,
// String? featured,
// String? archived,
// String? archived_at,
// String? archived_manually,
// String? deletion_mail_sent_at,
// String? fb_profile,
// String? partner,
// String? discounted_price,
// String? trending,
// String? stock,
// String? min_order,
// String? samp_price,
// String? text_one,
// String? text_two,
// String? ava_to,
// String? branded,
// String? wow,
// String? offers,
// String? story_display_days,
// String? barcode,
// String? b2b_pricing,
// String? deleted_at,
// String? created_at,
// String? updated_at,
  String? get image => throw _privateConstructorUsedError;
  double? get avg_rating => throw _privateConstructorUsedError;
  List<dynamic>? get savedByLoggedUser => throw _privateConstructorUsedError;

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
      String? user_id,
      String? category_id,
      String? post_type_id,
      String? title,
      String? description,
      String? tags,
      String? price,
      String? negotiable,
      String? contact_name,
      String? pickup,
      String? visits,
      String? email_token,
      String? image,
      double? avg_rating,
      List<dynamic>? savedByLoggedUser});
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
    Object? user_id = freezed,
    Object? category_id = freezed,
    Object? post_type_id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? tags = freezed,
    Object? price = freezed,
    Object? negotiable = freezed,
    Object? contact_name = freezed,
    Object? pickup = freezed,
    Object? visits = freezed,
    Object? email_token = freezed,
    Object? image = freezed,
    Object? avg_rating = freezed,
    Object? savedByLoggedUser = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String?,
      category_id: freezed == category_id
          ? _value.category_id
          : category_id // ignore: cast_nullable_to_non_nullable
              as String?,
      post_type_id: freezed == post_type_id
          ? _value.post_type_id
          : post_type_id // ignore: cast_nullable_to_non_nullable
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
      contact_name: freezed == contact_name
          ? _value.contact_name
          : contact_name // ignore: cast_nullable_to_non_nullable
              as String?,
      pickup: freezed == pickup
          ? _value.pickup
          : pickup // ignore: cast_nullable_to_non_nullable
              as String?,
      visits: freezed == visits
          ? _value.visits
          : visits // ignore: cast_nullable_to_non_nullable
              as String?,
      email_token: freezed == email_token
          ? _value.email_token
          : email_token // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      avg_rating: freezed == avg_rating
          ? _value.avg_rating
          : avg_rating // ignore: cast_nullable_to_non_nullable
              as double?,
      savedByLoggedUser: freezed == savedByLoggedUser
          ? _value.savedByLoggedUser
          : savedByLoggedUser // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
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
      String? user_id,
      String? category_id,
      String? post_type_id,
      String? title,
      String? description,
      String? tags,
      String? price,
      String? negotiable,
      String? contact_name,
      String? pickup,
      String? visits,
      String? email_token,
      String? image,
      double? avg_rating,
      List<dynamic>? savedByLoggedUser});
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
    Object? user_id = freezed,
    Object? category_id = freezed,
    Object? post_type_id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? tags = freezed,
    Object? price = freezed,
    Object? negotiable = freezed,
    Object? contact_name = freezed,
    Object? pickup = freezed,
    Object? visits = freezed,
    Object? email_token = freezed,
    Object? image = freezed,
    Object? avg_rating = freezed,
    Object? savedByLoggedUser = freezed,
  }) {
    return _then(_$ProductImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String?,
      category_id: freezed == category_id
          ? _value.category_id
          : category_id // ignore: cast_nullable_to_non_nullable
              as String?,
      post_type_id: freezed == post_type_id
          ? _value.post_type_id
          : post_type_id // ignore: cast_nullable_to_non_nullable
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
      contact_name: freezed == contact_name
          ? _value.contact_name
          : contact_name // ignore: cast_nullable_to_non_nullable
              as String?,
      pickup: freezed == pickup
          ? _value.pickup
          : pickup // ignore: cast_nullable_to_non_nullable
              as String?,
      visits: freezed == visits
          ? _value.visits
          : visits // ignore: cast_nullable_to_non_nullable
              as String?,
      email_token: freezed == email_token
          ? _value.email_token
          : email_token // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      avg_rating: freezed == avg_rating
          ? _value.avg_rating
          : avg_rating // ignore: cast_nullable_to_non_nullable
              as double?,
      savedByLoggedUser: freezed == savedByLoggedUser
          ? _value._savedByLoggedUser
          : savedByLoggedUser // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImpl implements _Product {
  _$ProductImpl(
      {this.id,
      this.user_id,
      this.category_id,
      this.post_type_id,
      this.title,
      this.description,
      this.tags,
      this.price,
      this.negotiable,
      this.contact_name,
      this.pickup,
      this.visits,
      this.email_token,
      this.image,
      this.avg_rating,
      final List<dynamic>? savedByLoggedUser})
      : _savedByLoggedUser = savedByLoggedUser;

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  final String? id;
// String? country_code,
  @override
  final String? user_id;
  @override
  final String? category_id;
  @override
  final String? post_type_id;
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
  final String? contact_name;
// String? email,
// String? phone,
// String? phone_hidden,
// String? address,
// String? city_id,
// String? lon,
// String? lat,
// String? ip_addr,
// String? length,
// String? width,
// String? weight,
// String? height,
  @override
  final String? pickup;
// String? longitude,
// String? latitude,
// String? hyper_del,
// String? seller_del,
  @override
  final String? visits;
  @override
  final String? email_token;
// String? phone_token,
// String? tmp_token,
// String? verified_email,
// String? verified_phone,
// String? accept_terms,
// String? accept_marketing_offers,
// String? is_permanent,
// String? reviewed,
// String? featured,
// String? archived,
// String? archived_at,
// String? archived_manually,
// String? deletion_mail_sent_at,
// String? fb_profile,
// String? partner,
// String? discounted_price,
// String? trending,
// String? stock,
// String? min_order,
// String? samp_price,
// String? text_one,
// String? text_two,
// String? ava_to,
// String? branded,
// String? wow,
// String? offers,
// String? story_display_days,
// String? barcode,
// String? b2b_pricing,
// String? deleted_at,
// String? created_at,
// String? updated_at,
  @override
  final String? image;
  @override
  final double? avg_rating;
  final List<dynamic>? _savedByLoggedUser;
  @override
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
    return 'Product(id: $id, user_id: $user_id, category_id: $category_id, post_type_id: $post_type_id, title: $title, description: $description, tags: $tags, price: $price, negotiable: $negotiable, contact_name: $contact_name, pickup: $pickup, visits: $visits, email_token: $email_token, image: $image, avg_rating: $avg_rating, savedByLoggedUser: $savedByLoggedUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.category_id, category_id) ||
                other.category_id == category_id) &&
            (identical(other.post_type_id, post_type_id) ||
                other.post_type_id == post_type_id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.tags, tags) || other.tags == tags) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.negotiable, negotiable) ||
                other.negotiable == negotiable) &&
            (identical(other.contact_name, contact_name) ||
                other.contact_name == contact_name) &&
            (identical(other.pickup, pickup) || other.pickup == pickup) &&
            (identical(other.visits, visits) || other.visits == visits) &&
            (identical(other.email_token, email_token) ||
                other.email_token == email_token) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.avg_rating, avg_rating) ||
                other.avg_rating == avg_rating) &&
            const DeepCollectionEquality()
                .equals(other._savedByLoggedUser, _savedByLoggedUser));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      user_id,
      category_id,
      post_type_id,
      title,
      description,
      tags,
      price,
      negotiable,
      contact_name,
      pickup,
      visits,
      email_token,
      image,
      avg_rating,
      const DeepCollectionEquality().hash(_savedByLoggedUser));

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
  factory _Product(
      {final String? id,
      final String? user_id,
      final String? category_id,
      final String? post_type_id,
      final String? title,
      final String? description,
      final String? tags,
      final String? price,
      final String? negotiable,
      final String? contact_name,
      final String? pickup,
      final String? visits,
      final String? email_token,
      final String? image,
      final double? avg_rating,
      final List<dynamic>? savedByLoggedUser}) = _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  String? get id; // String? country_code,
  @override
  String? get user_id;
  @override
  String? get category_id;
  @override
  String? get post_type_id;
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
  String? get contact_name; // String? email,
// String? phone,
// String? phone_hidden,
// String? address,
// String? city_id,
// String? lon,
// String? lat,
// String? ip_addr,
// String? length,
// String? width,
// String? weight,
// String? height,
  @override
  String? get pickup; // String? longitude,
// String? latitude,
// String? hyper_del,
// String? seller_del,
  @override
  String? get visits;
  @override
  String? get email_token; // String? phone_token,
// String? tmp_token,
// String? verified_email,
// String? verified_phone,
// String? accept_terms,
// String? accept_marketing_offers,
// String? is_permanent,
// String? reviewed,
// String? featured,
// String? archived,
// String? archived_at,
// String? archived_manually,
// String? deletion_mail_sent_at,
// String? fb_profile,
// String? partner,
// String? discounted_price,
// String? trending,
// String? stock,
// String? min_order,
// String? samp_price,
// String? text_one,
// String? text_two,
// String? ava_to,
// String? branded,
// String? wow,
// String? offers,
// String? story_display_days,
// String? barcode,
// String? b2b_pricing,
// String? deleted_at,
// String? created_at,
// String? updated_at,
  @override
  String? get image;
  @override
  double? get avg_rating;
  @override
  List<dynamic>? get savedByLoggedUser;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
