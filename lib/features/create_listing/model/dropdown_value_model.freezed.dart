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

MyCategory _$MyCategoryFromJson(Map<String, dynamic> json) {
  return _MyCategory.fromJson(json);
}

/// @nodoc
mixin _$MyCategory {
  int get id => throw _privateConstructorUsedError;
  String? get parentId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get iconClass => throw _privateConstructorUsedError;
  String get picture => throw _privateConstructorUsedError;

  /// Serializes this MyCategory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MyCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyCategoryCopyWith<MyCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyCategoryCopyWith<$Res> {
  factory $MyCategoryCopyWith(
          MyCategory value, $Res Function(MyCategory) then) =
      _$MyCategoryCopyWithImpl<$Res, MyCategory>;
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
class _$MyCategoryCopyWithImpl<$Res, $Val extends MyCategory>
    implements $MyCategoryCopyWith<$Res> {
  _$MyCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyCategory
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
abstract class _$$MyCategoryImplCopyWith<$Res>
    implements $MyCategoryCopyWith<$Res> {
  factory _$$MyCategoryImplCopyWith(
          _$MyCategoryImpl value, $Res Function(_$MyCategoryImpl) then) =
      __$$MyCategoryImplCopyWithImpl<$Res>;
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
class __$$MyCategoryImplCopyWithImpl<$Res>
    extends _$MyCategoryCopyWithImpl<$Res, _$MyCategoryImpl>
    implements _$$MyCategoryImplCopyWith<$Res> {
  __$$MyCategoryImplCopyWithImpl(
      _$MyCategoryImpl _value, $Res Function(_$MyCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyCategory
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
    return _then(_$MyCategoryImpl(
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
class _$MyCategoryImpl implements _MyCategory {
  const _$MyCategoryImpl(
      {required this.id,
      this.parentId,
      required this.name,
      required this.slug,
      this.description,
      this.iconClass,
      required this.picture});

  factory _$MyCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyCategoryImplFromJson(json);

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
    return 'MyCategory(id: $id, parentId: $parentId, name: $name, slug: $slug, description: $description, iconClass: $iconClass, picture: $picture)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyCategoryImpl &&
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

  /// Create a copy of MyCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyCategoryImplCopyWith<_$MyCategoryImpl> get copyWith =>
      __$$MyCategoryImplCopyWithImpl<_$MyCategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyCategoryImplToJson(
      this,
    );
  }
}

abstract class _MyCategory implements MyCategory {
  const factory _MyCategory(
      {required final int id,
      final String? parentId,
      required final String name,
      required final String slug,
      final String? description,
      final String? iconClass,
      required final String picture}) = _$MyCategoryImpl;

  factory _MyCategory.fromJson(Map<String, dynamic> json) =
      _$MyCategoryImpl.fromJson;

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

  /// Create a copy of MyCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyCategoryImplCopyWith<_$MyCategoryImpl> get copyWith =>
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

OffersResponse _$OffersResponseFromJson(Map<String, dynamic> json) {
  return _OffersResponse.fromJson(json);
}

/// @nodoc
mixin _$OffersResponse {
  List<Offer> get data => throw _privateConstructorUsedError;
  String get msg => throw _privateConstructorUsedError;

  /// Serializes this OffersResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OffersResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OffersResponseCopyWith<OffersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OffersResponseCopyWith<$Res> {
  factory $OffersResponseCopyWith(
          OffersResponse value, $Res Function(OffersResponse) then) =
      _$OffersResponseCopyWithImpl<$Res, OffersResponse>;
  @useResult
  $Res call({List<Offer> data, String msg});
}

/// @nodoc
class _$OffersResponseCopyWithImpl<$Res, $Val extends OffersResponse>
    implements $OffersResponseCopyWith<$Res> {
  _$OffersResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OffersResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? msg = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Offer>,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OffersResponseImplCopyWith<$Res>
    implements $OffersResponseCopyWith<$Res> {
  factory _$$OffersResponseImplCopyWith(_$OffersResponseImpl value,
          $Res Function(_$OffersResponseImpl) then) =
      __$$OffersResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Offer> data, String msg});
}

/// @nodoc
class __$$OffersResponseImplCopyWithImpl<$Res>
    extends _$OffersResponseCopyWithImpl<$Res, _$OffersResponseImpl>
    implements _$$OffersResponseImplCopyWith<$Res> {
  __$$OffersResponseImplCopyWithImpl(
      _$OffersResponseImpl _value, $Res Function(_$OffersResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of OffersResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? msg = null,
  }) {
    return _then(_$OffersResponseImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Offer>,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OffersResponseImpl implements _OffersResponse {
  const _$OffersResponseImpl(
      {required final List<Offer> data, required this.msg})
      : _data = data;

  factory _$OffersResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OffersResponseImplFromJson(json);

  final List<Offer> _data;
  @override
  List<Offer> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final String msg;

  @override
  String toString() {
    return 'OffersResponse(data: $data, msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OffersResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data), msg);

  /// Create a copy of OffersResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OffersResponseImplCopyWith<_$OffersResponseImpl> get copyWith =>
      __$$OffersResponseImplCopyWithImpl<_$OffersResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OffersResponseImplToJson(
      this,
    );
  }
}

abstract class _OffersResponse implements OffersResponse {
  const factory _OffersResponse(
      {required final List<Offer> data,
      required final String msg}) = _$OffersResponseImpl;

  factory _OffersResponse.fromJson(Map<String, dynamic> json) =
      _$OffersResponseImpl.fromJson;

  @override
  List<Offer> get data;
  @override
  String get msg;

  /// Create a copy of OffersResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OffersResponseImplCopyWith<_$OffersResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Offer _$OfferFromJson(Map<String, dynamic> json) {
  return _Offer.fromJson(json);
}

/// @nodoc
mixin _$Offer {
  String get id => throw _privateConstructorUsedError;
  String get offers => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Offer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Offer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OfferCopyWith<Offer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferCopyWith<$Res> {
  factory $OfferCopyWith(Offer value, $Res Function(Offer) then) =
      _$OfferCopyWithImpl<$Res, Offer>;
  @useResult
  $Res call(
      {String id,
      String offers,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});
}

/// @nodoc
class _$OfferCopyWithImpl<$Res, $Val extends Offer>
    implements $OfferCopyWith<$Res> {
  _$OfferCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Offer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? offers = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      offers: null == offers
          ? _value.offers
          : offers // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OfferImplCopyWith<$Res> implements $OfferCopyWith<$Res> {
  factory _$$OfferImplCopyWith(
          _$OfferImpl value, $Res Function(_$OfferImpl) then) =
      __$$OfferImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String offers,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});
}

/// @nodoc
class __$$OfferImplCopyWithImpl<$Res>
    extends _$OfferCopyWithImpl<$Res, _$OfferImpl>
    implements _$$OfferImplCopyWith<$Res> {
  __$$OfferImplCopyWithImpl(
      _$OfferImpl _value, $Res Function(_$OfferImpl) _then)
      : super(_value, _then);

  /// Create a copy of Offer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? offers = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$OfferImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      offers: null == offers
          ? _value.offers
          : offers // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OfferImpl implements _Offer {
  const _$OfferImpl(
      {required this.id,
      required this.offers,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt});

  factory _$OfferImpl.fromJson(Map<String, dynamic> json) =>
      _$$OfferImplFromJson(json);

  @override
  final String id;
  @override
  final String offers;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;

  @override
  String toString() {
    return 'Offer(id: $id, offers: $offers, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfferImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.offers, offers) || other.offers == offers) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, offers, createdAt, updatedAt);

  /// Create a copy of Offer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OfferImplCopyWith<_$OfferImpl> get copyWith =>
      __$$OfferImplCopyWithImpl<_$OfferImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OfferImplToJson(
      this,
    );
  }
}

abstract class _Offer implements Offer {
  const factory _Offer(
          {required final String id,
          required final String offers,
          @JsonKey(name: 'created_at') required final String createdAt,
          @JsonKey(name: 'updated_at') required final String updatedAt}) =
      _$OfferImpl;

  factory _Offer.fromJson(Map<String, dynamic> json) = _$OfferImpl.fromJson;

  @override
  String get id;
  @override
  String get offers;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;

  /// Create a copy of Offer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OfferImplCopyWith<_$OfferImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
