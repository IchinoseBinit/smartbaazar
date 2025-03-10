// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_gift_card_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FeedGiftCardModel _$FeedGiftCardModelFromJson(Map<String, dynamic> json) {
  return _FeedGiftCardModel.fromJson(json);
}

/// @nodoc
mixin _$FeedGiftCardModel {
  @JsonKey(name: 'buy_or_win_card')
  List<BuyOrWinCard>? get buyOrWinCard => throw _privateConstructorUsedError;
  @JsonKey(name: 'userDetail')
  UserDetail? get userDetail => throw _privateConstructorUsedError;

  /// Serializes this FeedGiftCardModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FeedGiftCardModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeedGiftCardModelCopyWith<FeedGiftCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedGiftCardModelCopyWith<$Res> {
  factory $FeedGiftCardModelCopyWith(
          FeedGiftCardModel value, $Res Function(FeedGiftCardModel) then) =
      _$FeedGiftCardModelCopyWithImpl<$Res, FeedGiftCardModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'buy_or_win_card') List<BuyOrWinCard>? buyOrWinCard,
      @JsonKey(name: 'userDetail') UserDetail? userDetail});

  $UserDetailCopyWith<$Res>? get userDetail;
}

/// @nodoc
class _$FeedGiftCardModelCopyWithImpl<$Res, $Val extends FeedGiftCardModel>
    implements $FeedGiftCardModelCopyWith<$Res> {
  _$FeedGiftCardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedGiftCardModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buyOrWinCard = freezed,
    Object? userDetail = freezed,
  }) {
    return _then(_value.copyWith(
      buyOrWinCard: freezed == buyOrWinCard
          ? _value.buyOrWinCard
          : buyOrWinCard // ignore: cast_nullable_to_non_nullable
              as List<BuyOrWinCard>?,
      userDetail: freezed == userDetail
          ? _value.userDetail
          : userDetail // ignore: cast_nullable_to_non_nullable
              as UserDetail?,
    ) as $Val);
  }

  /// Create a copy of FeedGiftCardModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDetailCopyWith<$Res>? get userDetail {
    if (_value.userDetail == null) {
      return null;
    }

    return $UserDetailCopyWith<$Res>(_value.userDetail!, (value) {
      return _then(_value.copyWith(userDetail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FeedGiftCardModelImplCopyWith<$Res>
    implements $FeedGiftCardModelCopyWith<$Res> {
  factory _$$FeedGiftCardModelImplCopyWith(_$FeedGiftCardModelImpl value,
          $Res Function(_$FeedGiftCardModelImpl) then) =
      __$$FeedGiftCardModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'buy_or_win_card') List<BuyOrWinCard>? buyOrWinCard,
      @JsonKey(name: 'userDetail') UserDetail? userDetail});

  @override
  $UserDetailCopyWith<$Res>? get userDetail;
}

/// @nodoc
class __$$FeedGiftCardModelImplCopyWithImpl<$Res>
    extends _$FeedGiftCardModelCopyWithImpl<$Res, _$FeedGiftCardModelImpl>
    implements _$$FeedGiftCardModelImplCopyWith<$Res> {
  __$$FeedGiftCardModelImplCopyWithImpl(_$FeedGiftCardModelImpl _value,
      $Res Function(_$FeedGiftCardModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedGiftCardModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buyOrWinCard = freezed,
    Object? userDetail = freezed,
  }) {
    return _then(_$FeedGiftCardModelImpl(
      buyOrWinCard: freezed == buyOrWinCard
          ? _value._buyOrWinCard
          : buyOrWinCard // ignore: cast_nullable_to_non_nullable
              as List<BuyOrWinCard>?,
      userDetail: freezed == userDetail
          ? _value.userDetail
          : userDetail // ignore: cast_nullable_to_non_nullable
              as UserDetail?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeedGiftCardModelImpl implements _FeedGiftCardModel {
  const _$FeedGiftCardModelImpl(
      {@JsonKey(name: 'buy_or_win_card') final List<BuyOrWinCard>? buyOrWinCard,
      @JsonKey(name: 'userDetail') this.userDetail})
      : _buyOrWinCard = buyOrWinCard;

  factory _$FeedGiftCardModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeedGiftCardModelImplFromJson(json);

  final List<BuyOrWinCard>? _buyOrWinCard;
  @override
  @JsonKey(name: 'buy_or_win_card')
  List<BuyOrWinCard>? get buyOrWinCard {
    final value = _buyOrWinCard;
    if (value == null) return null;
    if (_buyOrWinCard is EqualUnmodifiableListView) return _buyOrWinCard;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'userDetail')
  final UserDetail? userDetail;

  @override
  String toString() {
    return 'FeedGiftCardModel(buyOrWinCard: $buyOrWinCard, userDetail: $userDetail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedGiftCardModelImpl &&
            const DeepCollectionEquality()
                .equals(other._buyOrWinCard, _buyOrWinCard) &&
            (identical(other.userDetail, userDetail) ||
                other.userDetail == userDetail));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_buyOrWinCard), userDetail);

  /// Create a copy of FeedGiftCardModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedGiftCardModelImplCopyWith<_$FeedGiftCardModelImpl> get copyWith =>
      __$$FeedGiftCardModelImplCopyWithImpl<_$FeedGiftCardModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedGiftCardModelImplToJson(
      this,
    );
  }
}

abstract class _FeedGiftCardModel implements FeedGiftCardModel {
  const factory _FeedGiftCardModel(
      {@JsonKey(name: 'buy_or_win_card') final List<BuyOrWinCard>? buyOrWinCard,
      @JsonKey(name: 'userDetail')
      final UserDetail? userDetail}) = _$FeedGiftCardModelImpl;

  factory _FeedGiftCardModel.fromJson(Map<String, dynamic> json) =
      _$FeedGiftCardModelImpl.fromJson;

  @override
  @JsonKey(name: 'buy_or_win_card')
  List<BuyOrWinCard>? get buyOrWinCard;
  @override
  @JsonKey(name: 'userDetail')
  UserDetail? get userDetail;

  /// Create a copy of FeedGiftCardModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedGiftCardModelImplCopyWith<_$FeedGiftCardModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BuyOrWinCard _$BuyOrWinCardFromJson(Map<String, dynamic> json) {
  return _BuyOrWinCard.fromJson(json);
}

/// @nodoc
mixin _$BuyOrWinCard {
  @JsonKey(name: 'vendor_image')
  String? get vendorImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'vendor_name')
  String? get vendorName => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'worth')
  String? get worth => throw _privateConstructorUsedError;
  @JsonKey(name: 'wow')
  String? get wow => throw _privateConstructorUsedError;
  @JsonKey(name: 'gift_qty')
  String? get giftQty => throw _privateConstructorUsedError;
  @JsonKey(name: 'winners')
  int? get winners => throw _privateConstructorUsedError;

  /// Serializes this BuyOrWinCard to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BuyOrWinCard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BuyOrWinCardCopyWith<BuyOrWinCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuyOrWinCardCopyWith<$Res> {
  factory $BuyOrWinCardCopyWith(
          BuyOrWinCard value, $Res Function(BuyOrWinCard) then) =
      _$BuyOrWinCardCopyWithImpl<$Res, BuyOrWinCard>;
  @useResult
  $Res call(
      {@JsonKey(name: 'vendor_image') String? vendorImage,
      @JsonKey(name: 'vendor_name') String? vendorName,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'worth') String? worth,
      @JsonKey(name: 'wow') String? wow,
      @JsonKey(name: 'gift_qty') String? giftQty,
      @JsonKey(name: 'winners') int? winners});
}

