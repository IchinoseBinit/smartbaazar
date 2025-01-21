// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'screen_category_mode.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) {
  return _CategoryModel.fromJson(json);
}

/// @nodoc
mixin _$CategoryModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_id')
  String? get parentId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get picture => throw _privateConstructorUsedError;
  @JsonKey(name: 'icon_class')
  String? get iconClass => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'hide_description')
  String? get hideDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'parentClosure')
  ParentClosure? get parentClosure => throw _privateConstructorUsedError;

  /// Serializes this CategoryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryModelCopyWith<CategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryModelCopyWith<$Res> {
  factory $CategoryModelCopyWith(
          CategoryModel value, $Res Function(CategoryModel) then) =
      _$CategoryModelCopyWithImpl<$Res, CategoryModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'parent_id') String? parentId,
      String name,
      String slug,
      String? description,
      String? picture,
      @JsonKey(name: 'icon_class') String? iconClass,
      String? type,
      @JsonKey(name: 'hide_description') String? hideDescription,
      @JsonKey(name: 'parentClosure') ParentClosure? parentClosure});

  $ParentClosureCopyWith<$Res>? get parentClosure;
}

/// @nodoc
class _$CategoryModelCopyWithImpl<$Res, $Val extends CategoryModel>
    implements $CategoryModelCopyWith<$Res> {
  _$CategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parentId = freezed,
    Object? name = null,
    Object? slug = null,
    Object? description = freezed,
    Object? picture = freezed,
    Object? iconClass = freezed,
    Object? type = freezed,
    Object? hideDescription = freezed,
    Object? parentClosure = freezed,
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
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      iconClass: freezed == iconClass
          ? _value.iconClass
          : iconClass // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      hideDescription: freezed == hideDescription
          ? _value.hideDescription
          : hideDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      parentClosure: freezed == parentClosure
          ? _value.parentClosure
          : parentClosure // ignore: cast_nullable_to_non_nullable
              as ParentClosure?,
    ) as $Val);
  }

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParentClosureCopyWith<$Res>? get parentClosure {
    if (_value.parentClosure == null) {
      return null;
    }

    return $ParentClosureCopyWith<$Res>(_value.parentClosure!, (value) {
      return _then(_value.copyWith(parentClosure: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CategoryModelImplCopyWith<$Res>
    implements $CategoryModelCopyWith<$Res> {
  factory _$$CategoryModelImplCopyWith(
          _$CategoryModelImpl value, $Res Function(_$CategoryModelImpl) then) =
      __$$CategoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'parent_id') String? parentId,
      String name,
      String slug,
      String? description,
      String? picture,
      @JsonKey(name: 'icon_class') String? iconClass,
      String? type,
      @JsonKey(name: 'hide_description') String? hideDescription,
      @JsonKey(name: 'parentClosure') ParentClosure? parentClosure});

  @override
  $ParentClosureCopyWith<$Res>? get parentClosure;
}

/// @nodoc
class __$$CategoryModelImplCopyWithImpl<$Res>
    extends _$CategoryModelCopyWithImpl<$Res, _$CategoryModelImpl>
    implements _$$CategoryModelImplCopyWith<$Res> {
  __$$CategoryModelImplCopyWithImpl(
      _$CategoryModelImpl _value, $Res Function(_$CategoryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parentId = freezed,
    Object? name = null,
    Object? slug = null,
    Object? description = freezed,
    Object? picture = freezed,
    Object? iconClass = freezed,
    Object? type = freezed,
    Object? hideDescription = freezed,
    Object? parentClosure = freezed,
  }) {
    return _then(_$CategoryModelImpl(
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
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      iconClass: freezed == iconClass
          ? _value.iconClass
          : iconClass // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      hideDescription: freezed == hideDescription
          ? _value.hideDescription
          : hideDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      parentClosure: freezed == parentClosure
          ? _value.parentClosure
          : parentClosure // ignore: cast_nullable_to_non_nullable
              as ParentClosure?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryModelImpl implements _CategoryModel {
  const _$CategoryModelImpl(
      {required this.id,
      @JsonKey(name: 'parent_id') this.parentId,
      required this.name,
      required this.slug,
      this.description,
      this.picture,
      @JsonKey(name: 'icon_class') this.iconClass,
      this.type,
      @JsonKey(name: 'hide_description') this.hideDescription,
      @JsonKey(name: 'parentClosure') this.parentClosure});

  factory _$CategoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryModelImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'parent_id')
  final String? parentId;
  @override
  final String name;
  @override
  final String slug;
  @override
  final String? description;
  @override
  final String? picture;
  @override
  @JsonKey(name: 'icon_class')
  final String? iconClass;
  @override
  final String? type;
  @override
  @JsonKey(name: 'hide_description')
  final String? hideDescription;
  @override
  @JsonKey(name: 'parentClosure')
  final ParentClosure? parentClosure;

  @override
  String toString() {
    return 'CategoryModel(id: $id, parentId: $parentId, name: $name, slug: $slug, description: $description, picture: $picture, iconClass: $iconClass, type: $type, hideDescription: $hideDescription, parentClosure: $parentClosure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.iconClass, iconClass) ||
                other.iconClass == iconClass) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.hideDescription, hideDescription) ||
                other.hideDescription == hideDescription) &&
            (identical(other.parentClosure, parentClosure) ||
                other.parentClosure == parentClosure));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, parentId, name, slug,
      description, picture, iconClass, type, hideDescription, parentClosure);

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryModelImplCopyWith<_$CategoryModelImpl> get copyWith =>
      __$$CategoryModelImplCopyWithImpl<_$CategoryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryModelImplToJson(
      this,
    );
  }
}

