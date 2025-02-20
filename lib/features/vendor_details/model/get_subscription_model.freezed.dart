// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_subscription_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetSubscriptionModel _$GetSubscriptionModelFromJson(Map<String, dynamic> json) {
  return _GetSubscriptionModel.fromJson(json);
}

/// @nodoc
mixin _$GetSubscriptionModel {
  List<Subscription>? get subscriptions => throw _privateConstructorUsedError;

  /// Serializes this GetSubscriptionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetSubscriptionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetSubscriptionModelCopyWith<GetSubscriptionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetSubscriptionModelCopyWith<$Res> {
  factory $GetSubscriptionModelCopyWith(GetSubscriptionModel value,
          $Res Function(GetSubscriptionModel) then) =
      _$GetSubscriptionModelCopyWithImpl<$Res, GetSubscriptionModel>;
  @useResult
  $Res call({List<Subscription>? subscriptions});
}

/// @nodoc
class _$GetSubscriptionModelCopyWithImpl<$Res,
        $Val extends GetSubscriptionModel>
    implements $GetSubscriptionModelCopyWith<$Res> {
  _$GetSubscriptionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetSubscriptionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscriptions = freezed,
  }) {
    return _then(_value.copyWith(
      subscriptions: freezed == subscriptions
          ? _value.subscriptions
          : subscriptions // ignore: cast_nullable_to_non_nullable
              as List<Subscription>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetSubscriptionModelImplCopyWith<$Res>
    implements $GetSubscriptionModelCopyWith<$Res> {
  factory _$$GetSubscriptionModelImplCopyWith(_$GetSubscriptionModelImpl value,
          $Res Function(_$GetSubscriptionModelImpl) then) =
      __$$GetSubscriptionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Subscription>? subscriptions});
}

/// @nodoc
class __$$GetSubscriptionModelImplCopyWithImpl<$Res>
    extends _$GetSubscriptionModelCopyWithImpl<$Res, _$GetSubscriptionModelImpl>
    implements _$$GetSubscriptionModelImplCopyWith<$Res> {
  __$$GetSubscriptionModelImplCopyWithImpl(_$GetSubscriptionModelImpl _value,
      $Res Function(_$GetSubscriptionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetSubscriptionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscriptions = freezed,
  }) {
    return _then(_$GetSubscriptionModelImpl(
      subscriptions: freezed == subscriptions
          ? _value._subscriptions
          : subscriptions // ignore: cast_nullable_to_non_nullable
              as List<Subscription>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetSubscriptionModelImpl implements _GetSubscriptionModel {
  const _$GetSubscriptionModelImpl(
      {required final List<Subscription>? subscriptions})
      : _subscriptions = subscriptions;

  factory _$GetSubscriptionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetSubscriptionModelImplFromJson(json);

  final List<Subscription>? _subscriptions;
  @override
  List<Subscription>? get subscriptions {
    final value = _subscriptions;
    if (value == null) return null;
    if (_subscriptions is EqualUnmodifiableListView) return _subscriptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetSubscriptionModel(subscriptions: $subscriptions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSubscriptionModelImpl &&
            const DeepCollectionEquality()
                .equals(other._subscriptions, _subscriptions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_subscriptions));

  /// Create a copy of GetSubscriptionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSubscriptionModelImplCopyWith<_$GetSubscriptionModelImpl>
      get copyWith =>
          __$$GetSubscriptionModelImplCopyWithImpl<_$GetSubscriptionModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetSubscriptionModelImplToJson(
      this,
    );
  }
}

abstract class _GetSubscriptionModel implements GetSubscriptionModel {
  const factory _GetSubscriptionModel(
          {required final List<Subscription>? subscriptions}) =
      _$GetSubscriptionModelImpl;

  factory _GetSubscriptionModel.fromJson(Map<String, dynamic> json) =
      _$GetSubscriptionModelImpl.fromJson;

  @override
  List<Subscription>? get subscriptions;

  /// Create a copy of GetSubscriptionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetSubscriptionModelImplCopyWith<_$GetSubscriptionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Subscription _$SubscriptionFromJson(Map<String, dynamic> json) {
  return _Subscription.fromJson(json);
}

/// @nodoc
mixin _$Subscription {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'vendor_id')
  String? get vendorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'followed_date')
  String? get followedDate => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'vendor_card')
  Vendor? get vendor => throw _privateConstructorUsedError;

  /// Serializes this Subscription to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Subscription
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubscriptionCopyWith<Subscription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionCopyWith<$Res> {
  factory $SubscriptionCopyWith(
          Subscription value, $Res Function(Subscription) then) =
      _$SubscriptionCopyWithImpl<$Res, Subscription>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'vendor_id') String? vendorId,
      @JsonKey(name: 'followed_date') String? followedDate,
      String? status,
      @JsonKey(name: 'vendor_card') Vendor? vendor});

  $VendorCopyWith<$Res>? get vendor;
}

