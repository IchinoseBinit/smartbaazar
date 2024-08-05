// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductDetailsModel _$ProductDetailsModelFromJson(Map<String, dynamic> json) {
  return _ProductDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$ProductDetailsModel {
  int get id => throw _privateConstructorUsedError;
  String get user_id => throw _privateConstructorUsedError;
  String get category_id => throw _privateConstructorUsedError;
  String get post_type_id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  String? get pickup => throw _privateConstructorUsedError;
  String? get discounted_price => throw _privateConstructorUsedError;
  int get visits => throw _privateConstructorUsedError;
  String get stock => throw _privateConstructorUsedError;
  String get contact_name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String? get weight =>
      throw _privateConstructorUsedError; // Adjusted to String if weight can be null or is a string in JSON
  List<ColorOption>? get colorOptions => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  List<SimilarItems>? get widgetSimilarPosts =>
      throw _privateConstructorUsedError;
  Category? get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDetailsModelCopyWith<ProductDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailsModelCopyWith<$Res> {
  factory $ProductDetailsModelCopyWith(
          ProductDetailsModel value, $Res Function(ProductDetailsModel) then) =
      _$ProductDetailsModelCopyWithImpl<$Res, ProductDetailsModel>;
  @useResult
  $Res call(
      {int id,
      String user_id,
      String category_id,
      String post_type_id,
      String title,
      String description,
      String price,
      String? pickup,
      String? discounted_price,
      int visits,
      String stock,
      String contact_name,
      String email,
      String phone,
      String? weight,
      List<ColorOption>? colorOptions,
      List<String> tags,
      List<SimilarItems>? widgetSimilarPosts,
      Category? category});

  $CategoryCopyWith<$Res>? get category;
}

/// @nodoc
class _$ProductDetailsModelCopyWithImpl<$Res, $Val extends ProductDetailsModel>
    implements $ProductDetailsModelCopyWith<$Res> {
  _$ProductDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user_id = null,
    Object? category_id = null,
    Object? post_type_id = null,
    Object? title = null,
    Object? description = null,
    Object? price = null,
    Object? pickup = freezed,
    Object? discounted_price = freezed,
    Object? visits = null,
    Object? stock = null,
    Object? contact_name = null,
    Object? email = null,
    Object? phone = null,
    Object? weight = freezed,
    Object? colorOptions = freezed,
    Object? tags = null,
    Object? widgetSimilarPosts = freezed,
    Object? category = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user_id: null == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String,
      category_id: null == category_id
          ? _value.category_id
          : category_id // ignore: cast_nullable_to_non_nullable
              as String,
      post_type_id: null == post_type_id
          ? _value.post_type_id
          : post_type_id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      pickup: freezed == pickup
          ? _value.pickup
          : pickup // ignore: cast_nullable_to_non_nullable
              as String?,
      discounted_price: freezed == discounted_price
          ? _value.discounted_price
          : discounted_price // ignore: cast_nullable_to_non_nullable
              as String?,
      visits: null == visits
          ? _value.visits
          : visits // ignore: cast_nullable_to_non_nullable
              as int,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as String,
      contact_name: null == contact_name
          ? _value.contact_name
          : contact_name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String?,
      colorOptions: freezed == colorOptions
          ? _value.colorOptions
          : colorOptions // ignore: cast_nullable_to_non_nullable
              as List<ColorOption>?,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      widgetSimilarPosts: freezed == widgetSimilarPosts
          ? _value.widgetSimilarPosts
          : widgetSimilarPosts // ignore: cast_nullable_to_non_nullable
              as List<SimilarItems>?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CategoryCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductDetailsModelImplCopyWith<$Res>
    implements $ProductDetailsModelCopyWith<$Res> {
  factory _$$ProductDetailsModelImplCopyWith(_$ProductDetailsModelImpl value,
          $Res Function(_$ProductDetailsModelImpl) then) =
      __$$ProductDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String user_id,
      String category_id,
      String post_type_id,
      String title,
      String description,
      String price,
      String? pickup,
      String? discounted_price,
      int visits,
      String stock,
      String contact_name,
      String email,
      String phone,
      String? weight,
      List<ColorOption>? colorOptions,
      List<String> tags,
      List<SimilarItems>? widgetSimilarPosts,
      Category? category});

  @override
  $CategoryCopyWith<$Res>? get category;
}

