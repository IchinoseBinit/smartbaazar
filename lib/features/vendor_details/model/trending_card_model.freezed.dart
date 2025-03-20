// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trending_card_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TrendingResponse _$TrendingResponseFromJson(Map<String, dynamic> json) {
  return _TrendingResponse.fromJson(json);
}

/// @nodoc
mixin _$TrendingResponse {
  List<TrendingVendor> get trending => throw _privateConstructorUsedError;

  /// Serializes this TrendingResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TrendingResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrendingResponseCopyWith<TrendingResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrendingResponseCopyWith<$Res> {
  factory $TrendingResponseCopyWith(
          TrendingResponse value, $Res Function(TrendingResponse) then) =
      _$TrendingResponseCopyWithImpl<$Res, TrendingResponse>;
  @useResult
  $Res call({List<TrendingVendor> trending});
}

/// @nodoc
class _$TrendingResponseCopyWithImpl<$Res, $Val extends TrendingResponse>
    implements $TrendingResponseCopyWith<$Res> {
  _$TrendingResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrendingResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trending = null,
  }) {
    return _then(_value.copyWith(
      trending: null == trending
          ? _value.trending
          : trending // ignore: cast_nullable_to_non_nullable
              as List<TrendingVendor>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrendingResponseImplCopyWith<$Res>
    implements $TrendingResponseCopyWith<$Res> {
  factory _$$TrendingResponseImplCopyWith(_$TrendingResponseImpl value,
          $Res Function(_$TrendingResponseImpl) then) =
      __$$TrendingResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TrendingVendor> trending});
}

/// @nodoc
class __$$TrendingResponseImplCopyWithImpl<$Res>
    extends _$TrendingResponseCopyWithImpl<$Res, _$TrendingResponseImpl>
    implements _$$TrendingResponseImplCopyWith<$Res> {
  __$$TrendingResponseImplCopyWithImpl(_$TrendingResponseImpl _value,
      $Res Function(_$TrendingResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrendingResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trending = null,
  }) {
    return _then(_$TrendingResponseImpl(
      trending: null == trending
          ? _value._trending
          : trending // ignore: cast_nullable_to_non_nullable
              as List<TrendingVendor>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrendingResponseImpl implements _TrendingResponse {
  const _$TrendingResponseImpl({required final List<TrendingVendor> trending})
      : _trending = trending;

  factory _$TrendingResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrendingResponseImplFromJson(json);

  final List<TrendingVendor> _trending;
  @override
  List<TrendingVendor> get trending {
    if (_trending is EqualUnmodifiableListView) return _trending;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trending);
  }

  @override
  String toString() {
    return 'TrendingResponse(trending: $trending)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrendingResponseImpl &&
            const DeepCollectionEquality().equals(other._trending, _trending));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_trending));

  /// Create a copy of TrendingResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrendingResponseImplCopyWith<_$TrendingResponseImpl> get copyWith =>
      __$$TrendingResponseImplCopyWithImpl<_$TrendingResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrendingResponseImplToJson(
      this,
    );
  }
}

abstract class _TrendingResponse implements TrendingResponse {
  const factory _TrendingResponse(
      {required final List<TrendingVendor> trending}) = _$TrendingResponseImpl;

  factory _TrendingResponse.fromJson(Map<String, dynamic> json) =
      _$TrendingResponseImpl.fromJson;

  @override
  List<TrendingVendor> get trending;

  /// Create a copy of TrendingResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrendingResponseImplCopyWith<_$TrendingResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TrendingVendor _$TrendingVendorFromJson(Map<String, dynamic> json) {
  return _TrendingVendor.fromJson(json);
}

/// @nodoc
mixin _$TrendingVendor {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'membership_plan_id')
  String? get membershipPlanId => throw _privateConstructorUsedError;
  @JsonKey(name: 'membership_status')
  String? get membershipStatus => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'branch_location')
  String? get branchLocation => throw _privateConstructorUsedError;
  @JsonKey(name: 'nearestBranch')
  dynamic get nearestBranch => throw _privateConstructorUsedError;
  TrendingVendorCard? get vendor_card => throw _privateConstructorUsedError;

  /// Serializes this TrendingVendor to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TrendingVendor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrendingVendorCopyWith<TrendingVendor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrendingVendorCopyWith<$Res> {
  factory $TrendingVendorCopyWith(
          TrendingVendor value, $Res Function(TrendingVendor) then) =
      _$TrendingVendorCopyWithImpl<$Res, TrendingVendor>;
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? username,
      @JsonKey(name: 'membership_plan_id') String? membershipPlanId,
      @JsonKey(name: 'membership_status') String? membershipStatus,
      String? photo,
      String? phone,
      @JsonKey(name: 'branch_location') String? branchLocation,
      @JsonKey(name: 'nearestBranch') dynamic nearestBranch,
      TrendingVendorCard? vendor_card});

  $TrendingVendorCardCopyWith<$Res>? get vendor_card;
}

