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

SubscriptionResponse _$SubscriptionResponseFromJson(Map<String, dynamic> json) {
  return _SubscriptionResponse.fromJson(json);
}

/// @nodoc
mixin _$SubscriptionResponse {
  Subscriptions? get subscriptions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubscriptionResponseCopyWith<SubscriptionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionResponseCopyWith<$Res> {
  factory $SubscriptionResponseCopyWith(SubscriptionResponse value,
          $Res Function(SubscriptionResponse) then) =
      _$SubscriptionResponseCopyWithImpl<$Res, SubscriptionResponse>;
  @useResult
  $Res call({Subscriptions? subscriptions});

  $SubscriptionsCopyWith<$Res>? get subscriptions;
}

/// @nodoc
class _$SubscriptionResponseCopyWithImpl<$Res,
        $Val extends SubscriptionResponse>
    implements $SubscriptionResponseCopyWith<$Res> {
  _$SubscriptionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscriptions = freezed,
  }) {
    return _then(_value.copyWith(
      subscriptions: freezed == subscriptions
          ? _value.subscriptions
          : subscriptions // ignore: cast_nullable_to_non_nullable
              as Subscriptions?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SubscriptionsCopyWith<$Res>? get subscriptions {
    if (_value.subscriptions == null) {
      return null;
    }

    return $SubscriptionsCopyWith<$Res>(_value.subscriptions!, (value) {
      return _then(_value.copyWith(subscriptions: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubscriptionResponseImplCopyWith<$Res>
    implements $SubscriptionResponseCopyWith<$Res> {
  factory _$$SubscriptionResponseImplCopyWith(_$SubscriptionResponseImpl value,
          $Res Function(_$SubscriptionResponseImpl) then) =
      __$$SubscriptionResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Subscriptions? subscriptions});

  @override
  $SubscriptionsCopyWith<$Res>? get subscriptions;
}

/// @nodoc
class __$$SubscriptionResponseImplCopyWithImpl<$Res>
    extends _$SubscriptionResponseCopyWithImpl<$Res, _$SubscriptionResponseImpl>
    implements _$$SubscriptionResponseImplCopyWith<$Res> {
  __$$SubscriptionResponseImplCopyWithImpl(_$SubscriptionResponseImpl _value,
      $Res Function(_$SubscriptionResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscriptions = freezed,
  }) {
    return _then(_$SubscriptionResponseImpl(
      subscriptions: freezed == subscriptions
          ? _value.subscriptions
          : subscriptions // ignore: cast_nullable_to_non_nullable
              as Subscriptions?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubscriptionResponseImpl implements _SubscriptionResponse {
  _$SubscriptionResponseImpl({this.subscriptions});

  factory _$SubscriptionResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubscriptionResponseImplFromJson(json);

  @override
  final Subscriptions? subscriptions;

  @override
  String toString() {
    return 'SubscriptionResponse(subscriptions: $subscriptions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionResponseImpl &&
            (identical(other.subscriptions, subscriptions) ||
                other.subscriptions == subscriptions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, subscriptions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionResponseImplCopyWith<_$SubscriptionResponseImpl>
      get copyWith =>
          __$$SubscriptionResponseImplCopyWithImpl<_$SubscriptionResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriptionResponseImplToJson(
      this,
    );
  }
}

abstract class _SubscriptionResponse implements SubscriptionResponse {
  factory _SubscriptionResponse({final Subscriptions? subscriptions}) =
      _$SubscriptionResponseImpl;

  factory _SubscriptionResponse.fromJson(Map<String, dynamic> json) =
      _$SubscriptionResponseImpl.fromJson;

  @override
  Subscriptions? get subscriptions;
  @override
  @JsonKey(ignore: true)
  _$$SubscriptionResponseImplCopyWith<_$SubscriptionResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Subscriptions _$SubscriptionsFromJson(Map<String, dynamic> json) {
  return _Subscriptions.fromJson(json);
}

/// @nodoc
mixin _$Subscriptions {
  int? get current_page => throw _privateConstructorUsedError;
  List<SubscriptionData>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubscriptionsCopyWith<Subscriptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionsCopyWith<$Res> {
  factory $SubscriptionsCopyWith(
          Subscriptions value, $Res Function(Subscriptions) then) =
      _$SubscriptionsCopyWithImpl<$Res, Subscriptions>;
  @useResult
  $Res call({int? current_page, List<SubscriptionData>? data});
}

/// @nodoc
class _$SubscriptionsCopyWithImpl<$Res, $Val extends Subscriptions>
    implements $SubscriptionsCopyWith<$Res> {
  _$SubscriptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current_page = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      current_page: freezed == current_page
          ? _value.current_page
          : current_page // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SubscriptionData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubscriptionsImplCopyWith<$Res>
    implements $SubscriptionsCopyWith<$Res> {
  factory _$$SubscriptionsImplCopyWith(
          _$SubscriptionsImpl value, $Res Function(_$SubscriptionsImpl) then) =
      __$$SubscriptionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? current_page, List<SubscriptionData>? data});
}

/// @nodoc
class __$$SubscriptionsImplCopyWithImpl<$Res>
    extends _$SubscriptionsCopyWithImpl<$Res, _$SubscriptionsImpl>
    implements _$$SubscriptionsImplCopyWith<$Res> {
  __$$SubscriptionsImplCopyWithImpl(
      _$SubscriptionsImpl _value, $Res Function(_$SubscriptionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current_page = freezed,
    Object? data = freezed,
  }) {
    return _then(_$SubscriptionsImpl(
      current_page: freezed == current_page
          ? _value.current_page
          : current_page // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SubscriptionData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubscriptionsImpl implements _Subscriptions {
  _$SubscriptionsImpl({this.current_page, final List<SubscriptionData>? data})
      : _data = data;

  factory _$SubscriptionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubscriptionsImplFromJson(json);

  @override
  final int? current_page;
  final List<SubscriptionData>? _data;
  @override
  List<SubscriptionData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Subscriptions(current_page: $current_page, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionsImpl &&
            (identical(other.current_page, current_page) ||
                other.current_page == current_page) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, current_page, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionsImplCopyWith<_$SubscriptionsImpl> get copyWith =>
      __$$SubscriptionsImplCopyWithImpl<_$SubscriptionsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriptionsImplToJson(
      this,
    );
  }
}

abstract class _Subscriptions implements Subscriptions {
  factory _Subscriptions(
      {final int? current_page,
      final List<SubscriptionData>? data}) = _$SubscriptionsImpl;

  factory _Subscriptions.fromJson(Map<String, dynamic> json) =
      _$SubscriptionsImpl.fromJson;

  @override
  int? get current_page;
  @override
  List<SubscriptionData>? get data;
  @override
  @JsonKey(ignore: true)
  _$$SubscriptionsImplCopyWith<_$SubscriptionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SubscriptionData _$SubscriptionDataFromJson(Map<String, dynamic> json) {
  return _SubscriptionData.fromJson(json);
}

/// @nodoc
mixin _$SubscriptionData {
  String? get id => throw _privateConstructorUsedError;
  String? get user_id => throw _privateConstructorUsedError;
  String? get vendor_id => throw _privateConstructorUsedError;
  String? get followed_date => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  SubscriptionVendorCard? get vendor_card => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubscriptionDataCopyWith<SubscriptionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionDataCopyWith<$Res> {
  factory $SubscriptionDataCopyWith(
          SubscriptionData value, $Res Function(SubscriptionData) then) =
      _$SubscriptionDataCopyWithImpl<$Res, SubscriptionData>;
  @useResult
  $Res call(
      {String? id,
      String? user_id,
      String? vendor_id,
      String? followed_date,
      String? status,
      SubscriptionVendorCard? vendor_card});

  $SubscriptionVendorCardCopyWith<$Res>? get vendor_card;
}

/// @nodoc
class _$SubscriptionDataCopyWithImpl<$Res, $Val extends SubscriptionData>
    implements $SubscriptionDataCopyWith<$Res> {
  _$SubscriptionDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? user_id = freezed,
    Object? vendor_id = freezed,
    Object? followed_date = freezed,
    Object? status = freezed,
    Object? vendor_card = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String?,
      vendor_id: freezed == vendor_id
          ? _value.vendor_id
          : vendor_id // ignore: cast_nullable_to_non_nullable
              as String?,
      followed_date: freezed == followed_date
          ? _value.followed_date
          : followed_date // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      vendor_card: freezed == vendor_card
          ? _value.vendor_card
          : vendor_card // ignore: cast_nullable_to_non_nullable
              as SubscriptionVendorCard?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SubscriptionVendorCardCopyWith<$Res>? get vendor_card {
    if (_value.vendor_card == null) {
      return null;
    }

    return $SubscriptionVendorCardCopyWith<$Res>(_value.vendor_card!, (value) {
      return _then(_value.copyWith(vendor_card: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubscriptionDataImplCopyWith<$Res>
    implements $SubscriptionDataCopyWith<$Res> {
  factory _$$SubscriptionDataImplCopyWith(_$SubscriptionDataImpl value,
          $Res Function(_$SubscriptionDataImpl) then) =
      __$$SubscriptionDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? user_id,
      String? vendor_id,
      String? followed_date,
      String? status,
      SubscriptionVendorCard? vendor_card});

  @override
  $SubscriptionVendorCardCopyWith<$Res>? get vendor_card;
}

/// @nodoc
class __$$SubscriptionDataImplCopyWithImpl<$Res>
    extends _$SubscriptionDataCopyWithImpl<$Res, _$SubscriptionDataImpl>
    implements _$$SubscriptionDataImplCopyWith<$Res> {
  __$$SubscriptionDataImplCopyWithImpl(_$SubscriptionDataImpl _value,
      $Res Function(_$SubscriptionDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? user_id = freezed,
    Object? vendor_id = freezed,
    Object? followed_date = freezed,
    Object? status = freezed,
    Object? vendor_card = freezed,
  }) {
    return _then(_$SubscriptionDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String?,
      vendor_id: freezed == vendor_id
          ? _value.vendor_id
          : vendor_id // ignore: cast_nullable_to_non_nullable
              as String?,
      followed_date: freezed == followed_date
          ? _value.followed_date
          : followed_date // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      vendor_card: freezed == vendor_card
          ? _value.vendor_card
          : vendor_card // ignore: cast_nullable_to_non_nullable
              as SubscriptionVendorCard?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubscriptionDataImpl implements _SubscriptionData {
  _$SubscriptionDataImpl(
      {this.id,
      this.user_id,
      this.vendor_id,
      this.followed_date,
      this.status,
      this.vendor_card});

  factory _$SubscriptionDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubscriptionDataImplFromJson(json);

  @override
  final String? id;
  @override
  final String? user_id;
  @override
  final String? vendor_id;
  @override
  final String? followed_date;
  @override
  final String? status;
  @override
  final SubscriptionVendorCard? vendor_card;

  @override
  String toString() {
    return 'SubscriptionData(id: $id, user_id: $user_id, vendor_id: $vendor_id, followed_date: $followed_date, status: $status, vendor_card: $vendor_card)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.vendor_id, vendor_id) ||
                other.vendor_id == vendor_id) &&
            (identical(other.followed_date, followed_date) ||
                other.followed_date == followed_date) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.vendor_card, vendor_card) ||
                other.vendor_card == vendor_card));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, user_id, vendor_id, followed_date, status, vendor_card);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionDataImplCopyWith<_$SubscriptionDataImpl> get copyWith =>
      __$$SubscriptionDataImplCopyWithImpl<_$SubscriptionDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriptionDataImplToJson(
      this,
    );
  }
}

abstract class _SubscriptionData implements SubscriptionData {
  factory _SubscriptionData(
      {final String? id,
      final String? user_id,
      final String? vendor_id,
      final String? followed_date,
      final String? status,
      final SubscriptionVendorCard? vendor_card}) = _$SubscriptionDataImpl;

  factory _SubscriptionData.fromJson(Map<String, dynamic> json) =
      _$SubscriptionDataImpl.fromJson;

  @override
  String? get id;
  @override
  String? get user_id;
  @override
  String? get vendor_id;
  @override
  String? get followed_date;
  @override
  String? get status;
  @override
  SubscriptionVendorCard? get vendor_card;
  @override
  @JsonKey(ignore: true)
  _$$SubscriptionDataImplCopyWith<_$SubscriptionDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SubscriptionVendorCard _$SubscriptionVendorCardFromJson(
    Map<String, dynamic> json) {
  return _SubscriptionVendorCard.fromJson(json);
}

/// @nodoc
mixin _$SubscriptionVendorCard {
  String? get name => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get profile_url => throw _privateConstructorUsedError;
  int? get storycount => throw _privateConstructorUsedError;
  int? get dealzcircle => throw _privateConstructorUsedError;
  int? get subscribed => throw _privateConstructorUsedError;
  int? get connection => throw _privateConstructorUsedError;
  int? get prize_worth => throw _privateConstructorUsedError;
  bool? get has_sponsored_gifts => throw _privateConstructorUsedError;
  String? get nearestbranch => throw _privateConstructorUsedError;
  String? get longitude => throw _privateConstructorUsedError;
  String? get latitude => throw _privateConstructorUsedError;
  String? get membership_id => throw _privateConstructorUsedError;
  String? get membership_title => throw _privateConstructorUsedError;
  String? get membership_color => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubscriptionVendorCardCopyWith<SubscriptionVendorCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionVendorCardCopyWith<$Res> {
  factory $SubscriptionVendorCardCopyWith(SubscriptionVendorCard value,
          $Res Function(SubscriptionVendorCard) then) =
      _$SubscriptionVendorCardCopyWithImpl<$Res, SubscriptionVendorCard>;
  @useResult
  $Res call(
      {String? name,
      String? photo,
      String? phone,
      String? profile_url,
      int? storycount,
      int? dealzcircle,
      int? subscribed,
      int? connection,
      int? prize_worth,
      bool? has_sponsored_gifts,
      String? nearestbranch,
      String? longitude,
      String? latitude,
      String? membership_id,
      String? membership_title,
      String? membership_color});
}

/// @nodoc
class _$SubscriptionVendorCardCopyWithImpl<$Res,
        $Val extends SubscriptionVendorCard>
    implements $SubscriptionVendorCardCopyWith<$Res> {
  _$SubscriptionVendorCardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? photo = freezed,
    Object? phone = freezed,
    Object? profile_url = freezed,
    Object? storycount = freezed,
    Object? dealzcircle = freezed,
    Object? subscribed = freezed,
    Object? connection = freezed,
    Object? prize_worth = freezed,
    Object? has_sponsored_gifts = freezed,
    Object? nearestbranch = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
    Object? membership_id = freezed,
    Object? membership_title = freezed,
    Object? membership_color = freezed,
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
      profile_url: freezed == profile_url
          ? _value.profile_url
          : profile_url // ignore: cast_nullable_to_non_nullable
              as String?,
      storycount: freezed == storycount
          ? _value.storycount
          : storycount // ignore: cast_nullable_to_non_nullable
              as int?,
      dealzcircle: freezed == dealzcircle
          ? _value.dealzcircle
          : dealzcircle // ignore: cast_nullable_to_non_nullable
              as int?,
      subscribed: freezed == subscribed
          ? _value.subscribed
          : subscribed // ignore: cast_nullable_to_non_nullable
              as int?,
      connection: freezed == connection
          ? _value.connection
          : connection // ignore: cast_nullable_to_non_nullable
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
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubscriptionVendorCardImplCopyWith<$Res>
    implements $SubscriptionVendorCardCopyWith<$Res> {
  factory _$$SubscriptionVendorCardImplCopyWith(
          _$SubscriptionVendorCardImpl value,
          $Res Function(_$SubscriptionVendorCardImpl) then) =
      __$$SubscriptionVendorCardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? photo,
      String? phone,
      String? profile_url,
      int? storycount,
      int? dealzcircle,
      int? subscribed,
      int? connection,
      int? prize_worth,
      bool? has_sponsored_gifts,
      String? nearestbranch,
      String? longitude,
      String? latitude,
      String? membership_id,
      String? membership_title,
      String? membership_color});
}

/// @nodoc
class __$$SubscriptionVendorCardImplCopyWithImpl<$Res>
    extends _$SubscriptionVendorCardCopyWithImpl<$Res,
        _$SubscriptionVendorCardImpl>
    implements _$$SubscriptionVendorCardImplCopyWith<$Res> {
  __$$SubscriptionVendorCardImplCopyWithImpl(
      _$SubscriptionVendorCardImpl _value,
      $Res Function(_$SubscriptionVendorCardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? photo = freezed,
    Object? phone = freezed,
    Object? profile_url = freezed,
    Object? storycount = freezed,
    Object? dealzcircle = freezed,
    Object? subscribed = freezed,
    Object? connection = freezed,
    Object? prize_worth = freezed,
    Object? has_sponsored_gifts = freezed,
    Object? nearestbranch = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
    Object? membership_id = freezed,
    Object? membership_title = freezed,
    Object? membership_color = freezed,
  }) {
    return _then(_$SubscriptionVendorCardImpl(
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
      profile_url: freezed == profile_url
          ? _value.profile_url
          : profile_url // ignore: cast_nullable_to_non_nullable
              as String?,
      storycount: freezed == storycount
          ? _value.storycount
          : storycount // ignore: cast_nullable_to_non_nullable
              as int?,
      dealzcircle: freezed == dealzcircle
          ? _value.dealzcircle
          : dealzcircle // ignore: cast_nullable_to_non_nullable
              as int?,
      subscribed: freezed == subscribed
          ? _value.subscribed
          : subscribed // ignore: cast_nullable_to_non_nullable
              as int?,
      connection: freezed == connection
          ? _value.connection
          : connection // ignore: cast_nullable_to_non_nullable
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
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubscriptionVendorCardImpl implements _SubscriptionVendorCard {
  _$SubscriptionVendorCardImpl(
      {this.name,
      this.photo,
      this.phone,
      this.profile_url,
      this.storycount,
      this.dealzcircle,
      this.subscribed,
      this.connection,
      this.prize_worth,
      this.has_sponsored_gifts,
      this.nearestbranch,
      this.longitude,
      this.latitude,
      this.membership_id,
      this.membership_title,
      this.membership_color});

  factory _$SubscriptionVendorCardImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubscriptionVendorCardImplFromJson(json);

  @override
  final String? name;
  @override
  final String? photo;
  @override
  final String? phone;
  @override
  final String? profile_url;
  @override
  final int? storycount;
  @override
  final int? dealzcircle;
  @override
  final int? subscribed;
  @override
  final int? connection;
  @override
  final int? prize_worth;
  @override
  final bool? has_sponsored_gifts;
  @override
  final String? nearestbranch;
  @override
  final String? longitude;
  @override
  final String? latitude;
  @override
  final String? membership_id;
  @override
  final String? membership_title;
  @override
  final String? membership_color;

  @override
  String toString() {
    return 'SubscriptionVendorCard(name: $name, photo: $photo, phone: $phone, profile_url: $profile_url, storycount: $storycount, dealzcircle: $dealzcircle, subscribed: $subscribed, connection: $connection, prize_worth: $prize_worth, has_sponsored_gifts: $has_sponsored_gifts, nearestbranch: $nearestbranch, longitude: $longitude, latitude: $latitude, membership_id: $membership_id, membership_title: $membership_title, membership_color: $membership_color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionVendorCardImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.profile_url, profile_url) ||
                other.profile_url == profile_url) &&
            (identical(other.storycount, storycount) ||
                other.storycount == storycount) &&
            (identical(other.dealzcircle, dealzcircle) ||
                other.dealzcircle == dealzcircle) &&
            (identical(other.subscribed, subscribed) ||
                other.subscribed == subscribed) &&
            (identical(other.connection, connection) ||
                other.connection == connection) &&
            (identical(other.prize_worth, prize_worth) ||
                other.prize_worth == prize_worth) &&
            (identical(other.has_sponsored_gifts, has_sponsored_gifts) ||
                other.has_sponsored_gifts == has_sponsored_gifts) &&
            (identical(other.nearestbranch, nearestbranch) ||
                other.nearestbranch == nearestbranch) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.membership_id, membership_id) ||
                other.membership_id == membership_id) &&
            (identical(other.membership_title, membership_title) ||
                other.membership_title == membership_title) &&
            (identical(other.membership_color, membership_color) ||
                other.membership_color == membership_color));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      photo,
      phone,
      profile_url,
      storycount,
      dealzcircle,
      subscribed,
      connection,
      prize_worth,
      has_sponsored_gifts,
      nearestbranch,
      longitude,
      latitude,
      membership_id,
      membership_title,
      membership_color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionVendorCardImplCopyWith<_$SubscriptionVendorCardImpl>
      get copyWith => __$$SubscriptionVendorCardImplCopyWithImpl<
          _$SubscriptionVendorCardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriptionVendorCardImplToJson(
      this,
    );
  }
}

abstract class _SubscriptionVendorCard implements SubscriptionVendorCard {
  factory _SubscriptionVendorCard(
      {final String? name,
      final String? photo,
      final String? phone,
      final String? profile_url,
      final int? storycount,
      final int? dealzcircle,
      final int? subscribed,
      final int? connection,
      final int? prize_worth,
      final bool? has_sponsored_gifts,
      final String? nearestbranch,
      final String? longitude,
      final String? latitude,
      final String? membership_id,
      final String? membership_title,
      final String? membership_color}) = _$SubscriptionVendorCardImpl;

  factory _SubscriptionVendorCard.fromJson(Map<String, dynamic> json) =
      _$SubscriptionVendorCardImpl.fromJson;

  @override
  String? get name;
  @override
  String? get photo;
  @override
  String? get phone;
  @override
  String? get profile_url;
  @override
  int? get storycount;
  @override
  int? get dealzcircle;
  @override
  int? get subscribed;
  @override
  int? get connection;
  @override
  int? get prize_worth;
  @override
  bool? get has_sponsored_gifts;
  @override
  String? get nearestbranch;
  @override
  String? get longitude;
  @override
  String? get latitude;
  @override
  String? get membership_id;
  @override
  String? get membership_title;
  @override
  String? get membership_color;
  @override
  @JsonKey(ignore: true)
  _$$SubscriptionVendorCardImplCopyWith<_$SubscriptionVendorCardImpl>
      get copyWith => throw _privateConstructorUsedError;
}
