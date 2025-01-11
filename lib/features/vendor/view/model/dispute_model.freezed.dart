// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dispute_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DisputeModel _$DisputeModelFromJson(Map<String, dynamic> json) {
  return _DisputeModel.fromJson(json);
}

/// @nodoc
mixin _$DisputeModel {
  @JsonKey(name: 'disputes_received')
  List<Dispute>? get disputesReceived => throw _privateConstructorUsedError;
  @JsonKey(name: 'disputes_filed')
  List<Dispute>? get disputesFiled => throw _privateConstructorUsedError;

  /// Serializes this DisputeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DisputeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DisputeModelCopyWith<DisputeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DisputeModelCopyWith<$Res> {
  factory $DisputeModelCopyWith(
          DisputeModel value, $Res Function(DisputeModel) then) =
      _$DisputeModelCopyWithImpl<$Res, DisputeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'disputes_received') List<Dispute>? disputesReceived,
      @JsonKey(name: 'disputes_filed') List<Dispute>? disputesFiled});
}

/// @nodoc
class _$DisputeModelCopyWithImpl<$Res, $Val extends DisputeModel>
    implements $DisputeModelCopyWith<$Res> {
  _$DisputeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DisputeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? disputesReceived = freezed,
    Object? disputesFiled = freezed,
  }) {
    return _then(_value.copyWith(
      disputesReceived: freezed == disputesReceived
          ? _value.disputesReceived
          : disputesReceived // ignore: cast_nullable_to_non_nullable
              as List<Dispute>?,
      disputesFiled: freezed == disputesFiled
          ? _value.disputesFiled
          : disputesFiled // ignore: cast_nullable_to_non_nullable
              as List<Dispute>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DisputeModelImplCopyWith<$Res>
    implements $DisputeModelCopyWith<$Res> {
  factory _$$DisputeModelImplCopyWith(
          _$DisputeModelImpl value, $Res Function(_$DisputeModelImpl) then) =
      __$$DisputeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'disputes_received') List<Dispute>? disputesReceived,
      @JsonKey(name: 'disputes_filed') List<Dispute>? disputesFiled});
}