/// @nodoc
class _$TrendingVendorCopyWithImpl<$Res, $Val extends TrendingVendor>
    implements $TrendingVendorCopyWith<$Res> {
  _$TrendingVendorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrendingVendor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? username = freezed,
    Object? membershipPlanId = freezed,
    Object? membershipStatus = freezed,
    Object? photo = freezed,
    Object? phone = freezed,
    Object? branchLocation = freezed,
    Object? nearestBranch = freezed,
    Object? vendor_card = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      membershipPlanId: freezed == membershipPlanId
          ? _value.membershipPlanId
          : membershipPlanId // ignore: cast_nullable_to_non_nullable
              as String?,
      membershipStatus: freezed == membershipStatus
          ? _value.membershipStatus
          : membershipStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      branchLocation: freezed == branchLocation
          ? _value.branchLocation
          : branchLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      nearestBranch: freezed == nearestBranch
          ? _value.nearestBranch
          : nearestBranch // ignore: cast_nullable_to_non_nullable
              as dynamic,
      vendor_card: freezed == vendor_card
          ? _value.vendor_card
          : vendor_card // ignore: cast_nullable_to_non_nullable
              as TrendingVendorCard?,
    ) as $Val);
  }

  /// Create a copy of TrendingVendor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TrendingVendorCardCopyWith<$Res>? get vendor_card {
    if (_value.vendor_card == null) {
      return null;
    }

    return $TrendingVendorCardCopyWith<$Res>(_value.vendor_card!, (value) {
      return _then(_value.copyWith(vendor_card: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TrendingVendorImplCopyWith<$Res>
    implements $TrendingVendorCopyWith<$Res> {
  factory _$$TrendingVendorImplCopyWith(_$TrendingVendorImpl value,
          $Res Function(_$TrendingVendorImpl) then) =
      __$$TrendingVendorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? username,
      @JsonKey(name: 'membership_plan_id') String? membershipPlanId,
      @JsonKey(name: 'membership_status') String? membershipStatus,
      String? photo,
      String? phone,
      @JsonKey(name: 'branch_location') String? branchLocation,
      @JsonKey(name: 'nearestBranch') dynamic nearestBranch,
      TrendingVendorCard? vendor_card});

  @override
  $TrendingVendorCardCopyWith<$Res>? get vendor_card;
}

/// @nodoc
class __$$TrendingVendorImplCopyWithImpl<$Res>
    extends _$TrendingVendorCopyWithImpl<$Res, _$TrendingVendorImpl>
    implements _$$TrendingVendorImplCopyWith<$Res> {
  __$$TrendingVendorImplCopyWithImpl(
      _$TrendingVendorImpl _value, $Res Function(_$TrendingVendorImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrendingVendor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? username = freezed,
    Object? membershipPlanId = freezed,
    Object? membershipStatus = freezed,
    Object? photo = freezed,
    Object? phone = freezed,
    Object? branchLocation = freezed,
    Object? nearestBranch = freezed,
    Object? vendor_card = freezed,
  }) {
    return _then(_$TrendingVendorImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      membershipPlanId: freezed == membershipPlanId
          ? _value.membershipPlanId
          : membershipPlanId // ignore: cast_nullable_to_non_nullable
              as String?,
      membershipStatus: freezed == membershipStatus
          ? _value.membershipStatus
          : membershipStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      branchLocation: freezed == branchLocation
          ? _value.branchLocation
          : branchLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      nearestBranch: freezed == nearestBranch
          ? _value.nearestBranch
          : nearestBranch // ignore: cast_nullable_to_non_nullable
              as dynamic,
      vendor_card: freezed == vendor_card
          ? _value.vendor_card
          : vendor_card // ignore: cast_nullable_to_non_nullable
              as TrendingVendorCard?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrendingVendorImpl implements _TrendingVendor {
  const _$TrendingVendorImpl(
      {required this.id,
      required this.name,
      required this.username,
      @JsonKey(name: 'membership_plan_id') required this.membershipPlanId,
      @JsonKey(name: 'membership_status') required this.membershipStatus,
      required this.photo,
      required this.phone,
      @JsonKey(name: 'branch_location') required this.branchLocation,
      @JsonKey(name: 'nearestBranch') this.nearestBranch,
      required this.vendor_card});

  factory _$TrendingVendorImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrendingVendorImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? username;
  @override
  @JsonKey(name: 'membership_plan_id')
  final String? membershipPlanId;
  @override
  @JsonKey(name: 'membership_status')
  final String? membershipStatus;
  @override
  final String? photo;
  @override
  final String? phone;
  @override
  @JsonKey(name: 'branch_location')
  final String? branchLocation;
  @override
  @JsonKey(name: 'nearestBranch')
  final dynamic nearestBranch;
  @override
  final TrendingVendorCard? vendor_card;

  @override
  String toString() {
    return 'TrendingVendor(id: $id, name: $name, username: $username, membershipPlanId: $membershipPlanId, membershipStatus: $membershipStatus, photo: $photo, phone: $phone, branchLocation: $branchLocation, nearestBranch: $nearestBranch, vendor_card: $vendor_card)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrendingVendorImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.membershipPlanId, membershipPlanId) ||
                other.membershipPlanId == membershipPlanId) &&
            (identical(other.membershipStatus, membershipStatus) ||
                other.membershipStatus == membershipStatus) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.branchLocation, branchLocation) ||
                other.branchLocation == branchLocation) &&
            const DeepCollectionEquality()
                .equals(other.nearestBranch, nearestBranch) &&
            (identical(other.vendor_card, vendor_card) ||
                other.vendor_card == vendor_card));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      username,
      membershipPlanId,
      membershipStatus,
      photo,
      phone,
      branchLocation,
      const DeepCollectionEquality().hash(nearestBranch),
      vendor_card);

  /// Create a copy of TrendingVendor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrendingVendorImplCopyWith<_$TrendingVendorImpl> get copyWith =>
      __$$TrendingVendorImplCopyWithImpl<_$TrendingVendorImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrendingVendorImplToJson(
      this,
    );
  }
}