/// @nodoc
class _$SubscriptionCopyWithImpl<$Res, $Val extends Subscription>
    implements $SubscriptionCopyWith<$Res> {
  _$SubscriptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Subscription
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? vendorId = freezed,
    Object? followedDate = freezed,
    Object? status = freezed,
    Object? vendor = freezed,
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
      followedDate: freezed == followedDate
          ? _value.followedDate
          : followedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      vendor: freezed == vendor
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as Vendor?,
    ) as $Val);
  }

  /// Create a copy of Subscription
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VendorCopyWith<$Res>? get vendor {
    if (_value.vendor == null) {
      return null;
    }

    return $VendorCopyWith<$Res>(_value.vendor!, (value) {
      return _then(_value.copyWith(vendor: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubscriptionImplCopyWith<$Res>
    implements $SubscriptionCopyWith<$Res> {
  factory _$$SubscriptionImplCopyWith(
          _$SubscriptionImpl value, $Res Function(_$SubscriptionImpl) then) =
      __$$SubscriptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'vendor_id') String? vendorId,
      @JsonKey(name: 'followed_date') String? followedDate,
      String? status,
      @JsonKey(name: 'vendor_card') Vendor? vendor});

  @override
  $VendorCopyWith<$Res>? get vendor;
}

/// @nodoc
class __$$SubscriptionImplCopyWithImpl<$Res>
    extends _$SubscriptionCopyWithImpl<$Res, _$SubscriptionImpl>
    implements _$$SubscriptionImplCopyWith<$Res> {
  __$$SubscriptionImplCopyWithImpl(
      _$SubscriptionImpl _value, $Res Function(_$SubscriptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Subscription
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? vendorId = freezed,
    Object? followedDate = freezed,
    Object? status = freezed,
    Object? vendor = freezed,
  }) {
    return _then(_$SubscriptionImpl(
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
      followedDate: freezed == followedDate
          ? _value.followedDate
          : followedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      vendor: freezed == vendor
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as Vendor?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubscriptionImpl implements _Subscription {
  const _$SubscriptionImpl(
      {this.id,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'vendor_id') this.vendorId,
      @JsonKey(name: 'followed_date') this.followedDate,
      this.status,
      @JsonKey(name: 'vendor_card') this.vendor});

  factory _$SubscriptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubscriptionImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'user_id')
  final String? userId;
  @override
  @JsonKey(name: 'vendor_id')
  final String? vendorId;
  @override
  @JsonKey(name: 'followed_date')
  final String? followedDate;
  @override
  final String? status;
  @override
  @JsonKey(name: 'vendor_card')
  final Vendor? vendor;

  @override
  String toString() {
    return 'Subscription(id: $id, userId: $userId, vendorId: $vendorId, followedDate: $followedDate, status: $status, vendor: $vendor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.vendorId, vendorId) ||
                other.vendorId == vendorId) &&
            (identical(other.followedDate, followedDate) ||
                other.followedDate == followedDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.vendor, vendor) || other.vendor == vendor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, userId, vendorId, followedDate, status, vendor);

  /// Create a copy of Subscription
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionImplCopyWith<_$SubscriptionImpl> get copyWith =>
      __$$SubscriptionImplCopyWithImpl<_$SubscriptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriptionImplToJson(
      this,
    );
  }
}

abstract class _Subscription implements Subscription {
  const factory _Subscription(
      {final String? id,
      @JsonKey(name: 'user_id') final String? userId,
      @JsonKey(name: 'vendor_id') final String? vendorId,
      @JsonKey(name: 'followed_date') final String? followedDate,
      final String? status,
      @JsonKey(name: 'vendor_card') final Vendor? vendor}) = _$SubscriptionImpl;

  factory _Subscription.fromJson(Map<String, dynamic> json) =
      _$SubscriptionImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'user_id')
  String? get userId;
  @override
  @JsonKey(name: 'vendor_id')
  String? get vendorId;
  @override
  @JsonKey(name: 'followed_date')
  String? get followedDate;
  @override
  String? get status;
  @override
  @JsonKey(name: 'vendor_card')
  Vendor? get vendor;

  /// Create a copy of Subscription
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubscriptionImplCopyWith<_$SubscriptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Vendor _$VendorFromJson(Map<String, dynamic> json) {
  return _Vendor.fromJson(json);
}

/// @nodoc
mixin _$Vendor {
  String? get name => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_url')
  String? get profileUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'storycount')
  int? get storyCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'dealzcircle')
  int? get dealzCircle => throw _privateConstructorUsedError;
  int? get connection => throw _privateConstructorUsedError;
  @JsonKey(name: 'prize_worth')
  int? get prizeWorth => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_sponsored_gifts')
  bool? get hasSponsoredGifts => throw _privateConstructorUsedError;
  String? get nearestbranch => throw _privateConstructorUsedError;
  @JsonKey(name: 'membership_id')
  String? get membershipId => throw _privateConstructorUsedError;
  @JsonKey(name: 'membership_title')
  String? get membershipTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'membership_color')
  String? get membershipColor => throw _privateConstructorUsedError;

  /// Serializes this Vendor to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Vendor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VendorCopyWith<Vendor> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendorCopyWith<$Res> {
  factory $VendorCopyWith(Vendor value, $Res Function(Vendor) then) =
      _$VendorCopyWithImpl<$Res, Vendor>;
  @useResult
  $Res call(
      {String? name,
      String? photo,
      String? phone,
      @JsonKey(name: 'profile_url') String? profileUrl,
      @JsonKey(name: 'storycount') int? storyCount,
      @JsonKey(name: 'dealzcircle') int? dealzCircle,
      int? connection,
      @JsonKey(name: 'prize_worth') int? prizeWorth,
      @JsonKey(name: 'has_sponsored_gifts') bool? hasSponsoredGifts,
      String? nearestbranch,
      @JsonKey(name: 'membership_id') String? membershipId,
      @JsonKey(name: 'membership_title') String? membershipTitle,
      @JsonKey(name: 'membership_color') String? membershipColor});
}