/// @nodoc
class _$BuyOrWinCardCopyWithImpl<$Res, $Val extends BuyOrWinCard>
    implements $BuyOrWinCardCopyWith<$Res> {
  _$BuyOrWinCardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BuyOrWinCard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vendorImage = freezed,
    Object? vendorName = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? worth = freezed,
    Object? wow = freezed,
    Object? giftQty = freezed,
    Object? winners = freezed,
  }) {
    return _then(_value.copyWith(
      vendorImage: freezed == vendorImage
          ? _value.vendorImage
          : vendorImage // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorName: freezed == vendorName
          ? _value.vendorName
          : vendorName // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      worth: freezed == worth
          ? _value.worth
          : worth // ignore: cast_nullable_to_non_nullable
              as String?,
      wow: freezed == wow
          ? _value.wow
          : wow // ignore: cast_nullable_to_non_nullable
              as String?,
      giftQty: freezed == giftQty
          ? _value.giftQty
          : giftQty // ignore: cast_nullable_to_non_nullable
              as String?,
      winners: freezed == winners
          ? _value.winners
          : winners // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BuyOrWinCardImplCopyWith<$Res>
    implements $BuyOrWinCardCopyWith<$Res> {
  factory _$$BuyOrWinCardImplCopyWith(
          _$BuyOrWinCardImpl value, $Res Function(_$BuyOrWinCardImpl) then) =
      __$$BuyOrWinCardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'vendor_image') String? vendorImage,
      @JsonKey(name: 'vendor_name') String? vendorName,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'worth') String? worth,
      @JsonKey(name: 'wow') String? wow,
      @JsonKey(name: 'gift_qty') String? giftQty,
      @JsonKey(name: 'winners') int? winners});
}

