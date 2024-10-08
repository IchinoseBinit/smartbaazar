// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dropdown_value_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TypeList {
  int get typeId => throw _privateConstructorUsedError;
  String get typeName => throw _privateConstructorUsedError;

  /// Create a copy of TypeList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TypeListCopyWith<TypeList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypeListCopyWith<$Res> {
  factory $TypeListCopyWith(TypeList value, $Res Function(TypeList) then) =
      _$TypeListCopyWithImpl<$Res, TypeList>;
  @useResult
  $Res call({int typeId, String typeName});
}

/// @nodoc
class _$TypeListCopyWithImpl<$Res, $Val extends TypeList>
    implements $TypeListCopyWith<$Res> {
  _$TypeListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TypeList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeId = null,
    Object? typeName = null,
  }) {
    return _then(_value.copyWith(
      typeId: null == typeId
          ? _value.typeId
          : typeId // ignore: cast_nullable_to_non_nullable
              as int,
      typeName: null == typeName
          ? _value.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TypeListImplCopyWith<$Res>
    implements $TypeListCopyWith<$Res> {
  factory _$$TypeListImplCopyWith(
          _$TypeListImpl value, $Res Function(_$TypeListImpl) then) =
      __$$TypeListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int typeId, String typeName});
}

/// @nodoc
class __$$TypeListImplCopyWithImpl<$Res>
    extends _$TypeListCopyWithImpl<$Res, _$TypeListImpl>
    implements _$$TypeListImplCopyWith<$Res> {
  __$$TypeListImplCopyWithImpl(
      _$TypeListImpl _value, $Res Function(_$TypeListImpl) _then)
      : super(_value, _then);

  /// Create a copy of TypeList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeId = null,
    Object? typeName = null,
  }) {
    return _then(_$TypeListImpl(
      typeId: null == typeId
          ? _value.typeId
          : typeId // ignore: cast_nullable_to_non_nullable
              as int,
      typeName: null == typeName
          ? _value.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TypeListImpl implements _TypeList {
  const _$TypeListImpl({required this.typeId, required this.typeName});

  @override
  final int typeId;
  @override
  final String typeName;

  @override
  String toString() {
    return 'TypeList(typeId: $typeId, typeName: $typeName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TypeListImpl &&
            (identical(other.typeId, typeId) || other.typeId == typeId) &&
            (identical(other.typeName, typeName) ||
                other.typeName == typeName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, typeId, typeName);

  /// Create a copy of TypeList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TypeListImplCopyWith<_$TypeListImpl> get copyWith =>
      __$$TypeListImplCopyWithImpl<_$TypeListImpl>(this, _$identity);
}

abstract class _TypeList implements TypeList {
  const factory _TypeList(
      {required final int typeId,
      required final String typeName}) = _$TypeListImpl;

  @override
  int get typeId;
  @override
  String get typeName;

  /// Create a copy of TypeList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TypeListImplCopyWith<_$TypeListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return _Category.fromJson(json);
}

/// @nodoc
mixin _$Category {
  int get id => throw _privateConstructorUsedError;
  String? get parentId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get iconClass => throw _privateConstructorUsedError;
  String get picture => throw _privateConstructorUsedError;

  /// Serializes this Category to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryCopyWith<Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res, Category>;
  @useResult
  $Res call(
      {int id,
      String? parentId,
      String name,
      String slug,
      String? description,
      String? iconClass,
      String picture});
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res, $Val extends Category>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parentId = freezed,
    Object? name = null,
    Object? slug = null,
    Object? description = freezed,
    Object? iconClass = freezed,
    Object? picture = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      iconClass: freezed == iconClass
          ? _value.iconClass
          : iconClass // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
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
  $Res call(
      {int id,
      String? parentId,
      String name,
      String slug,
      String? description,
      String? iconClass,
      String picture});
}

/// @nodoc
class __$$CategoryImplCopyWithImpl<$Res>
    extends _$CategoryCopyWithImpl<$Res, _$CategoryImpl>
    implements _$$CategoryImplCopyWith<$Res> {
  __$$CategoryImplCopyWithImpl(
      _$CategoryImpl _value, $Res Function(_$CategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parentId = freezed,
    Object? name = null,
    Object? slug = null,
    Object? description = freezed,
    Object? iconClass = freezed,
    Object? picture = null,
  }) {
    return _then(_$CategoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      iconClass: freezed == iconClass
          ? _value.iconClass
          : iconClass // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryImpl implements _Category {
  const _$CategoryImpl(
      {required this.id,
      this.parentId,
      required this.name,
      required this.slug,
      this.description,
      this.iconClass,
      required this.picture});

  factory _$CategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryImplFromJson(json);

  @override
  final int id;
  @override
  final String? parentId;
  @override
  final String name;
  @override
  final String slug;
  @override
  final String? description;
  @override
  final String? iconClass;
  @override
  final String picture;

  @override
  String toString() {
    return 'Category(id: $id, parentId: $parentId, name: $name, slug: $slug, description: $description, iconClass: $iconClass, picture: $picture)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.iconClass, iconClass) ||
                other.iconClass == iconClass) &&
            (identical(other.picture, picture) || other.picture == picture));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, parentId, name, slug, description, iconClass, picture);

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      final String? parentId,
      required final String name,
      required final String slug,
      final String? description,
      final String? iconClass,
      required final String picture}) = _$CategoryImpl;

  factory _Category.fromJson(Map<String, dynamic> json) =
      _$CategoryImpl.fromJson;

  @override
  int get id;
  @override
  String? get parentId;
  @override
  String get name;
  @override
  String get slug;
  @override
  String? get description;
  @override
  String? get iconClass;
  @override
  String get picture;

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductType _$ProductTypeFromJson(Map<String, dynamic> json) {
  return _ProductType.fromJson(json);
}

/// @nodoc
mixin _$ProductType {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this ProductType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductTypeCopyWith<ProductType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductTypeCopyWith<$Res> {
  factory $ProductTypeCopyWith(
          ProductType value, $Res Function(ProductType) then) =
      _$ProductTypeCopyWithImpl<$Res, ProductType>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$ProductTypeCopyWithImpl<$Res, $Val extends ProductType>
    implements $ProductTypeCopyWith<$Res> {
  _$ProductTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductTypeImplCopyWith<$Res>
    implements $ProductTypeCopyWith<$Res> {
  factory _$$ProductTypeImplCopyWith(
          _$ProductTypeImpl value, $Res Function(_$ProductTypeImpl) then) =
      __$$ProductTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$ProductTypeImplCopyWithImpl<$Res>
    extends _$ProductTypeCopyWithImpl<$Res, _$ProductTypeImpl>
    implements _$$ProductTypeImplCopyWith<$Res> {
  __$$ProductTypeImplCopyWithImpl(
      _$ProductTypeImpl _value, $Res Function(_$ProductTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$ProductTypeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductTypeImpl implements _ProductType {
  const _$ProductTypeImpl({required this.id, required this.name});

  factory _$ProductTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductTypeImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'ProductType(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductTypeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of ProductType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductTypeImplCopyWith<_$ProductTypeImpl> get copyWith =>
      __$$ProductTypeImplCopyWithImpl<_$ProductTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductTypeImplToJson(
      this,
    );
  }
}

abstract class _ProductType implements ProductType {
  const factory _ProductType(
      {required final int id, required final String name}) = _$ProductTypeImpl;

  factory _ProductType.fromJson(Map<String, dynamic> json) =
      _$ProductTypeImpl.fromJson;

  @override
  int get id;
  @override
  String get name;

  /// Create a copy of ProductType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductTypeImplCopyWith<_$ProductTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CityList _$CityListFromJson(Map<String, dynamic> json) {
  return _CityList.fromJson(json);
}

/// @nodoc
mixin _$CityList {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'country_code')
  String? get countryCode => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this CityList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CityList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CityListCopyWith<CityList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityListCopyWith<$Res> {
  factory $CityListCopyWith(CityList value, $Res Function(CityList) then) =
      _$CityListCopyWithImpl<$Res, CityList>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'country_code') String? countryCode,
      String name});
}

/// @nodoc
class _$CityListCopyWithImpl<$Res, $Val extends CityList>
    implements $CityListCopyWith<$Res> {
  _$CityListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CityList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? countryCode = freezed,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CityListImplCopyWith<$Res>
    implements $CityListCopyWith<$Res> {
  factory _$$CityListImplCopyWith(
          _$CityListImpl value, $Res Function(_$CityListImpl) then) =
      __$$CityListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'country_code') String? countryCode,
      String name});
}

/// @nodoc
class __$$CityListImplCopyWithImpl<$Res>
    extends _$CityListCopyWithImpl<$Res, _$CityListImpl>
    implements _$$CityListImplCopyWith<$Res> {
  __$$CityListImplCopyWithImpl(
      _$CityListImpl _value, $Res Function(_$CityListImpl) _then)
      : super(_value, _then);

  /// Create a copy of CityList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? countryCode = freezed,
    Object? name = null,
  }) {
    return _then(_$CityListImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CityListImpl implements _CityList {
  const _$CityListImpl(
      {required this.id,
      @JsonKey(name: 'country_code') this.countryCode,
      required this.name});

  factory _$CityListImpl.fromJson(Map<String, dynamic> json) =>
      _$$CityListImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'country_code')
  final String? countryCode;
  @override
  final String name;

  @override
  String toString() {
    return 'CityList(id: $id, countryCode: $countryCode, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityListImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, countryCode, name);

  /// Create a copy of CityList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CityListImplCopyWith<_$CityListImpl> get copyWith =>
      __$$CityListImplCopyWithImpl<_$CityListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CityListImplToJson(
      this,
    );
  }
}

abstract class _CityList implements CityList {
  const factory _CityList(
      {required final int id,
      @JsonKey(name: 'country_code') final String? countryCode,
      required final String name}) = _$CityListImpl;

  factory _CityList.fromJson(Map<String, dynamic> json) =
      _$CityListImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'country_code')
  String? get countryCode;
  @override
  String get name;

  /// Create a copy of CityList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CityListImplCopyWith<_$CityListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
