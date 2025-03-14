// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_photo_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MessagePhotoModel _$MessagePhotoModelFromJson(Map<String, dynamic> json) {
  return _MessagePhotoModel.fromJson(json);
}

/// @nodoc
mixin _$MessagePhotoModel {
  @JsonKey(name: 'user_auth')
  UserAuth? get userAuth => throw _privateConstructorUsedError;
  MessagePhoto? get vendor => throw _privateConstructorUsedError;

  /// Serializes this MessagePhotoModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MessagePhotoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessagePhotoModelCopyWith<MessagePhotoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessagePhotoModelCopyWith<$Res> {
  factory $MessagePhotoModelCopyWith(
          MessagePhotoModel value, $Res Function(MessagePhotoModel) then) =
      _$MessagePhotoModelCopyWithImpl<$Res, MessagePhotoModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_auth') UserAuth? userAuth, MessagePhoto? vendor});

  $UserAuthCopyWith<$Res>? get userAuth;
  $MessagePhotoCopyWith<$Res>? get vendor;
}

/// @nodoc
class _$MessagePhotoModelCopyWithImpl<$Res, $Val extends MessagePhotoModel>
    implements $MessagePhotoModelCopyWith<$Res> {
  _$MessagePhotoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessagePhotoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userAuth = freezed,
    Object? vendor = freezed,
  }) {
    return _then(_value.copyWith(
      userAuth: freezed == userAuth
          ? _value.userAuth
          : userAuth // ignore: cast_nullable_to_non_nullable
              as UserAuth?,
      vendor: freezed == vendor
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as MessagePhoto?,
    ) as $Val);
  }

  /// Create a copy of MessagePhotoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserAuthCopyWith<$Res>? get userAuth {
    if (_value.userAuth == null) {
      return null;
    }

    return $UserAuthCopyWith<$Res>(_value.userAuth!, (value) {
      return _then(_value.copyWith(userAuth: value) as $Val);
    });
  }

  /// Create a copy of MessagePhotoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MessagePhotoCopyWith<$Res>? get vendor {
    if (_value.vendor == null) {
      return null;
    }

    return $MessagePhotoCopyWith<$Res>(_value.vendor!, (value) {
      return _then(_value.copyWith(vendor: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MessagePhotoModelImplCopyWith<$Res>
    implements $MessagePhotoModelCopyWith<$Res> {
  factory _$$MessagePhotoModelImplCopyWith(_$MessagePhotoModelImpl value,
          $Res Function(_$MessagePhotoModelImpl) then) =
      __$$MessagePhotoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_auth') UserAuth? userAuth, MessagePhoto? vendor});

  @override
  $UserAuthCopyWith<$Res>? get userAuth;
  @override
  $MessagePhotoCopyWith<$Res>? get vendor;
}

/// @nodoc
class __$$MessagePhotoModelImplCopyWithImpl<$Res>
    extends _$MessagePhotoModelCopyWithImpl<$Res, _$MessagePhotoModelImpl>
    implements _$$MessagePhotoModelImplCopyWith<$Res> {
  __$$MessagePhotoModelImplCopyWithImpl(_$MessagePhotoModelImpl _value,
      $Res Function(_$MessagePhotoModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessagePhotoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userAuth = freezed,
    Object? vendor = freezed,
  }) {
    return _then(_$MessagePhotoModelImpl(
      userAuth: freezed == userAuth
          ? _value.userAuth
          : userAuth // ignore: cast_nullable_to_non_nullable
              as UserAuth?,
      vendor: freezed == vendor
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as MessagePhoto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessagePhotoModelImpl implements _MessagePhotoModel {
  const _$MessagePhotoModelImpl(
      {@JsonKey(name: 'user_auth') this.userAuth, this.vendor});

  factory _$MessagePhotoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessagePhotoModelImplFromJson(json);

  @override
  @JsonKey(name: 'user_auth')
  final UserAuth? userAuth;
  @override
  final MessagePhoto? vendor;

  @override
  String toString() {
    return 'MessagePhotoModel(userAuth: $userAuth, vendor: $vendor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessagePhotoModelImpl &&
            (identical(other.userAuth, userAuth) ||
                other.userAuth == userAuth) &&
            (identical(other.vendor, vendor) || other.vendor == vendor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userAuth, vendor);

  /// Create a copy of MessagePhotoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessagePhotoModelImplCopyWith<_$MessagePhotoModelImpl> get copyWith =>
      __$$MessagePhotoModelImplCopyWithImpl<_$MessagePhotoModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessagePhotoModelImplToJson(
      this,
    );
  }
}

abstract class _MessagePhotoModel implements MessagePhotoModel {
  const factory _MessagePhotoModel(
      {@JsonKey(name: 'user_auth') final UserAuth? userAuth,
      final MessagePhoto? vendor}) = _$MessagePhotoModelImpl;

  factory _MessagePhotoModel.fromJson(Map<String, dynamic> json) =
      _$MessagePhotoModelImpl.fromJson;

  @override
  @JsonKey(name: 'user_auth')
  UserAuth? get userAuth;
  @override
  MessagePhoto? get vendor;

  /// Create a copy of MessagePhotoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessagePhotoModelImplCopyWith<_$MessagePhotoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserAuth _$UserAuthFromJson(Map<String, dynamic> json) {
  return _UserAuth.fromJson(json);
}

/// @nodoc
mixin _$UserAuth {
  String? get id => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this UserAuth to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserAuth
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserAuthCopyWith<UserAuth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAuthCopyWith<$Res> {
  factory $UserAuthCopyWith(UserAuth value, $Res Function(UserAuth) then) =
      _$UserAuthCopyWithImpl<$Res, UserAuth>;
  @useResult
  $Res call({String? id, String? photo, String? name});
}

/// @nodoc
class _$UserAuthCopyWithImpl<$Res, $Val extends UserAuth>
    implements $UserAuthCopyWith<$Res> {
  _$UserAuthCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserAuth
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? photo = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserAuthImplCopyWith<$Res>
    implements $UserAuthCopyWith<$Res> {
  factory _$$UserAuthImplCopyWith(
          _$UserAuthImpl value, $Res Function(_$UserAuthImpl) then) =
      __$$UserAuthImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? photo, String? name});
}

/// @nodoc
class __$$UserAuthImplCopyWithImpl<$Res>
    extends _$UserAuthCopyWithImpl<$Res, _$UserAuthImpl>
    implements _$$UserAuthImplCopyWith<$Res> {
  __$$UserAuthImplCopyWithImpl(
      _$UserAuthImpl _value, $Res Function(_$UserAuthImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserAuth
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? photo = freezed,
    Object? name = freezed,
  }) {
    return _then(_$UserAuthImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserAuthImpl implements _UserAuth {
  const _$UserAuthImpl({this.id, this.photo, this.name});

  factory _$UserAuthImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserAuthImplFromJson(json);

  @override
  final String? id;
  @override
  final String? photo;
  @override
  final String? name;

  @override
  String toString() {
    return 'UserAuth(id: $id, photo: $photo, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAuthImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, photo, name);

  /// Create a copy of UserAuth
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAuthImplCopyWith<_$UserAuthImpl> get copyWith =>
      __$$UserAuthImplCopyWithImpl<_$UserAuthImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserAuthImplToJson(
      this,
    );
  }
}

abstract class _UserAuth implements UserAuth {
  const factory _UserAuth(
      {final String? id,
      final String? photo,
      final String? name}) = _$UserAuthImpl;

  factory _UserAuth.fromJson(Map<String, dynamic> json) =
      _$UserAuthImpl.fromJson;

  @override
  String? get id;
  @override
  String? get photo;
  @override
  String? get name;

  /// Create a copy of UserAuth
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserAuthImplCopyWith<_$UserAuthImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MessagePhoto _$MessagePhotoFromJson(Map<String, dynamic> json) {
  return _MessagePhoto.fromJson(json);
}

/// @nodoc
mixin _$MessagePhoto {
  @JsonKey(name: 'vendor_id')
  String? get vendorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'vendor_name')
  String? get vendorName => throw _privateConstructorUsedError;
  @JsonKey(name: 'vendor_image')
  String? get vendorImage => throw _privateConstructorUsedError;

  /// Serializes this MessagePhoto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MessagePhoto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessagePhotoCopyWith<MessagePhoto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessagePhotoCopyWith<$Res> {
  factory $MessagePhotoCopyWith(
          MessagePhoto value, $Res Function(MessagePhoto) then) =
      _$MessagePhotoCopyWithImpl<$Res, MessagePhoto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'vendor_id') String? vendorId,
      @JsonKey(name: 'vendor_name') String? vendorName,
      @JsonKey(name: 'vendor_image') String? vendorImage});
}

/// @nodoc
class _$MessagePhotoCopyWithImpl<$Res, $Val extends MessagePhoto>
    implements $MessagePhotoCopyWith<$Res> {
  _$MessagePhotoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessagePhoto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vendorId = freezed,
    Object? vendorName = freezed,
    Object? vendorImage = freezed,
  }) {
    return _then(_value.copyWith(
      vendorId: freezed == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorName: freezed == vendorName
          ? _value.vendorName
          : vendorName // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorImage: freezed == vendorImage
          ? _value.vendorImage
          : vendorImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessagePhotoImplCopyWith<$Res>
    implements $MessagePhotoCopyWith<$Res> {
  factory _$$MessagePhotoImplCopyWith(
          _$MessagePhotoImpl value, $Res Function(_$MessagePhotoImpl) then) =
      __$$MessagePhotoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'vendor_id') String? vendorId,
      @JsonKey(name: 'vendor_name') String? vendorName,
      @JsonKey(name: 'vendor_image') String? vendorImage});
}

/// @nodoc
class __$$MessagePhotoImplCopyWithImpl<$Res>
    extends _$MessagePhotoCopyWithImpl<$Res, _$MessagePhotoImpl>
    implements _$$MessagePhotoImplCopyWith<$Res> {
  __$$MessagePhotoImplCopyWithImpl(
      _$MessagePhotoImpl _value, $Res Function(_$MessagePhotoImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessagePhoto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vendorId = freezed,
    Object? vendorName = freezed,
    Object? vendorImage = freezed,
  }) {
    return _then(_$MessagePhotoImpl(
      vendorId: freezed == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorName: freezed == vendorName
          ? _value.vendorName
          : vendorName // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorImage: freezed == vendorImage
          ? _value.vendorImage
          : vendorImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessagePhotoImpl implements _MessagePhoto {
  const _$MessagePhotoImpl(
      {@JsonKey(name: 'vendor_id') this.vendorId,
      @JsonKey(name: 'vendor_name') this.vendorName,
      @JsonKey(name: 'vendor_image') this.vendorImage});

  factory _$MessagePhotoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessagePhotoImplFromJson(json);

  @override
  @JsonKey(name: 'vendor_id')
  final String? vendorId;
  @override
  @JsonKey(name: 'vendor_name')
  final String? vendorName;
  @override
  @JsonKey(name: 'vendor_image')
  final String? vendorImage;

  @override
  String toString() {
    return 'MessagePhoto(vendorId: $vendorId, vendorName: $vendorName, vendorImage: $vendorImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessagePhotoImpl &&
            (identical(other.vendorId, vendorId) ||
                other.vendorId == vendorId) &&
            (identical(other.vendorName, vendorName) ||
                other.vendorName == vendorName) &&
            (identical(other.vendorImage, vendorImage) ||
                other.vendorImage == vendorImage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, vendorId, vendorName, vendorImage);

  /// Create a copy of MessagePhoto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessagePhotoImplCopyWith<_$MessagePhotoImpl> get copyWith =>
      __$$MessagePhotoImplCopyWithImpl<_$MessagePhotoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessagePhotoImplToJson(
      this,
    );
  }
}

abstract class _MessagePhoto implements MessagePhoto {
  const factory _MessagePhoto(
          {@JsonKey(name: 'vendor_id') final String? vendorId,
          @JsonKey(name: 'vendor_name') final String? vendorName,
          @JsonKey(name: 'vendor_image') final String? vendorImage}) =
      _$MessagePhotoImpl;

  factory _MessagePhoto.fromJson(Map<String, dynamic> json) =
      _$MessagePhotoImpl.fromJson;

  @override
  @JsonKey(name: 'vendor_id')
  String? get vendorId;
  @override
  @JsonKey(name: 'vendor_name')
  String? get vendorName;
  @override
  @JsonKey(name: 'vendor_image')
  String? get vendorImage;

  /// Create a copy of MessagePhoto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessagePhotoImplCopyWith<_$MessagePhotoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
