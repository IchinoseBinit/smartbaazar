// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchProductModel _$SearchProductModelFromJson(Map<String, dynamic> json) {
  return _SearchProductModel.fromJson(json);
}

/// @nodoc
mixin _$SearchProductModel {
  String get name => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;

  /// Serializes this SearchProductModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SearchProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchProductModelCopyWith<SearchProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchProductModelCopyWith<$Res> {
  factory $SearchProductModelCopyWith(
          SearchProductModel value, $Res Function(SearchProductModel) then) =
      _$SearchProductModelCopyWithImpl<$Res, SearchProductModel>;
  @useResult
  $Res call({String name, String? id, String? username});
}

/// @nodoc
class _$SearchProductModelCopyWithImpl<$Res, $Val extends SearchProductModel>
    implements $SearchProductModelCopyWith<$Res> {
  _$SearchProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchProductModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = freezed,
    Object? username = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchProductModelImplCopyWith<$Res>
    implements $SearchProductModelCopyWith<$Res> {
  factory _$$SearchProductModelImplCopyWith(_$SearchProductModelImpl value,
          $Res Function(_$SearchProductModelImpl) then) =
      __$$SearchProductModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String? id, String? username});
}

/// @nodoc
class __$$SearchProductModelImplCopyWithImpl<$Res>
    extends _$SearchProductModelCopyWithImpl<$Res, _$SearchProductModelImpl>
    implements _$$SearchProductModelImplCopyWith<$Res> {
  __$$SearchProductModelImplCopyWithImpl(_$SearchProductModelImpl _value,
      $Res Function(_$SearchProductModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchProductModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = freezed,
    Object? username = freezed,
  }) {
    return _then(_$SearchProductModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
class _$SearchProductModelImpl implements _SearchProductModel {
  _$SearchProductModelImpl({required this.name, this.id, this.username});

  factory _$SearchProductModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchProductModelImplFromJson(json);

  @override
  final String name;
  @override
  final String? id;
  @override
  final String? username;

  @override
  String toString() {
    return 'SearchProductModel(name: $name, id: $id, username: $username)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchProductModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, id, username);

  /// Create a copy of SearchProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchProductModelImplCopyWith<_$SearchProductModelImpl> get copyWith =>
      __$$SearchProductModelImplCopyWithImpl<_$SearchProductModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchProductModelImplToJson(
      this,
    );
  }
}

abstract class _SearchProductModel implements SearchProductModel {
  factory _SearchProductModel(
      {required final String name,
      final String? id,
      final String? username}) = _$SearchProductModelImpl;

  factory _SearchProductModel.fromJson(Map<String, dynamic> json) =
      _$SearchProductModelImpl.fromJson;

  @override
  String get name;
  @override
  String? get id;
  @override
  String? get username;

  /// Create a copy of SearchProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchProductModelImplCopyWith<_$SearchProductModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