/// @nodoc
class __$$DisputeModelImplCopyWithImpl<$Res>
    extends _$DisputeModelCopyWithImpl<$Res, _$DisputeModelImpl>
    implements _$$DisputeModelImplCopyWith<$Res> {
  __$$DisputeModelImplCopyWithImpl(
      _$DisputeModelImpl _value, $Res Function(_$DisputeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DisputeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? disputesReceived = freezed,
    Object? disputesFiled = freezed,
  }) {
    return _then(_$DisputeModelImpl(
      disputesReceived: freezed == disputesReceived
          ? _value._disputesReceived
          : disputesReceived // ignore: cast_nullable_to_non_nullable
              as List<Dispute>?,
      disputesFiled: freezed == disputesFiled
          ? _value._disputesFiled
          : disputesFiled // ignore: cast_nullable_to_non_nullable
              as List<Dispute>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DisputeModelImpl implements _DisputeModel {
  const _$DisputeModelImpl(
      {@JsonKey(name: 'disputes_received')
      final List<Dispute>? disputesReceived,
      @JsonKey(name: 'disputes_filed') final List<Dispute>? disputesFiled})
      : _disputesReceived = disputesReceived,
        _disputesFiled = disputesFiled;

  factory _$DisputeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DisputeModelImplFromJson(json);

  final List<Dispute>? _disputesReceived;
  @override
  @JsonKey(name: 'disputes_received')
  List<Dispute>? get disputesReceived {
    final value = _disputesReceived;
    if (value == null) return null;
    if (_disputesReceived is EqualUnmodifiableListView)
      return _disputesReceived;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Dispute>? _disputesFiled;
  @override
  @JsonKey(name: 'disputes_filed')
  List<Dispute>? get disputesFiled {
    final value = _disputesFiled;
    if (value == null) return null;
    if (_disputesFiled is EqualUnmodifiableListView) return _disputesFiled;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DisputeModel(disputesReceived: $disputesReceived, disputesFiled: $disputesFiled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisputeModelImpl &&
            const DeepCollectionEquality()
                .equals(other._disputesReceived, _disputesReceived) &&
            const DeepCollectionEquality()
                .equals(other._disputesFiled, _disputesFiled));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_disputesReceived),
      const DeepCollectionEquality().hash(_disputesFiled));

  /// Create a copy of DisputeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DisputeModelImplCopyWith<_$DisputeModelImpl> get copyWith =>
      __$$DisputeModelImplCopyWithImpl<_$DisputeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DisputeModelImplToJson(
      this,
    );
  }
}

abstract class _DisputeModel implements DisputeModel {
  const factory _DisputeModel(
      {@JsonKey(name: 'disputes_received')
      final List<Dispute>? disputesReceived,
      @JsonKey(name: 'disputes_filed')
      final List<Dispute>? disputesFiled}) = _$DisputeModelImpl;

  factory _DisputeModel.fromJson(Map<String, dynamic> json) =
      _$DisputeModelImpl.fromJson;

  @override
  @JsonKey(name: 'disputes_received')
  List<Dispute>? get disputesReceived;
  @override
  @JsonKey(name: 'disputes_filed')
  List<Dispute>? get disputesFiled;

  /// Create a copy of DisputeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DisputeModelImplCopyWith<_$DisputeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Dispute _$DisputeFromJson(Map<String, dynamic> json) {
  return _Dispute.fromJson(json);
}

/// @nodoc
mixin _$Dispute {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'vendor_id')
  String? get vendorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'vendor_name')
  String? get vendorName => throw _privateConstructorUsedError;
  @JsonKey(name: 'vendor_link')
  String? get vendorLink => throw _privateConstructorUsedError;
  @JsonKey(name: 'issue')
  String? get issue => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'post_id')
  String? get postId => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_id')
  String? get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'city')
  String? get city => throw _privateConstructorUsedError;
  @JsonKey(name: 'city_code')
  String? get cityCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'street')
  String? get street => throw _privateConstructorUsedError;
  @JsonKey(name: 'longitude')
  String? get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'latitude')
  String? get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String? get imageUrl => throw _privateConstructorUsedError;

  /// Serializes this Dispute to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Dispute
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DisputeCopyWith<Dispute> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DisputeCopyWith<$Res> {
  factory $DisputeCopyWith(Dispute value, $Res Function(Dispute) then) =
      _$DisputeCopyWithImpl<$Res, Dispute>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'vendor_id') String? vendorId,
      @JsonKey(name: 'vendor_name') String? vendorName,
      @JsonKey(name: 'vendor_link') String? vendorLink,
      @JsonKey(name: 'issue') String? issue,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'post_id') String? postId,
      @JsonKey(name: 'order_id') String? orderId,
      @JsonKey(name: 'city') String? city,
      @JsonKey(name: 'city_code') String? cityCode,
      @JsonKey(name: 'street') String? street,
      @JsonKey(name: 'longitude') String? longitude,
      @JsonKey(name: 'latitude') String? latitude,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'image_url') String? imageUrl});
}