/// @nodoc
class _$VendorCopyWithImpl<$Res, $Val extends Vendor>
    implements $VendorCopyWith<$Res> {
  _$VendorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Vendor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? photo = freezed,
    Object? phone = freezed,
    Object? profileUrl = freezed,
    Object? storyCount = freezed,
    Object? dealzCircle = freezed,
    Object? connection = freezed,
    Object? prizeWorth = freezed,
    Object? hasSponsoredGifts = freezed,
    Object? nearestbranch = freezed,
    Object? membershipId = freezed,
    Object? membershipTitle = freezed,
    Object? membershipColor = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      profileUrl: freezed == profileUrl
          ? _value.profileUrl
          : profileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      storyCount: freezed == storyCount
          ? _value.storyCount
          : storyCount // ignore: cast_nullable_to_non_nullable
              as int?,
      dealzCircle: freezed == dealzCircle
          ? _value.dealzCircle
          : dealzCircle // ignore: cast_nullable_to_non_nullable
              as int?,
      connection: freezed == connection
          ? _value.connection
          : connection // ignore: cast_nullable_to_non_nullable
              as int?,
      prizeWorth: freezed == prizeWorth
          ? _value.prizeWorth
          : prizeWorth // ignore: cast_nullable_to_non_nullable
              as int?,
      hasSponsoredGifts: freezed == hasSponsoredGifts
          ? _value.hasSponsoredGifts
          : hasSponsoredGifts // ignore: cast_nullable_to_non_nullable
              as bool?,
      nearestbranch: freezed == nearestbranch
          ? _value.nearestbranch
          : nearestbranch // ignore: cast_nullable_to_non_nullable
              as String?,
      membershipId: freezed == membershipId
          ? _value.membershipId
          : membershipId // ignore: cast_nullable_to_non_nullable
              as String?,
      membershipTitle: freezed == membershipTitle
          ? _value.membershipTitle
          : membershipTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      membershipColor: freezed == membershipColor
          ? _value.membershipColor
          : membershipColor // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VendorImplCopyWith<$Res> implements $VendorCopyWith<$Res> {
  factory _$$VendorImplCopyWith(
          _$VendorImpl value, $Res Function(_$VendorImpl) then) =
      __$$VendorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? photo,
      String? phone,
      @JsonKey(name: 'profile_url') String? profileUrl,
      @JsonKey(name: 'storycount') int? storyCount,
      @JsonKey(name: 'dealzcircle') int? dealzCircle,
      int? connection,
      @JsonKey(name: 'prize_worth') int? prizeWorth,
      @JsonKey(name: 'has_sponsored_gifts') bool? hasSponsoredGifts,
      String? nearestbranch,
      @JsonKey(name: 'membership_id') String? membershipId,
      @JsonKey(name: 'membership_title') String? membershipTitle,
      @JsonKey(name: 'membership_color') String? membershipColor});
}

