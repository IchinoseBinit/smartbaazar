// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_advertisement_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomeAdvertisement _$HomeAdvertisementFromJson(Map<String, dynamic> json) {
  return _HomeAdvertisement.fromJson(json);
}

/// @nodoc
mixin _$HomeAdvertisement {
  String get id => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  /// Serializes this HomeAdvertisement to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HomeAdvertisement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeAdvertisementCopyWith<HomeAdvertisement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeAdvertisementCopyWith<$Res> {
  factory $HomeAdvertisementCopyWith(
          HomeAdvertisement value, $Res Function(HomeAdvertisement) then) =
      _$HomeAdvertisementCopyWithImpl<$Res, HomeAdvertisement>;
  @useResult
  $Res call({String id, String image});
}

/// @nodoc
class _$HomeAdvertisementCopyWithImpl<$Res, $Val extends HomeAdvertisement>
    implements $HomeAdvertisementCopyWith<$Res> {
  _$HomeAdvertisementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeAdvertisement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeAdvertisementImplCopyWith<$Res>
    implements $HomeAdvertisementCopyWith<$Res> {
  factory _$$HomeAdvertisementImplCopyWith(_$HomeAdvertisementImpl value,
          $Res Function(_$HomeAdvertisementImpl) then) =
      __$$HomeAdvertisementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String image});
}

/// @nodoc
class __$$HomeAdvertisementImplCopyWithImpl<$Res>
    extends _$HomeAdvertisementCopyWithImpl<$Res, _$HomeAdvertisementImpl>
    implements _$$HomeAdvertisementImplCopyWith<$Res> {
  __$$HomeAdvertisementImplCopyWithImpl(_$HomeAdvertisementImpl _value,
      $Res Function(_$HomeAdvertisementImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeAdvertisement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
  }) {
    return _then(_$HomeAdvertisementImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeAdvertisementImpl implements _HomeAdvertisement {
  _$HomeAdvertisementImpl({required this.id, required this.image});

  factory _$HomeAdvertisementImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeAdvertisementImplFromJson(json);

  @override
  final String id;
  @override
  final String image;

  @override
  String toString() {
    return 'HomeAdvertisement(id: $id, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeAdvertisementImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, image);

  /// Create a copy of HomeAdvertisement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeAdvertisementImplCopyWith<_$HomeAdvertisementImpl> get copyWith =>
      __$$HomeAdvertisementImplCopyWithImpl<_$HomeAdvertisementImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeAdvertisementImplToJson(
      this,
    );
  }
}

abstract class _HomeAdvertisement implements HomeAdvertisement {
  factory _HomeAdvertisement(
      {required final String id,
      required final String image}) = _$HomeAdvertisementImpl;

  factory _HomeAdvertisement.fromJson(Map<String, dynamic> json) =
      _$HomeAdvertisementImpl.fromJson;

  @override
  String get id;
  @override
  String get image;

  /// Create a copy of HomeAdvertisement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeAdvertisementImplCopyWith<_$HomeAdvertisementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