/// @nodoc
class __$$BuyOrWinCardImplCopyWithImpl<$Res>
    extends _$BuyOrWinCardCopyWithImpl<$Res, _$BuyOrWinCardImpl>
    implements _$$BuyOrWinCardImplCopyWith<$Res> {
  __$$BuyOrWinCardImplCopyWithImpl(
      _$BuyOrWinCardImpl _value, $Res Function(_$BuyOrWinCardImpl) _then)
      : super(_value, _then);

  /// Create a copy of BuyOrWinCard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vendorImage = freezed,
    Object? vendorName = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? worth = freezed,
    Object? wow = freezed,
    Object? giftQty = freezed,
    Object? winners = freezed,
  }) {
    return _then(_$BuyOrWinCardImpl(
      vendorImage: freezed == vendorImage
          ? _value.vendorImage
          : vendorImage // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorName: freezed == vendorName
          ? _value.vendorName
          : vendorName // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      worth: freezed == worth
          ? _value.worth
          : worth // ignore: cast_nullable_to_non_nullable
              as String?,
      wow: freezed == wow
          ? _value.wow
          : wow // ignore: cast_nullable_to_non_nullable
              as String?,
      giftQty: freezed == giftQty
          ? _value.giftQty
          : giftQty // ignore: cast_nullable_to_non_nullable
              as String?,
      winners: freezed == winners
          ? _value.winners
          : winners // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BuyOrWinCardImpl implements _BuyOrWinCard {
  const _$BuyOrWinCardImpl(
      {@JsonKey(name: 'vendor_image') this.vendorImage,
      @JsonKey(name: 'vendor_name') this.vendorName,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'image') this.image,
      @JsonKey(name: 'worth') this.worth,
      @JsonKey(name: 'wow') this.wow,
      @JsonKey(name: 'gift_qty') this.giftQty,
      @JsonKey(name: 'winners') this.winners});

  factory _$BuyOrWinCardImpl.fromJson(Map<String, dynamic> json) =>
      _$$BuyOrWinCardImplFromJson(json);

  @override
  @JsonKey(name: 'vendor_image')
  final String? vendorImage;
  @override
  @JsonKey(name: 'vendor_name')
  final String? vendorName;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'image')
  final String? image;
  @override
  @JsonKey(name: 'worth')
  final String? worth;
  @override
  @JsonKey(name: 'wow')
  final String? wow;
  @override
  @JsonKey(name: 'gift_qty')
  final String? giftQty;
  @override
  @JsonKey(name: 'winners')
  final int? winners;

  @override
  String toString() {
    return 'BuyOrWinCard(vendorImage: $vendorImage, vendorName: $vendorName, name: $name, image: $image, worth: $worth, wow: $wow, giftQty: $giftQty, winners: $winners)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BuyOrWinCardImpl &&
            (identical(other.vendorImage, vendorImage) ||
                other.vendorImage == vendorImage) &&
            (identical(other.vendorName, vendorName) ||
                other.vendorName == vendorName) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.worth, worth) || other.worth == worth) &&
            (identical(other.wow, wow) || other.wow == wow) &&
            (identical(other.giftQty, giftQty) || other.giftQty == giftQty) &&
            (identical(other.winners, winners) || other.winners == winners));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, vendorImage, vendorName, name,
      image, worth, wow, giftQty, winners);

  /// Create a copy of BuyOrWinCard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BuyOrWinCardImplCopyWith<_$BuyOrWinCardImpl> get copyWith =>
      __$$BuyOrWinCardImplCopyWithImpl<_$BuyOrWinCardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BuyOrWinCardImplToJson(
      this,
    );
  }
}