/// @nodoc
class _$DisputeCopyWithImpl<$Res, $Val extends Dispute>
    implements $DisputeCopyWith<$Res> {
  _$DisputeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Dispute
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? vendorId = freezed,
    Object? vendorName = freezed,
    Object? vendorLink = freezed,
    Object? issue = freezed,
    Object? message = freezed,
    Object? image = freezed,
    Object? postId = freezed,
    Object? orderId = freezed,
    Object? city = freezed,
    Object? cityCode = freezed,
    Object? street = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorId: freezed == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorName: freezed == vendorName
          ? _value.vendorName
          : vendorName // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorLink: freezed == vendorLink
          ? _value.vendorLink
          : vendorLink // ignore: cast_nullable_to_non_nullable
              as String?,
      issue: freezed == issue
          ? _value.issue
          : issue // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      postId: freezed == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      cityCode: freezed == cityCode
          ? _value.cityCode
          : cityCode // ignore: cast_nullable_to_non_nullable
              as String?,
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DisputeImplCopyWith<$Res> implements $DisputeCopyWith<$Res> {
  factory _$$DisputeImplCopyWith(
          _$DisputeImpl value, $Res Function(_$DisputeImpl) then) =
      __$$DisputeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'vendor_id') String? vendorId,
      @JsonKey(name: 'vendor_name') String? vendorName,
      @JsonKey(name: 'vendor_link') String? vendorLink,
      @JsonKey(name: 'issue') String? issue,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'post_id') String? postId,
      @JsonKey(name: 'order_id') String? orderId,
      @JsonKey(name: 'city') String? city,
      @JsonKey(name: 'city_code') String? cityCode,
      @JsonKey(name: 'street') String? street,
      @JsonKey(name: 'longitude') String? longitude,
      @JsonKey(name: 'latitude') String? latitude,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'image_url') String? imageUrl});
}

/// @nodoc
class __$$DisputeImplCopyWithImpl<$Res>
    extends _$DisputeCopyWithImpl<$Res, _$DisputeImpl>
    implements _$$DisputeImplCopyWith<$Res> {
  __$$DisputeImplCopyWithImpl(
      _$DisputeImpl _value, $Res Function(_$DisputeImpl) _then)
      : super(_value, _then);

  /// Create a copy of Dispute
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? vendorId = freezed,
    Object? vendorName = freezed,
    Object? vendorLink = freezed,
    Object? issue = freezed,
    Object? message = freezed,
    Object? image = freezed,
    Object? postId = freezed,
    Object? orderId = freezed,
    Object? city = freezed,
    Object? cityCode = freezed,
    Object? street = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_$DisputeImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorId: freezed == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorName: freezed == vendorName
          ? _value.vendorName
          : vendorName // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorLink: freezed == vendorLink
          ? _value.vendorLink
          : vendorLink // ignore: cast_nullable_to_non_nullable
              as String?,
      issue: freezed == issue
          ? _value.issue
          : issue // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      postId: freezed == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      cityCode: freezed == cityCode
          ? _value.cityCode
          : cityCode // ignore: cast_nullable_to_non_nullable
              as String?,
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DisputeImpl implements _Dispute {
  const _$DisputeImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'vendor_id') this.vendorId,
      @JsonKey(name: 'vendor_name') this.vendorName,
      @JsonKey(name: 'vendor_link') this.vendorLink,
      @JsonKey(name: 'issue') this.issue,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'image') this.image,
      @JsonKey(name: 'post_id') this.postId,
      @JsonKey(name: 'order_id') this.orderId,
      @JsonKey(name: 'city') this.city,
      @JsonKey(name: 'city_code') this.cityCode,
      @JsonKey(name: 'street') this.street,
      @JsonKey(name: 'longitude') this.longitude,
      @JsonKey(name: 'latitude') this.latitude,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'image_url') this.imageUrl});

  factory _$DisputeImpl.fromJson(Map<String, dynamic> json) =>
      _$$DisputeImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'user_id')
  final String? userId;
  @override
  @JsonKey(name: 'vendor_id')
  final String? vendorId;
  @override
  @JsonKey(name: 'vendor_name')
  final String? vendorName;
  @override
  @JsonKey(name: 'vendor_link')
  final String? vendorLink;
  @override
  @JsonKey(name: 'issue')
  final String? issue;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'image')
  final String? image;
  @override
  @JsonKey(name: 'post_id')
  final String? postId;
  @override
  @JsonKey(name: 'order_id')
  final String? orderId;
  @override
  @JsonKey(name: 'city')
  final String? city;
  @override
  @JsonKey(name: 'city_code')
  final String? cityCode;
  @override
  @JsonKey(name: 'street')
  final String? street;
  @override
  @JsonKey(name: 'longitude')
  final String? longitude;
  @override
  @JsonKey(name: 'latitude')
  final String? latitude;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  @JsonKey(name: 'image_url')
  final String? imageUrl;

  @override
  String toString() {
    return 'Dispute(id: $id, userId: $userId, vendorId: $vendorId, vendorName: $vendorName, vendorLink: $vendorLink, issue: $issue, message: $message, image: $image, postId: $postId, orderId: $orderId, city: $city, cityCode: $cityCode, street: $street, longitude: $longitude, latitude: $latitude, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisputeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.vendorId, vendorId) ||
                other.vendorId == vendorId) &&
            (identical(other.vendorName, vendorName) ||
                other.vendorName == vendorName) &&
            (identical(other.vendorLink, vendorLink) ||
                other.vendorLink == vendorLink) &&
            (identical(other.issue, issue) || other.issue == issue) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.cityCode, cityCode) ||
                other.cityCode == cityCode) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        userId,
        vendorId,
        vendorName,
        vendorLink,
        issue,
        message,
        image,
        postId,
        orderId,
        city,
        cityCode,
        street,
        longitude,
        latitude,
        status,
        createdAt,
        updatedAt,
        imageUrl
      ]);

  /// Create a copy of Dispute
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DisputeImplCopyWith<_$DisputeImpl> get copyWith =>
      __$$DisputeImplCopyWithImpl<_$DisputeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DisputeImplToJson(
      this,
    );
  }
}