/// @nodoc
class __$$VendorImplCopyWithImpl<$Res>
    extends _$VendorCopyWithImpl<$Res, _$VendorImpl>
    implements _$$VendorImplCopyWith<$Res> {
  __$$VendorImplCopyWithImpl(
      _$VendorImpl _value, $Res Function(_$VendorImpl) _then)
      : super(_value, _then);

  /// Create a copy of Vendor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? photo = freezed,
    Object? phone = freezed,
    Object? profileUrl = freezed,
    Object? storyCount = freezed,
    Object? dealzCircle = freezed,
    Object? connection = freezed,
    Object? prizeWorth = freezed,
    Object? hasSponsoredGifts = freezed,
    Object? nearestbranch = freezed,
    Object? membershipId = freezed,
    Object? membershipTitle = freezed,
    Object? membershipColor = freezed,
  }) {
    return _then(_$VendorImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      profileUrl: freezed == profileUrl
          ? _value.profileUrl
          : profileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      storyCount: freezed == storyCount
          ? _value.storyCount
          : storyCount // ignore: cast_nullable_to_non_nullable
              as int?,
      dealzCircle: freezed == dealzCircle
          ? _value.dealzCircle
          : dealzCircle // ignore: cast_nullable_to_non_nullable
              as int?,
      connection: freezed == connection
          ? _value.connection
          : connection // ignore: cast_nullable_to_non_nullable
              as int?,
      prizeWorth: freezed == prizeWorth
          ? _value.prizeWorth
          : prizeWorth // ignore: cast_nullable_to_non_nullable
              as int?,
      hasSponsoredGifts: freezed == hasSponsoredGifts
          ? _value.hasSponsoredGifts
          : hasSponsoredGifts // ignore: cast_nullable_to_non_nullable
              as bool?,
      nearestbranch: freezed == nearestbranch
          ? _value.nearestbranch
          : nearestbranch // ignore: cast_nullable_to_non_nullable
              as String?,
      membershipId: freezed == membershipId
          ? _value.membershipId
          : membershipId // ignore: cast_nullable_to_non_nullable
              as String?,
      membershipTitle: freezed == membershipTitle
          ? _value.membershipTitle
          : membershipTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      membershipColor: freezed == membershipColor
          ? _value.membershipColor
          : membershipColor // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VendorImpl implements _Vendor {
  const _$VendorImpl(
      {this.name,
      this.photo,
      this.phone,
      @JsonKey(name: 'profile_url') this.profileUrl,
      @JsonKey(name: 'storycount') this.storyCount,
      @JsonKey(name: 'dealzcircle') this.dealzCircle,
      this.connection,
      @JsonKey(name: 'prize_worth') this.prizeWorth,
      @JsonKey(name: 'has_sponsored_gifts') this.hasSponsoredGifts,
      this.nearestbranch,
      @JsonKey(name: 'membership_id') this.membershipId,
      @JsonKey(name: 'membership_title') this.membershipTitle,
      @JsonKey(name: 'membership_color') this.membershipColor});

  factory _$VendorImpl.fromJson(Map<String, dynamic> json) =>
      _$$VendorImplFromJson(json);

  @override
  final String? name;
  @override
  final String? photo;
  @override
  final String? phone;
  @override
  @JsonKey(name: 'profile_url')
  final String? profileUrl;
  @override
  @JsonKey(name: 'storycount')
  final int? storyCount;
  @override
  @JsonKey(name: 'dealzcircle')
  final int? dealzCircle;
  @override
  final int? connection;
  @override
  @JsonKey(name: 'prize_worth')
  final int? prizeWorth;
  @override
  @JsonKey(name: 'has_sponsored_gifts')
  final bool? hasSponsoredGifts;
  @override
  final String? nearestbranch;
  @override
  @JsonKey(name: 'membership_id')
  final String? membershipId;
  @override
  @JsonKey(name: 'membership_title')
  final String? membershipTitle;
  @override
  @JsonKey(name: 'membership_color')
  final String? membershipColor;

  @override
  String toString() {
    return 'Vendor(name: $name, photo: $photo, phone: $phone, profileUrl: $profileUrl, storyCount: $storyCount, dealzCircle: $dealzCircle, connection: $connection, prizeWorth: $prizeWorth, hasSponsoredGifts: $hasSponsoredGifts, nearestbranch: $nearestbranch, membershipId: $membershipId, membershipTitle: $membershipTitle, membershipColor: $membershipColor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VendorImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.profileUrl, profileUrl) ||
                other.profileUrl == profileUrl) &&
            (identical(other.storyCount, storyCount) ||
                other.storyCount == storyCount) &&
            (identical(other.dealzCircle, dealzCircle) ||
                other.dealzCircle == dealzCircle) &&
            (identical(other.connection, connection) ||
                other.connection == connection) &&
            (identical(other.prizeWorth, prizeWorth) ||
                other.prizeWorth == prizeWorth) &&
            (identical(other.hasSponsoredGifts, hasSponsoredGifts) ||
                other.hasSponsoredGifts == hasSponsoredGifts) &&
            (identical(other.nearestbranch, nearestbranch) ||
                other.nearestbranch == nearestbranch) &&
            (identical(other.membershipId, membershipId) ||
                other.membershipId == membershipId) &&
            (identical(other.membershipTitle, membershipTitle) ||
                other.membershipTitle == membershipTitle) &&
            (identical(other.membershipColor, membershipColor) ||
                other.membershipColor == membershipColor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      photo,
      phone,
      profileUrl,
      storyCount,
      dealzCircle,
      connection,
      prizeWorth,
      hasSponsoredGifts,
      nearestbranch,
      membershipId,
      membershipTitle,
      membershipColor);

  /// Create a copy of Vendor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VendorImplCopyWith<_$VendorImpl> get copyWith =>
      __$$VendorImplCopyWithImpl<_$VendorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VendorImplToJson(
      this,
    );
  }
}