abstract class _BuyOrWinCard implements BuyOrWinCard {
  const factory _BuyOrWinCard(
      {@JsonKey(name: 'vendor_image') final String? vendorImage,
      @JsonKey(name: 'vendor_name') final String? vendorName,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'image') final String? image,
      @JsonKey(name: 'worth') final String? worth,
      @JsonKey(name: 'wow') final String? wow,
      @JsonKey(name: 'gift_qty') final String? giftQty,
      @JsonKey(name: 'winners') final int? winners}) = _$BuyOrWinCardImpl;

  factory _BuyOrWinCard.fromJson(Map<String, dynamic> json) =
      _$BuyOrWinCardImpl.fromJson;

  @override
  @JsonKey(name: 'vendor_image')
  String? get vendorImage;
  @override
  @JsonKey(name: 'vendor_name')
  String? get vendorName;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'image')
  String? get image;
  @override
  @JsonKey(name: 'worth')
  String? get worth;
  @override
  @JsonKey(name: 'wow')
  String? get wow;
  @override
  @JsonKey(name: 'gift_qty')
  String? get giftQty;
  @override
  @JsonKey(name: 'winners')
  int? get winners;

  /// Create a copy of BuyOrWinCard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BuyOrWinCardImplCopyWith<_$BuyOrWinCardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserDetail _$UserDetailFromJson(Map<String, dynamic> json) {
  return _UserDetail.fromJson(json);
}

/// @nodoc
mixin _$UserDetail {
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'vendor_image')
  String? get vendorImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'vendor_name')
  String? get vendorName => throw _privateConstructorUsedError;
  @JsonKey(name: 'membership_plan_id')
  String? get membershipPlanId => throw _privateConstructorUsedError;
  @JsonKey(name: 'membership_status')
  String? get membershipStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'membership_id')
  String? get membershipId => throw _privateConstructorUsedError;
  @JsonKey(name: 'membership_title')
  String? get membershipTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'membership_color')
  String? get membershipColor => throw _privateConstructorUsedError;
  @JsonKey(name: 'storyCount')
  int? get storyCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'subscribers')
  int? get subscribers => throw _privateConstructorUsedError;
  @JsonKey(name: 'livePrizes')
  int? get livePrizes => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_contribution')
  String? get totalContribution => throw _privateConstructorUsedError;

  /// Serializes this UserDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserDetailCopyWith<UserDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailCopyWith<$Res> {
  factory $UserDetailCopyWith(
          UserDetail value, $Res Function(UserDetail) then) =
      _$UserDetailCopyWithImpl<$Res, UserDetail>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'vendor_image') String? vendorImage,
      @JsonKey(name: 'vendor_name') String? vendorName,
      @JsonKey(name: 'membership_plan_id') String? membershipPlanId,
      @JsonKey(name: 'membership_status') String? membershipStatus,
      @JsonKey(name: 'membership_id') String? membershipId,
      @JsonKey(name: 'membership_title') String? membershipTitle,
      @JsonKey(name: 'membership_color') String? membershipColor,
      @JsonKey(name: 'storyCount') int? storyCount,
      @JsonKey(name: 'subscribers') int? subscribers,
      @JsonKey(name: 'livePrizes') int? livePrizes,
      @JsonKey(name: 'total_contribution') String? totalContribution});
}

/// @nodoc
class _$UserDetailCopyWithImpl<$Res, $Val extends UserDetail>
    implements $UserDetailCopyWith<$Res> {
  _$UserDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? vendorImage = freezed,
    Object? vendorName = freezed,
    Object? membershipPlanId = freezed,
    Object? membershipStatus = freezed,
    Object? membershipId = freezed,
    Object? membershipTitle = freezed,
    Object? membershipColor = freezed,
    Object? storyCount = freezed,
    Object? subscribers = freezed,
    Object? livePrizes = freezed,
    Object? totalContribution = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorImage: freezed == vendorImage
          ? _value.vendorImage
          : vendorImage // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorName: freezed == vendorName
          ? _value.vendorName
          : vendorName // ignore: cast_nullable_to_non_nullable
              as String?,
      membershipPlanId: freezed == membershipPlanId
          ? _value.membershipPlanId
          : membershipPlanId // ignore: cast_nullable_to_non_nullable
              as String?,
      membershipStatus: freezed == membershipStatus
          ? _value.membershipStatus
          : membershipStatus // ignore: cast_nullable_to_non_nullable
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
      storyCount: freezed == storyCount
          ? _value.storyCount
          : storyCount // ignore: cast_nullable_to_non_nullable
              as int?,
      subscribers: freezed == subscribers
          ? _value.subscribers
          : subscribers // ignore: cast_nullable_to_non_nullable
              as int?,
      livePrizes: freezed == livePrizes
          ? _value.livePrizes
          : livePrizes // ignore: cast_nullable_to_non_nullable
              as int?,
      totalContribution: freezed == totalContribution
          ? _value.totalContribution
          : totalContribution // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDetailImplCopyWith<$Res>
    implements $UserDetailCopyWith<$Res> {
  factory _$$UserDetailImplCopyWith(
          _$UserDetailImpl value, $Res Function(_$UserDetailImpl) then) =
      __$$UserDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'vendor_image') String? vendorImage,
      @JsonKey(name: 'vendor_name') String? vendorName,
      @JsonKey(name: 'membership_plan_id') String? membershipPlanId,
      @JsonKey(name: 'membership_status') String? membershipStatus,
      @JsonKey(name: 'membership_id') String? membershipId,
      @JsonKey(name: 'membership_title') String? membershipTitle,
      @JsonKey(name: 'membership_color') String? membershipColor,
      @JsonKey(name: 'storyCount') int? storyCount,
      @JsonKey(name: 'subscribers') int? subscribers,
      @JsonKey(name: 'livePrizes') int? livePrizes,
      @JsonKey(name: 'total_contribution') String? totalContribution});
}