abstract class _TrendingVendor implements TrendingVendor {
  const factory _TrendingVendor(
      {required final String? id,
      required final String? name,
      required final String? username,
      @JsonKey(name: 'membership_plan_id')
      required final String? membershipPlanId,
      @JsonKey(name: 'membership_status')
      required final String? membershipStatus,
      required final String? photo,
      required final String? phone,
      @JsonKey(name: 'branch_location') required final String? branchLocation,
      @JsonKey(name: 'nearestBranch') final dynamic nearestBranch,
      required final TrendingVendorCard? vendor_card}) = _$TrendingVendorImpl;

  factory _TrendingVendor.fromJson(Map<String, dynamic> json) =
      _$TrendingVendorImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get username;
  @override
  @JsonKey(name: 'membership_plan_id')
  String? get membershipPlanId;
  @override
  @JsonKey(name: 'membership_status')
  String? get membershipStatus;
  @override
  String? get photo;
  @override
  String? get phone;
  @override
  @JsonKey(name: 'branch_location')
  String? get branchLocation;
  @override
  @JsonKey(name: 'nearestBranch')
  dynamic get nearestBranch;
  @override
  TrendingVendorCard? get vendor_card;

  /// Create a copy of TrendingVendor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrendingVendorImplCopyWith<_$TrendingVendorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TrendingVendorCard _$TrendingVendorCardFromJson(Map<String, dynamic> json) {
  return _TrendingVendorCard.fromJson(json);
}