/// @nodoc
class __$$ProductDetailsModelImplCopyWithImpl<$Res>
    extends _$ProductDetailsModelCopyWithImpl<$Res, _$ProductDetailsModelImpl>
    implements _$$ProductDetailsModelImplCopyWith<$Res> {
  __$$ProductDetailsModelImplCopyWithImpl(_$ProductDetailsModelImpl _value,
      $Res Function(_$ProductDetailsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user_id = null,
    Object? category_id = null,
    Object? post_type_id = null,
    Object? title = null,
    Object? description = null,
    Object? price = null,
    Object? pickup = freezed,
    Object? discounted_price = freezed,
    Object? visits = null,
    Object? stock = null,
    Object? contact_name = null,
    Object? email = null,
    Object? phone = null,
    Object? weight = freezed,
    Object? colorOptions = freezed,
    Object? tags = null,
    Object? widgetSimilarPosts = freezed,
    Object? category = freezed,
  }) {
    return _then(_$ProductDetailsModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user_id: null == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String,
      category_id: null == category_id
          ? _value.category_id
          : category_id // ignore: cast_nullable_to_non_nullable
              as String,
      post_type_id: null == post_type_id
          ? _value.post_type_id
          : post_type_id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      pickup: freezed == pickup
          ? _value.pickup
          : pickup // ignore: cast_nullable_to_non_nullable
              as String?,
      discounted_price: freezed == discounted_price
          ? _value.discounted_price
          : discounted_price // ignore: cast_nullable_to_non_nullable
              as String?,
      visits: null == visits
          ? _value.visits
          : visits // ignore: cast_nullable_to_non_nullable
              as int,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as String,
      contact_name: null == contact_name
          ? _value.contact_name
          : contact_name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String?,
      colorOptions: freezed == colorOptions
          ? _value._colorOptions
          : colorOptions // ignore: cast_nullable_to_non_nullable
              as List<ColorOption>?,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      widgetSimilarPosts: freezed == widgetSimilarPosts
          ? _value._widgetSimilarPosts
          : widgetSimilarPosts // ignore: cast_nullable_to_non_nullable
              as List<SimilarItems>?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductDetailsModelImpl implements _ProductDetailsModel {
  const _$ProductDetailsModelImpl(
      {required this.id,
      required this.user_id,
      required this.category_id,
      required this.post_type_id,
      required this.title,
      required this.description,
      required this.price,
      this.pickup,
      this.discounted_price,
      required this.visits,
      required this.stock,
      required this.contact_name,
      required this.email,
      required this.phone,
      this.weight,
      final List<ColorOption>? colorOptions,
      required final List<String> tags,
      final List<SimilarItems>? widgetSimilarPosts,
      this.category})
      : _colorOptions = colorOptions,
        _tags = tags,
        _widgetSimilarPosts = widgetSimilarPosts;

  factory _$ProductDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductDetailsModelImplFromJson(json);

  @override
  final int id;
  @override
  final String user_id;
  @override
  final String category_id;
  @override
  final String post_type_id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String price;
  @override
  final String? pickup;
  @override
  final String? discounted_price;
  @override
  final int visits;
  @override
  final String stock;
  @override
  final String contact_name;
  @override
  final String email;
  @override
  final String phone;
  @override
  final String? weight;
// Adjusted to String if weight can be null or is a string in JSON
  final List<ColorOption>? _colorOptions;
// Adjusted to String if weight can be null or is a string in JSON
  @override
  List<ColorOption>? get colorOptions {
    final value = _colorOptions;
    if (value == null) return null;
    if (_colorOptions is EqualUnmodifiableListView) return _colorOptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String> _tags;
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  final List<SimilarItems>? _widgetSimilarPosts;
  @override
  List<SimilarItems>? get widgetSimilarPosts {
    final value = _widgetSimilarPosts;
    if (value == null) return null;
    if (_widgetSimilarPosts is EqualUnmodifiableListView)
      return _widgetSimilarPosts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Category? category;

  @override
  String toString() {
    return 'ProductDetailsModel(id: $id, user_id: $user_id, category_id: $category_id, post_type_id: $post_type_id, title: $title, description: $description, price: $price, pickup: $pickup, discounted_price: $discounted_price, visits: $visits, stock: $stock, contact_name: $contact_name, email: $email, phone: $phone, weight: $weight, colorOptions: $colorOptions, tags: $tags, widgetSimilarPosts: $widgetSimilarPosts, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.category_id, category_id) ||
                other.category_id == category_id) &&
            (identical(other.post_type_id, post_type_id) ||
                other.post_type_id == post_type_id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.pickup, pickup) || other.pickup == pickup) &&
            (identical(other.discounted_price, discounted_price) ||
                other.discounted_price == discounted_price) &&
            (identical(other.visits, visits) || other.visits == visits) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.contact_name, contact_name) ||
                other.contact_name == contact_name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            const DeepCollectionEquality()
                .equals(other._colorOptions, _colorOptions) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality()
                .equals(other._widgetSimilarPosts, _widgetSimilarPosts) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        user_id,
        category_id,
        post_type_id,
        title,
        description,
        price,
        pickup,
        discounted_price,
        visits,
        stock,
        contact_name,
        email,
        phone,
        weight,
        const DeepCollectionEquality().hash(_colorOptions),
        const DeepCollectionEquality().hash(_tags),
        const DeepCollectionEquality().hash(_widgetSimilarPosts),
        category
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDetailsModelImplCopyWith<_$ProductDetailsModelImpl> get copyWith =>
      __$$ProductDetailsModelImplCopyWithImpl<_$ProductDetailsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _ProductDetailsModel implements ProductDetailsModel {
  const factory _ProductDetailsModel(
      {required final int id,
      required final String user_id,
      required final String category_id,
      required final String post_type_id,
      required final String title,
      required final String description,
      required final String price,
      final String? pickup,
      final String? discounted_price,
      required final int visits,
      required final String stock,
      required final String contact_name,
      required final String email,
      required final String phone,
      final String? weight,
      final List<ColorOption>? colorOptions,
      required final List<String> tags,
      final List<SimilarItems>? widgetSimilarPosts,
      final Category? category}) = _$ProductDetailsModelImpl;

  factory _ProductDetailsModel.fromJson(Map<String, dynamic> json) =
      _$ProductDetailsModelImpl.fromJson;

  @override
  int get id;
  @override
  String get user_id;
  @override
  String get category_id;
  @override
  String get post_type_id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get price;
  @override
  String? get pickup;
  @override
  String? get discounted_price;
  @override
  int get visits;
  @override
  String get stock;
  @override
  String get contact_name;
  @override
  String get email;
  @override
  String get phone;
  @override
  String? get weight;
  @override // Adjusted to String if weight can be null or is a string in JSON
  List<ColorOption>? get colorOptions;
  @override
  List<String> get tags;
  @override
  List<SimilarItems>? get widgetSimilarPosts;
  @override
  Category? get category;
  @override
  @JsonKey(ignore: true)
  _$$ProductDetailsModelImplCopyWith<_$ProductDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return _Category.fromJson(json);
}

/// @nodoc
mixin _$Category {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryCopyWith<Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res, Category>;
  @useResult
  $Res call({int id, String name, String slug});
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res, $Val extends Category>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryImplCopyWith<$Res>
    implements $CategoryCopyWith<$Res> {
  factory _$$CategoryImplCopyWith(
          _$CategoryImpl value, $Res Function(_$CategoryImpl) then) =
      __$$CategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String slug});
}

/// @nodoc
class __$$CategoryImplCopyWithImpl<$Res>
    extends _$CategoryCopyWithImpl<$Res, _$CategoryImpl>
    implements _$$CategoryImplCopyWith<$Res> {
  __$$CategoryImplCopyWithImpl(
      _$CategoryImpl _value, $Res Function(_$CategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
  }) {
    return _then(_$CategoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryImpl implements _Category {
  const _$CategoryImpl(
      {required this.id, required this.name, required this.slug});

  factory _$CategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String slug;

  @override
  String toString() {
    return 'Category(id: $id, name: $name, slug: $slug)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, slug);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      __$$CategoryImplCopyWithImpl<_$CategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryImplToJson(
      this,
    );
  }
}

abstract class _Category implements Category {
  const factory _Category(
      {required final int id,
      required final String name,
      required final String slug}) = _$CategoryImpl;

  factory _Category.fromJson(Map<String, dynamic> json) =
      _$CategoryImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get slug;
  @override
  @JsonKey(ignore: true)
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ColorOption _$ColorOptionFromJson(Map<String, dynamic> json) {
  return _ColorOption.fromJson(json);
}

/// @nodoc
mixin _$ColorOption {
  int get id => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ColorOptionCopyWith<ColorOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColorOptionCopyWith<$Res> {
  factory $ColorOptionCopyWith(
          ColorOption value, $Res Function(ColorOption) then) =
      _$ColorOptionCopyWithImpl<$Res, ColorOption>;
  @useResult
  $Res call({int id, String value});
}

/// @nodoc
class _$ColorOptionCopyWithImpl<$Res, $Val extends ColorOption>
    implements $ColorOptionCopyWith<$Res> {
  _$ColorOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ColorOptionImplCopyWith<$Res>
    implements $ColorOptionCopyWith<$Res> {
  factory _$$ColorOptionImplCopyWith(
          _$ColorOptionImpl value, $Res Function(_$ColorOptionImpl) then) =
      __$$ColorOptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String value});
}

/// @nodoc
class __$$ColorOptionImplCopyWithImpl<$Res>
    extends _$ColorOptionCopyWithImpl<$Res, _$ColorOptionImpl>
    implements _$$ColorOptionImplCopyWith<$Res> {
  __$$ColorOptionImplCopyWithImpl(
      _$ColorOptionImpl _value, $Res Function(_$ColorOptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
  }) {
    return _then(_$ColorOptionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ColorOptionImpl implements _ColorOption {
  const _$ColorOptionImpl({required this.id, required this.value});

  factory _$ColorOptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ColorOptionImplFromJson(json);

  @override
  final int id;
  @override
  final String value;

  @override
  String toString() {
    return 'ColorOption(id: $id, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ColorOptionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ColorOptionImplCopyWith<_$ColorOptionImpl> get copyWith =>
      __$$ColorOptionImplCopyWithImpl<_$ColorOptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ColorOptionImplToJson(
      this,
    );
  }
}

abstract class _ColorOption implements ColorOption {
  const factory _ColorOption(
      {required final int id, required final String value}) = _$ColorOptionImpl;

  factory _ColorOption.fromJson(Map<String, dynamic> json) =
      _$ColorOptionImpl.fromJson;

  @override
  int get id;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$ColorOptionImplCopyWith<_$ColorOptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SimilarItems _$SimilarItemsFromJson(Map<String, dynamic> json) {
  return _SimilarItems.fromJson(json);
}

/// @nodoc
mixin _$SimilarItems {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  List<Picture> get pictures => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SimilarItemsCopyWith<SimilarItems> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimilarItemsCopyWith<$Res> {
  factory $SimilarItemsCopyWith(
          SimilarItems value, $Res Function(SimilarItems) then) =
      _$SimilarItemsCopyWithImpl<$Res, SimilarItems>;
  @useResult
  $Res call({int id, String title, String price, List<Picture> pictures});
}

/// @nodoc
class _$SimilarItemsCopyWithImpl<$Res, $Val extends SimilarItems>
    implements $SimilarItemsCopyWith<$Res> {
  _$SimilarItemsCopyWithImpl(this._value, this._then);

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
    Object? pictures = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      pictures: null == pictures
          ? _value.pictures
          : pictures // ignore: cast_nullable_to_non_nullable
              as List<Picture>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SimilarItemsImplCopyWith<$Res>
    implements $SimilarItemsCopyWith<$Res> {
  factory _$$SimilarItemsImplCopyWith(
          _$SimilarItemsImpl value, $Res Function(_$SimilarItemsImpl) then) =
      __$$SimilarItemsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, String price, List<Picture> pictures});
}

/// @nodoc
class __$$SimilarItemsImplCopyWithImpl<$Res>
    extends _$SimilarItemsCopyWithImpl<$Res, _$SimilarItemsImpl>
    implements _$$SimilarItemsImplCopyWith<$Res> {
  __$$SimilarItemsImplCopyWithImpl(
      _$SimilarItemsImpl _value, $Res Function(_$SimilarItemsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? price = null,
    Object? pictures = null,
  }) {
    return _then(_$SimilarItemsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      pictures: null == pictures
          ? _value._pictures
          : pictures // ignore: cast_nullable_to_non_nullable
              as List<Picture>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SimilarItemsImpl implements _SimilarItems {
  const _$SimilarItemsImpl(
      {required this.id,
      required this.title,
      required this.price,
      required final List<Picture> pictures})
      : _pictures = pictures;

  factory _$SimilarItemsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SimilarItemsImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String price;
  final List<Picture> _pictures;
  @override
  List<Picture> get pictures {
    if (_pictures is EqualUnmodifiableListView) return _pictures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pictures);
  }

  @override
  String toString() {
    return 'SimilarItems(id: $id, title: $title, price: $price, pictures: $pictures)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimilarItemsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.price, price) || other.price == price) &&
            const DeepCollectionEquality().equals(other._pictures, _pictures));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, price,
      const DeepCollectionEquality().hash(_pictures));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SimilarItemsImplCopyWith<_$SimilarItemsImpl> get copyWith =>
      __$$SimilarItemsImplCopyWithImpl<_$SimilarItemsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SimilarItemsImplToJson(
      this,
    );
  }
}

abstract class _SimilarItems implements SimilarItems {
  const factory _SimilarItems(
      {required final int id,
      required final String title,
      required final String price,
      required final List<Picture> pictures}) = _$SimilarItemsImpl;

  factory _SimilarItems.fromJson(Map<String, dynamic> json) =
      _$SimilarItemsImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get price;
  @override
  List<Picture> get pictures;
  @override
  @JsonKey(ignore: true)
  _$$SimilarItemsImplCopyWith<_$SimilarItemsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Picture _$PictureFromJson(Map<String, dynamic> json) {
  return _Picture.fromJson(json);
}

/// @nodoc
mixin _$Picture {
  int get id => throw _privateConstructorUsedError;
  String get filename => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PictureCopyWith<Picture> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PictureCopyWith<$Res> {
  factory $PictureCopyWith(Picture value, $Res Function(Picture) then) =
      _$PictureCopyWithImpl<$Res, Picture>;
  @useResult
  $Res call({int id, String filename});
}

/// @nodoc
class _$PictureCopyWithImpl<$Res, $Val extends Picture>
    implements $PictureCopyWith<$Res> {
  _$PictureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? filename = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      filename: null == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PictureImplCopyWith<$Res> implements $PictureCopyWith<$Res> {
  factory _$$PictureImplCopyWith(
          _$PictureImpl value, $Res Function(_$PictureImpl) then) =
      __$$PictureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String filename});
}

/// @nodoc
class __$$PictureImplCopyWithImpl<$Res>
    extends _$PictureCopyWithImpl<$Res, _$PictureImpl>
    implements _$$PictureImplCopyWith<$Res> {
  __$$PictureImplCopyWithImpl(
      _$PictureImpl _value, $Res Function(_$PictureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? filename = null,
  }) {
    return _then(_$PictureImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      filename: null == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PictureImpl implements _Picture {
  const _$PictureImpl({required this.id, required this.filename});

  factory _$PictureImpl.fromJson(Map<String, dynamic> json) =>
      _$$PictureImplFromJson(json);

  @override
  final int id;
  @override
  final String filename;

  @override
  String toString() {
    return 'Picture(id: $id, filename: $filename)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PictureImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.filename, filename) ||
                other.filename == filename));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, filename);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PictureImplCopyWith<_$PictureImpl> get copyWith =>
      __$$PictureImplCopyWithImpl<_$PictureImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PictureImplToJson(
      this,
    );
  }
}

abstract class _Picture implements Picture {
  const factory _Picture(
      {required final int id, required final String filename}) = _$PictureImpl;

  factory _Picture.fromJson(Map<String, dynamic> json) = _$PictureImpl.fromJson;

  @override
  int get id;
  @override
  String get filename;
  @override
  @JsonKey(ignore: true)
  _$$PictureImplCopyWith<_$PictureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