/// @nodoc
class __$$UserDetailImplCopyWithImpl<$Res>
    extends _$UserDetailCopyWithImpl<$Res, _$UserDetailImpl>
    implements _$$UserDetailImplCopyWith<$Res> {
  __$$UserDetailImplCopyWithImpl(
      _$UserDetailImpl _value, $Res Function(_$UserDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? vendorImage = freezed,
    Object? vendorName = freezed,
    Object? membershipPlanId = freezed,
    Object? membershipStatus = freezed,
    Object? membershipId = freezed,
    Object? membershipTitle = freezed,
    Object? membershipColor = freezed,
    Object? storyCount = freezed,
    Object? subscribers = freezed,
    Object? livePrizes = freezed,
    Object? totalContribution = freezed,
  }) {
    return _then(_$UserDetailImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorImage: freezed == vendorImage
          ? _value.vendorImage
          : vendorImage // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorName: freezed == vendorName
          ? _value.vendorName
          : vendorName // ignore: cast_nullable_to_non_nullable
              as String?,
      membershipPlanId: freezed == membershipPlanId
          ? _value.membershipPlanId
          : membershipPlanId // ignore: cast_nullable_to_non_nullable
              as String?,
      membershipStatus: freezed == membershipStatus
          ? _value.membershipStatus
          : membershipStatus // ignore: cast_nullable_to_non_nullable
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
      storyCount: freezed == storyCount
          ? _value.storyCount
          : storyCount // ignore: cast_nullable_to_non_nullable
              as int?,
      subscribers: freezed == subscribers
          ? _value.subscribers
          : subscribers // ignore: cast_nullable_to_non_nullable
              as int?,
      livePrizes: freezed == livePrizes
          ? _value.livePrizes
          : livePrizes // ignore: cast_nullable_to_non_nullable
              as int?,
      totalContribution: freezed == totalContribution
          ? _value.totalContribution
          : totalContribution // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDetailImpl implements _UserDetail {
  const _$UserDetailImpl(
      {@JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'vendor_image') this.vendorImage,
      @JsonKey(name: 'vendor_name') this.vendorName,
      @JsonKey(name: 'membership_plan_id') this.membershipPlanId,
      @JsonKey(name: 'membership_status') this.membershipStatus,
      @JsonKey(name: 'membership_id') this.membershipId,
      @JsonKey(name: 'membership_title') this.membershipTitle,
      @JsonKey(name: 'membership_color') this.membershipColor,
      @JsonKey(name: 'storyCount') this.storyCount,
      @JsonKey(name: 'subscribers') this.subscribers,
      @JsonKey(name: 'livePrizes') this.livePrizes,
      @JsonKey(name: 'total_contribution') this.totalContribution});

  factory _$UserDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDetailImplFromJson(json);

  @override
  @JsonKey(name: 'user_id')
  final String? userId;
  @override
  @JsonKey(name: 'vendor_image')
  final String? vendorImage;
  @override
  @JsonKey(name: 'vendor_name')
  final String? vendorName;
  @override
  @JsonKey(name: 'membership_plan_id')
  final String? membershipPlanId;
  @override
  @JsonKey(name: 'membership_status')
  final String? membershipStatus;
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
  @JsonKey(name: 'storyCount')
  final int? storyCount;
  @override
  @JsonKey(name: 'subscribers')
  final int? subscribers;
  @override
  @JsonKey(name: 'livePrizes')
  final int? livePrizes;
  @override
  @JsonKey(name: 'total_contribution')
  final String? totalContribution;

  @override
  String toString() {
    return 'UserDetail(userId: $userId, vendorImage: $vendorImage, vendorName: $vendorName, membershipPlanId: $membershipPlanId, membershipStatus: $membershipStatus, membershipId: $membershipId, membershipTitle: $membershipTitle, membershipColor: $membershipColor, storyCount: $storyCount, subscribers: $subscribers, livePrizes: $livePrizes, totalContribution: $totalContribution)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDetailImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.vendorImage, vendorImage) ||
                other.vendorImage == vendorImage) &&
            (identical(other.vendorName, vendorName) ||
                other.vendorName == vendorName) &&
            (identical(other.membershipPlanId, membershipPlanId) ||
                other.membershipPlanId == membershipPlanId) &&
            (identical(other.membershipStatus, membershipStatus) ||
                other.membershipStatus == membershipStatus) &&
            (identical(other.membershipId, membershipId) ||
                other.membershipId == membershipId) &&
            (identical(other.membershipTitle, membershipTitle) ||
                other.membershipTitle == membershipTitle) &&
            (identical(other.membershipColor, membershipColor) ||
                other.membershipColor == membershipColor) &&
            (identical(other.storyCount, storyCount) ||
                other.storyCount == storyCount) &&
            (identical(other.subscribers, subscribers) ||
                other.subscribers == subscribers) &&
            (identical(other.livePrizes, livePrizes) ||
                other.livePrizes == livePrizes) &&
            (identical(other.totalContribution, totalContribution) ||
                other.totalContribution == totalContribution));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      vendorImage,
      vendorName,
      membershipPlanId,
      membershipStatus,
      membershipId,
      membershipTitle,
      membershipColor,
      storyCount,
      subscribers,
      livePrizes,
      totalContribution);

  /// Create a copy of UserDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDetailImplCopyWith<_$UserDetailImpl> get copyWith =>
      __$$UserDetailImplCopyWithImpl<_$UserDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDetailImplToJson(
      this,
    );
  }
}