/// @nodoc
mixin _$TrendingVendorCard {
  String? get name => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;
  String? get longitude => throw _privateConstructorUsedError;
  String? get latitude => throw _privateConstructorUsedError;
  int? get subscribers => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get profile_url => throw _privateConstructorUsedError;
  int? get storycount => throw _privateConstructorUsedError;
  int? get prize_worth => throw _privateConstructorUsedError;
  bool? get has_sponsored_gifts => throw _privateConstructorUsedError;
  String? get nearestbranch => throw _privateConstructorUsedError;
  String? get membership_id => throw _privateConstructorUsedError;
  String? get membership_title => throw _privateConstructorUsedError;
  String? get membership_color => throw _privateConstructorUsedError;
  int? get connection => throw _privateConstructorUsedError;
  @JsonKey(name: 'subscribed')
  int? get subscribed => throw _privateConstructorUsedError;

  /// Serializes this TrendingVendorCard to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TrendingVendorCard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrendingVendorCardCopyWith<TrendingVendorCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrendingVendorCardCopyWith<$Res> {
  factory $TrendingVendorCardCopyWith(
          TrendingVendorCard value, $Res Function(TrendingVendorCard) then) =
      _$TrendingVendorCardCopyWithImpl<$Res, TrendingVendorCard>;
  @useResult
  $Res call(
      {String? name,
      String? photo,
      String? longitude,
      String? latitude,
      int? subscribers,
      String? phone,
      String? profile_url,
      int? storycount,
      int? prize_worth,
      bool? has_sponsored_gifts,
      String? nearestbranch,
      String? membership_id,
      String? membership_title,
      String? membership_color,
      int? connection,
      @JsonKey(name: 'subscribed') int? subscribed});
}

/// @nodoc
class _$TrendingVendorCardCopyWithImpl<$Res, $Val extends TrendingVendorCard>
    implements $TrendingVendorCardCopyWith<$Res> {
  _$TrendingVendorCardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrendingVendorCard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? photo = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
    Object? subscribers = freezed,
    Object? phone = freezed,
    Object? profile_url = freezed,
    Object? storycount = freezed,
    Object? prize_worth = freezed,
    Object? has_sponsored_gifts = freezed,
    Object? nearestbranch = freezed,
    Object? membership_id = freezed,
    Object? membership_title = freezed,
    Object? membership_color = freezed,
    Object? connection = freezed,
    Object? subscribed = freezed,
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
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      subscribers: freezed == subscribers
          ? _value.subscribers
          : subscribers // ignore: cast_nullable_to_non_nullable
              as int?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      profile_url: freezed == profile_url
          ? _value.profile_url
          : profile_url // ignore: cast_nullable_to_non_nullable
              as String?,
      storycount: freezed == storycount
          ? _value.storycount
          : storycount // ignore: cast_nullable_to_non_nullable
              as int?,
      prize_worth: freezed == prize_worth
          ? _value.prize_worth
          : prize_worth // ignore: cast_nullable_to_non_nullable
              as int?,
      has_sponsored_gifts: freezed == has_sponsored_gifts
          ? _value.has_sponsored_gifts
          : has_sponsored_gifts // ignore: cast_nullable_to_non_nullable
              as bool?,
      nearestbranch: freezed == nearestbranch
          ? _value.nearestbranch
          : nearestbranch // ignore: cast_nullable_to_non_nullable
              as String?,
      membership_id: freezed == membership_id
          ? _value.membership_id
          : membership_id // ignore: cast_nullable_to_non_nullable
              as String?,
      membership_title: freezed == membership_title
          ? _value.membership_title
          : membership_title // ignore: cast_nullable_to_non_nullable
              as String?,
      membership_color: freezed == membership_color
          ? _value.membership_color
          : membership_color // ignore: cast_nullable_to_non_nullable
              as String?,
      connection: freezed == connection
          ? _value.connection
          : connection // ignore: cast_nullable_to_non_nullable
              as int?,
      subscribed: freezed == subscribed
          ? _value.subscribed
          : subscribed // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrendingVendorCardImplCopyWith<$Res>
    implements $TrendingVendorCardCopyWith<$Res> {
  factory _$$TrendingVendorCardImplCopyWith(_$TrendingVendorCardImpl value,
          $Res Function(_$TrendingVendorCardImpl) then) =
      __$$TrendingVendorCardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? photo,
      String? longitude,
      String? latitude,
      int? subscribers,
      String? phone,
      String? profile_url,
      int? storycount,
      int? prize_worth,
      bool? has_sponsored_gifts,
      String? nearestbranch,
      String? membership_id,
      String? membership_title,
      String? membership_color,
      int? connection,
      @JsonKey(name: 'subscribed') int? subscribed});
}