abstract class _CategoryModel implements CategoryModel {
  const factory _CategoryModel(
          {required final int id,
          @JsonKey(name: 'parent_id') final String? parentId,
          required final String name,
          required final String slug,
          final String? description,
          final String? picture,
          @JsonKey(name: 'icon_class') final String? iconClass,
          final String? type,
          @JsonKey(name: 'hide_description') final String? hideDescription,
          @JsonKey(name: 'parentClosure') final ParentClosure? parentClosure}) =
      _$CategoryModelImpl;

  factory _CategoryModel.fromJson(Map<String, dynamic> json) =
      _$CategoryModelImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'parent_id')
  String? get parentId;
  @override
  String get name;
  @override
  String get slug;
  @override
  String? get description;
  @override
  String? get picture;
  @override
  @JsonKey(name: 'icon_class')
  String? get iconClass;
  @override
  String? get type;
  @override
  @JsonKey(name: 'hide_description')
  String? get hideDescription;
  @override
  @JsonKey(name: 'parentClosure')
  ParentClosure? get parentClosure;

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryModelImplCopyWith<_$CategoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ParentClosure _$ParentClosureFromJson(Map<String, dynamic> json) {
  return _ParentClosure.fromJson(json);
}

/// @nodoc
mixin _$ParentClosure {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_id')
  String? get parentId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get picture => throw _privateConstructorUsedError;
  @JsonKey(name: 'icon_class')
  String? get iconClass => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;

  /// Serializes this ParentClosure to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ParentClosure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ParentClosureCopyWith<ParentClosure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParentClosureCopyWith<$Res> {
  factory $ParentClosureCopyWith(
          ParentClosure value, $Res Function(ParentClosure) then) =
      _$ParentClosureCopyWithImpl<$Res, ParentClosure>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'parent_id') String? parentId,
      String name,
      String slug,
      String? description,
      String? picture,
      @JsonKey(name: 'icon_class') String? iconClass,
      String? type});
}

/// @nodoc
class _$ParentClosureCopyWithImpl<$Res, $Val extends ParentClosure>
    implements $ParentClosureCopyWith<$Res> {
  _$ParentClosureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ParentClosure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parentId = freezed,
    Object? name = null,
    Object? slug = null,
    Object? description = freezed,
    Object? picture = freezed,
    Object? iconClass = freezed,
    Object? type = freezed,
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
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      iconClass: freezed == iconClass
          ? _value.iconClass
          : iconClass // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ParentClosureImplCopyWith<$Res>
    implements $ParentClosureCopyWith<$Res> {
  factory _$$ParentClosureImplCopyWith(
          _$ParentClosureImpl value, $Res Function(_$ParentClosureImpl) then) =
      __$$ParentClosureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'parent_id') String? parentId,
      String name,
      String slug,
      String? description,
      String? picture,
      @JsonKey(name: 'icon_class') String? iconClass,
      String? type});
}

/// @nodoc
class __$$ParentClosureImplCopyWithImpl<$Res>
    extends _$ParentClosureCopyWithImpl<$Res, _$ParentClosureImpl>
    implements _$$ParentClosureImplCopyWith<$Res> {
  __$$ParentClosureImplCopyWithImpl(
      _$ParentClosureImpl _value, $Res Function(_$ParentClosureImpl) _then)
      : super(_value, _then);

  /// Create a copy of ParentClosure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parentId = freezed,
    Object? name = null,
    Object? slug = null,
    Object? description = freezed,
    Object? picture = freezed,
    Object? iconClass = freezed,
    Object? type = freezed,
  }) {
    return _then(_$ParentClosureImpl(
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
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      iconClass: freezed == iconClass
          ? _value.iconClass
          : iconClass // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ParentClosureImpl implements _ParentClosure {
  const _$ParentClosureImpl(
      {required this.id,
      @JsonKey(name: 'parent_id') this.parentId,
      required this.name,
      required this.slug,
      this.description,
      this.picture,
      @JsonKey(name: 'icon_class') this.iconClass,
      this.type});

  factory _$ParentClosureImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParentClosureImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'parent_id')
  final String? parentId;
  @override
  final String name;
  @override
  final String slug;
  @override
  final String? description;
  @override
  final String? picture;
  @override
  @JsonKey(name: 'icon_class')
  final String? iconClass;
  @override
  final String? type;

  @override
  String toString() {
    return 'ParentClosure(id: $id, parentId: $parentId, name: $name, slug: $slug, description: $description, picture: $picture, iconClass: $iconClass, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParentClosureImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.iconClass, iconClass) ||
                other.iconClass == iconClass) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, parentId, name, slug,
      description, picture, iconClass, type);

  /// Create a copy of ParentClosure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ParentClosureImplCopyWith<_$ParentClosureImpl> get copyWith =>
      __$$ParentClosureImplCopyWithImpl<_$ParentClosureImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ParentClosureImplToJson(
      this,
    );
  }
}

abstract class _ParentClosure implements ParentClosure {
  const factory _ParentClosure(
      {required final int id,
      @JsonKey(name: 'parent_id') final String? parentId,
      required final String name,
      required final String slug,
      final String? description,
      final String? picture,
      @JsonKey(name: 'icon_class') final String? iconClass,
      final String? type}) = _$ParentClosureImpl;

  factory _ParentClosure.fromJson(Map<String, dynamic> json) =
      _$ParentClosureImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'parent_id')
  String? get parentId;
  @override
  String get name;
  @override
  String get slug;
  @override
  String? get description;
  @override
  String? get picture;
  @override
  @JsonKey(name: 'icon_class')
  String? get iconClass;
  @override
  String? get type;

  /// Create a copy of ParentClosure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ParentClosureImplCopyWith<_$ParentClosureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
