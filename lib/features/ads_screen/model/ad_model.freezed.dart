// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ad_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoadingAd _$LoadingAdFromJson(Map<String, dynamic> json) {
  return _LoadingAd.fromJson(json);
}

/// @nodoc
mixin _$LoadingAd {
  String? get image => throw _privateConstructorUsedError;

  /// Serializes this LoadingAd to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoadingAd
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoadingAdCopyWith<LoadingAd> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingAdCopyWith<$Res> {
  factory $LoadingAdCopyWith(LoadingAd value, $Res Function(LoadingAd) then) =
      _$LoadingAdCopyWithImpl<$Res, LoadingAd>;
  @useResult
  $Res call({String? image});
}

/// @nodoc
class _$LoadingAdCopyWithImpl<$Res, $Val extends LoadingAd>
    implements $LoadingAdCopyWith<$Res> {
  _$LoadingAdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoadingAd
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadingAdImplCopyWith<$Res>
    implements $LoadingAdCopyWith<$Res> {
  factory _$$LoadingAdImplCopyWith(
          _$LoadingAdImpl value, $Res Function(_$LoadingAdImpl) then) =
      __$$LoadingAdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? image});
}

/// @nodoc
class __$$LoadingAdImplCopyWithImpl<$Res>
    extends _$LoadingAdCopyWithImpl<$Res, _$LoadingAdImpl>
    implements _$$LoadingAdImplCopyWith<$Res> {
  __$$LoadingAdImplCopyWithImpl(
      _$LoadingAdImpl _value, $Res Function(_$LoadingAdImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoadingAd
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
  }) {
    return _then(_$LoadingAdImpl(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoadingAdImpl implements _LoadingAd {
  const _$LoadingAdImpl({this.image});

  factory _$LoadingAdImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoadingAdImplFromJson(json);

  @override
  final String? image;

  @override
  String toString() {
    return 'LoadingAd(image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingAdImpl &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, image);

  /// Create a copy of LoadingAd
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingAdImplCopyWith<_$LoadingAdImpl> get copyWith =>
      __$$LoadingAdImplCopyWithImpl<_$LoadingAdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoadingAdImplToJson(
      this,
    );
  }
}

abstract class _LoadingAd implements LoadingAd {
  const factory _LoadingAd({final String? image}) = _$LoadingAdImpl;

  factory _LoadingAd.fromJson(Map<String, dynamic> json) =
      _$LoadingAdImpl.fromJson;

  @override
  String? get image;

  /// Create a copy of LoadingAd
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadingAdImplCopyWith<_$LoadingAdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