/// @nodoc
class __$$TrendingVendorCardImplCopyWithImpl<$Res>
    extends _$TrendingVendorCardCopyWithImpl<$Res, _$TrendingVendorCardImpl>
    implements _$$TrendingVendorCardImplCopyWith<$Res> {
  __$$TrendingVendorCardImplCopyWithImpl(_$TrendingVendorCardImpl _value,
      $Res Function(_$TrendingVendorCardImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrendingVendorCard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? photo = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
    Object? subscribers = freezed,
    Object? phone = freezed,
    Object? profile_url = freezed,
    Object? storycount = freezed,
    Object? prize_worth = freezed,
    Object? has_sponsored_gifts = freezed,
    Object? nearestbranch = freezed,
    Object? membership_id = freezed,
    Object? membership_title = freezed,
    Object? membership_color = freezed,
    Object? connection = freezed,
    Object? subscribed = freezed,
  }) {
    return _then(_$TrendingVendorCardImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      subscribers: freezed == subscribers
          ? _value.subscribers
          : subscribers // ignore: cast_nullable_to_non_nullable
              as int?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      profile_url: freezed == profile_url
          ? _value.profile_url
          : profile_url // ignore: cast_nullable_to_non_nullable
              as String?,
      storycount: freezed == storycount
          ? _value.storycount
          : storycount // ignore: cast_nullable_to_non_nullable
              as int?,
      prize_worth: freezed == prize_worth
          ? _value.prize_worth
          : prize_worth // ignore: cast_nullable_to_non_nullable
              as int?,
      has_sponsored_gifts: freezed == has_sponsored_gifts
          ? _value.has_sponsored_gifts
          : has_sponsored_gifts // ignore: cast_nullable_to_non_nullable
              as bool?,
      nearestbranch: freezed == nearestbranch
          ? _value.nearestbranch
          : nearestbranch // ignore: cast_nullable_to_non_nullable
              as String?,
      membership_id: freezed == membership_id
          ? _value.membership_id
          : membership_id // ignore: cast_nullable_to_non_nullable
              as String?,
      membership_title: freezed == membership_title
          ? _value.membership_title
          : membership_title // ignore: cast_nullable_to_non_nullable
              as String?,
      membership_color: freezed == membership_color
          ? _value.membership_color
          : membership_color // ignore: cast_nullable_to_non_nullable
              as String?,
      connection: freezed == connection
          ? _value.connection
          : connection // ignore: cast_nullable_to_non_nullable
              as int?,
      subscribed: freezed == subscribed
          ? _value.subscribed
          : subscribed // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrendingVendorCardImpl implements _TrendingVendorCard {
  const _$TrendingVendorCardImpl(
      {this.name,
      this.photo,
      this.longitude,
      this.latitude,
      this.subscribers,
      this.phone,
      this.profile_url,
      this.storycount,
      this.prize_worth,
      this.has_sponsored_gifts,
      this.nearestbranch,
      this.membership_id,
      this.membership_title,
      this.membership_color,
      this.connection,
      @JsonKey(name: 'subscribed') this.subscribed});

  factory _$TrendingVendorCardImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrendingVendorCardImplFromJson(json);

  @override
  final String? name;
  @override
  final String? photo;
  @override
  final String? longitude;
  @override
  final String? latitude;
  @override
  final int? subscribers;
  @override
  final String? phone;
  @override
  final String? profile_url;
  @override
  final int? storycount;
  @override
  final int? prize_worth;
  @override
  final bool? has_sponsored_gifts;
  @override
  final String? nearestbranch;
  @override
  final String? membership_id;
  @override
  final String? membership_title;
  @override
  final String? membership_color;
  @override
  final int? connection;
  @override
  @JsonKey(name: 'subscribed')
  final int? subscribed;

  @override
  String toString() {
    return 'TrendingVendorCard(name: $name, photo: $photo, longitude: $longitude, latitude: $latitude, subscribers: $subscribers, phone: $phone, profile_url: $profile_url, storycount: $storycount, prize_worth: $prize_worth, has_sponsored_gifts: $has_sponsored_gifts, nearestbranch: $nearestbranch, membership_id: $membership_id, membership_title: $membership_title, membership_color: $membership_color, connection: $connection, subscribed: $subscribed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrendingVendorCardImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.subscribers, subscribers) ||
                other.subscribers == subscribers) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.profile_url, profile_url) ||
                other.profile_url == profile_url) &&
            (identical(other.storycount, storycount) ||
                other.storycount == storycount) &&
            (identical(other.prize_worth, prize_worth) ||
                other.prize_worth == prize_worth) &&
            (identical(other.has_sponsored_gifts, has_sponsored_gifts) ||
                other.has_sponsored_gifts == has_sponsored_gifts) &&
            (identical(other.nearestbranch, nearestbranch) ||
                other.nearestbranch == nearestbranch) &&
            (identical(other.membership_id, membership_id) ||
                other.membership_id == membership_id) &&
            (identical(other.membership_title, membership_title) ||
                other.membership_title == membership_title) &&
            (identical(other.membership_color, membership_color) ||
                other.membership_color == membership_color) &&
            (identical(other.connection, connection) ||
                other.connection == connection) &&
            (identical(other.subscribed, subscribed) ||
                other.subscribed == subscribed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      photo,
      longitude,
      latitude,
      subscribers,
      phone,
      profile_url,
      storycount,
      prize_worth,
      has_sponsored_gifts,
      nearestbranch,
      membership_id,
      membership_title,
      membership_color,
      connection,
      subscribed);

  /// Create a copy of TrendingVendorCard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrendingVendorCardImplCopyWith<_$TrendingVendorCardImpl> get copyWith =>
      __$$TrendingVendorCardImplCopyWithImpl<_$TrendingVendorCardImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrendingVendorCardImplToJson(
      this,
    );
  }
}