abstract class _Dispute implements Dispute {
  const factory _Dispute(
      {@JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'user_id') final String? userId,
      @JsonKey(name: 'vendor_id') final String? vendorId,
      @JsonKey(name: 'vendor_name') final String? vendorName,
      @JsonKey(name: 'vendor_link') final String? vendorLink,
      @JsonKey(name: 'issue') final String? issue,
      @JsonKey(name: 'message') final String? message,
      @JsonKey(name: 'image') final String? image,
      @JsonKey(name: 'post_id') final String? postId,
      @JsonKey(name: 'order_id') final String? orderId,
      @JsonKey(name: 'city') final String? city,
      @JsonKey(name: 'city_code') final String? cityCode,
      @JsonKey(name: 'street') final String? street,
      @JsonKey(name: 'longitude') final String? longitude,
      @JsonKey(name: 'latitude') final String? latitude,
      @JsonKey(name: 'status') final String? status,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'updated_at') final String? updatedAt,
      @JsonKey(name: 'image_url') final String? imageUrl}) = _$DisputeImpl;

  factory _Dispute.fromJson(Map<String, dynamic> json) = _$DisputeImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'user_id')
  String? get userId;
  @override
  @JsonKey(name: 'vendor_id')
  String? get vendorId;
  @override
  @JsonKey(name: 'vendor_name')
  String? get vendorName;
  @override
  @JsonKey(name: 'vendor_link')
  String? get vendorLink;
  @override
  @JsonKey(name: 'issue')
  String? get issue;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'image')
  String? get image;
  @override
  @JsonKey(name: 'post_id')
  String? get postId;
  @override
  @JsonKey(name: 'order_id')
  String? get orderId;
  @override
  @JsonKey(name: 'city')
  String? get city;
  @override
  @JsonKey(name: 'city_code')
  String? get cityCode;
  @override
  @JsonKey(name: 'street')
  String? get street;
  @override
  @JsonKey(name: 'longitude')
  String? get longitude;
  @override
  @JsonKey(name: 'latitude')
  String? get latitude;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(name: 'image_url')
  String? get imageUrl;

  /// Create a copy of Dispute
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DisputeImplCopyWith<_$DisputeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