abstract class _Vendor implements Vendor {
  const factory _Vendor(
          {final String? name,
          final String? photo,
          final String? phone,
          @JsonKey(name: 'profile_url') final String? profileUrl,
          @JsonKey(name: 'storycount') final int? storyCount,
          @JsonKey(name: 'dealzcircle') final int? dealzCircle,
          final int? connection,
          @JsonKey(name: 'prize_worth') final int? prizeWorth,
          @JsonKey(name: 'has_sponsored_gifts') final bool? hasSponsoredGifts,
          final String? nearestbranch,
          @JsonKey(name: 'membership_id') final String? membershipId,
          @JsonKey(name: 'membership_title') final String? membershipTitle,
          @JsonKey(name: 'membership_color') final String? membershipColor}) =
      _$VendorImpl;

  factory _Vendor.fromJson(Map<String, dynamic> json) = _$VendorImpl.fromJson;

  @override
  String? get name;
  @override
  String? get photo;
  @override
  String? get phone;
  @override
  @JsonKey(name: 'profile_url')
  String? get profileUrl;
  @override
  @JsonKey(name: 'storycount')
  int? get storyCount;
  @override
  @JsonKey(name: 'dealzcircle')
  int? get dealzCircle;
  @override
  int? get connection;
  @override
  @JsonKey(name: 'prize_worth')
  int? get prizeWorth;
  @override
  @JsonKey(name: 'has_sponsored_gifts')
  bool? get hasSponsoredGifts;
  @override
  String? get nearestbranch;
  @override
  @JsonKey(name: 'membership_id')
  String? get membershipId;
  @override
  @JsonKey(name: 'membership_title')
  String? get membershipTitle;
  @override
  @JsonKey(name: 'membership_color')
  String? get membershipColor;

  /// Create a copy of Vendor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VendorImplCopyWith<_$VendorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
