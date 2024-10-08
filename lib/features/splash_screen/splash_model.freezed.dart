// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SplashModel _$SplashModelFromJson(Map<String, dynamic> json) {
  return _SplashModel.fromJson(json);
}

/// @nodoc
mixin _$SplashModel {
  String get logo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SplashModelCopyWith<SplashModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashModelCopyWith<$Res> {
  factory $SplashModelCopyWith(
          SplashModel value, $Res Function(SplashModel) then) =
      _$SplashModelCopyWithImpl<$Res, SplashModel>;
  @useResult
  $Res call({String logo});
}

/// @nodoc
class _$SplashModelCopyWithImpl<$Res, $Val extends SplashModel>
    implements $SplashModelCopyWith<$Res> {
  _$SplashModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? logo = null,
  }) {
    return _then(_value.copyWith(
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SplashModelImplCopyWith<$Res>
    implements $SplashModelCopyWith<$Res> {
  factory _$$SplashModelImplCopyWith(
          _$SplashModelImpl value, $Res Function(_$SplashModelImpl) then) =
      __$$SplashModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String logo});
}

/// @nodoc
class __$$SplashModelImplCopyWithImpl<$Res>
    extends _$SplashModelCopyWithImpl<$Res, _$SplashModelImpl>
    implements _$$SplashModelImplCopyWith<$Res> {
  __$$SplashModelImplCopyWithImpl(
      _$SplashModelImpl _value, $Res Function(_$SplashModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? logo = null,
  }) {
    return _then(_$SplashModelImpl(
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SplashModelImpl implements _SplashModel {
  _$SplashModelImpl({required this.logo});

  factory _$SplashModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SplashModelImplFromJson(json);

  @override
  final String logo;

  @override
  String toString() {
    return 'SplashModel(logo: $logo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SplashModelImpl &&
            (identical(other.logo, logo) || other.logo == logo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, logo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SplashModelImplCopyWith<_$SplashModelImpl> get copyWith =>
      __$$SplashModelImplCopyWithImpl<_$SplashModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SplashModelImplToJson(
      this,
    );
  }
}

abstract class _SplashModel implements SplashModel {
  factory _SplashModel({required final String logo}) = _$SplashModelImpl;

  factory _SplashModel.fromJson(Map<String, dynamic> json) =
      _$SplashModelImpl.fromJson;

  @override
  String get logo;
  @override
  @JsonKey(ignore: true)
  _$$SplashModelImplCopyWith<_$SplashModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