abstract class _UserDetail implements UserDetail {
  const factory _UserDetail(
      {@JsonKey(name: 'user_id') final String? userId,
      @JsonKey(name: 'vendor_image') final String? vendorImage,
      @JsonKey(name: 'vendor_name') final String? vendorName,
      @JsonKey(name: 'membership_plan_id') final String? membershipPlanId,
      @JsonKey(name: 'membership_status') final String? membershipStatus,
      @JsonKey(name: 'membership_id') final String? membershipId,
      @JsonKey(name: 'membership_title') final String? membershipTitle,
      @JsonKey(name: 'membership_color') final String? membershipColor,
      @JsonKey(name: 'storyCount') final int? storyCount,
      @JsonKey(name: 'subscribers') final int? subscribers,
      @JsonKey(name: 'livePrizes') final int? livePrizes,
      @JsonKey(name: 'total_contribution')
      final String? totalContribution}) = _$UserDetailImpl;

  factory _UserDetail.fromJson(Map<String, dynamic> json) =
      _$UserDetailImpl.fromJson;

  @override
  @JsonKey(name: 'user_id')
  String? get userId;
  @override
  @JsonKey(name: 'vendor_image')
  String? get vendorImage;
  @override
  @JsonKey(name: 'vendor_name')
  String? get vendorName;
  @override
  @JsonKey(name: 'membership_plan_id')
  String? get membershipPlanId;
  @override
  @JsonKey(name: 'membership_status')
  String? get membershipStatus;
  @override
  @JsonKey(name: 'membership_id')
  String? get membershipId;
  @override
  @JsonKey(name: 'membership_title')
  String? get membershipTitle;
  @override
  @JsonKey(name: 'membership_color')
  String? get membershipColor;
  @override
  @JsonKey(name: 'storyCount')
  int? get storyCount;
  @override
  @JsonKey(name: 'subscribers')
  int? get subscribers;
  @override
  @JsonKey(name: 'livePrizes')
  int? get livePrizes;
  @override
  @JsonKey(name: 'total_contribution')
  String? get totalContribution;

  /// Create a copy of UserDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserDetailImplCopyWith<_$UserDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