abstract class _TrendingVendorCard implements TrendingVendorCard {
  const factory _TrendingVendorCard(
          {final String? name,
          final String? photo,
          final String? longitude,
          final String? latitude,
          final int? subscribers,
          final String? phone,
          final String? profile_url,
          final int? storycount,
          final int? prize_worth,
          final bool? has_sponsored_gifts,
          final String? nearestbranch,
          final String? membership_id,
          final String? membership_title,
          final String? membership_color,
          final int? connection,
          @JsonKey(name: 'subscribed') final int? subscribed}) =
      _$TrendingVendorCardImpl;

  factory _TrendingVendorCard.fromJson(Map<String, dynamic> json) =
      _$TrendingVendorCardImpl.fromJson;

  @override
  String? get name;
  @override
  String? get photo;
  @override
  String? get longitude;
  @override
  String? get latitude;
  @override
  int? get subscribers;
  @override
  String? get phone;
  @override
  String? get profile_url;
  @override
  int? get storycount;
  @override
  int? get prize_worth;
  @override
  bool? get has_sponsored_gifts;
  @override
  String? get nearestbranch;
  @override
  String? get membership_id;
  @override
  String? get membership_title;
  @override
  String? get membership_color;
  @override
  int? get connection;
  @override
  @JsonKey(name: 'subscribed')
  int? get subscribed;

  /// Create a copy of TrendingVendorCard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrendingVendorCardImplCopyWith<_$TrendingVendorCardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
