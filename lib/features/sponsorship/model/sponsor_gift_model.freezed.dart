// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sponsor_gift_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SponsorGiftModel _$SponsorGiftModelFromJson(Map<String, dynamic> json) {
  return _SponsorGiftModel.fromJson(json);
}

/// @nodoc
mixin _$SponsorGiftModel {
  @JsonKey(name: 'data')
  SponsorGiftData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SponsorGiftModelCopyWith<SponsorGiftModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SponsorGiftModelCopyWith<$Res> {
  factory $SponsorGiftModelCopyWith(
          SponsorGiftModel value, $Res Function(SponsorGiftModel) then) =
      _$SponsorGiftModelCopyWithImpl<$Res, SponsorGiftModel>;
  @useResult
  $Res call({@JsonKey(name: 'data') SponsorGiftData? data});

  $SponsorGiftDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$SponsorGiftModelCopyWithImpl<$Res, $Val extends SponsorGiftModel>
    implements $SponsorGiftModelCopyWith<$Res> {
  _$SponsorGiftModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SponsorGiftData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SponsorGiftDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $SponsorGiftDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SponsorGiftModelImplCopyWith<$Res>
    implements $SponsorGiftModelCopyWith<$Res> {
  factory _$$SponsorGiftModelImplCopyWith(_$SponsorGiftModelImpl value,
          $Res Function(_$SponsorGiftModelImpl) then) =
      __$$SponsorGiftModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'data') SponsorGiftData? data});

  @override
  $SponsorGiftDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SponsorGiftModelImplCopyWithImpl<$Res>
    extends _$SponsorGiftModelCopyWithImpl<$Res, _$SponsorGiftModelImpl>
    implements _$$SponsorGiftModelImplCopyWith<$Res> {
  __$$SponsorGiftModelImplCopyWithImpl(_$SponsorGiftModelImpl _value,
      $Res Function(_$SponsorGiftModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SponsorGiftModelImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SponsorGiftData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SponsorGiftModelImpl implements _SponsorGiftModel {
  const _$SponsorGiftModelImpl({@JsonKey(name: 'data') this.data});

  factory _$SponsorGiftModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SponsorGiftModelImplFromJson(json);

  @override
  @JsonKey(name: 'data')
  final SponsorGiftData? data;

  @override
  String toString() {
    return 'SponsorGiftModel(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SponsorGiftModelImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SponsorGiftModelImplCopyWith<_$SponsorGiftModelImpl> get copyWith =>
      __$$SponsorGiftModelImplCopyWithImpl<_$SponsorGiftModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SponsorGiftModelImplToJson(
      this,
    );
  }
}

abstract class _SponsorGiftModel implements SponsorGiftModel {
  const factory _SponsorGiftModel(
          {@JsonKey(name: 'data') final SponsorGiftData? data}) =
      _$SponsorGiftModelImpl;

  factory _SponsorGiftModel.fromJson(Map<String, dynamic> json) =
      _$SponsorGiftModelImpl.fromJson;

  @override
  @JsonKey(name: 'data')
  SponsorGiftData? get data;
  @override
  @JsonKey(ignore: true)
  _$$SponsorGiftModelImplCopyWith<_$SponsorGiftModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SponsorGiftData _$SponsorGiftDataFromJson(Map<String, dynamic> json) {
  return _SponsorGiftData.fromJson(json);
}

/// @nodoc
mixin _$SponsorGiftData {
  @JsonKey(name: 'banners')
  List<BannerModel>? get banners => throw _privateConstructorUsedError;
  @JsonKey(name: 'gifts')
  List<GiftModel>? get gifts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SponsorGiftDataCopyWith<SponsorGiftData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SponsorGiftDataCopyWith<$Res> {
  factory $SponsorGiftDataCopyWith(
          SponsorGiftData value, $Res Function(SponsorGiftData) then) =
      _$SponsorGiftDataCopyWithImpl<$Res, SponsorGiftData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'banners') List<BannerModel>? banners,
      @JsonKey(name: 'gifts') List<GiftModel>? gifts});
}

/// @nodoc
class _$SponsorGiftDataCopyWithImpl<$Res, $Val extends SponsorGiftData>
    implements $SponsorGiftDataCopyWith<$Res> {
  _$SponsorGiftDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? banners = freezed,
    Object? gifts = freezed,
  }) {
    return _then(_value.copyWith(
      banners: freezed == banners
          ? _value.banners
          : banners // ignore: cast_nullable_to_non_nullable
              as List<BannerModel>?,
      gifts: freezed == gifts
          ? _value.gifts
          : gifts // ignore: cast_nullable_to_non_nullable
              as List<GiftModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SponsorGiftDataImplCopyWith<$Res>
    implements $SponsorGiftDataCopyWith<$Res> {
  factory _$$SponsorGiftDataImplCopyWith(_$SponsorGiftDataImpl value,
          $Res Function(_$SponsorGiftDataImpl) then) =
      __$$SponsorGiftDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'banners') List<BannerModel>? banners,
      @JsonKey(name: 'gifts') List<GiftModel>? gifts});
}

/// @nodoc
class __$$SponsorGiftDataImplCopyWithImpl<$Res>
    extends _$SponsorGiftDataCopyWithImpl<$Res, _$SponsorGiftDataImpl>
    implements _$$SponsorGiftDataImplCopyWith<$Res> {
  __$$SponsorGiftDataImplCopyWithImpl(
      _$SponsorGiftDataImpl _value, $Res Function(_$SponsorGiftDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? banners = freezed,
    Object? gifts = freezed,
  }) {
    return _then(_$SponsorGiftDataImpl(
      banners: freezed == banners
          ? _value._banners
          : banners // ignore: cast_nullable_to_non_nullable
              as List<BannerModel>?,
      gifts: freezed == gifts
          ? _value._gifts
          : gifts // ignore: cast_nullable_to_non_nullable
              as List<GiftModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SponsorGiftDataImpl implements _SponsorGiftData {
  const _$SponsorGiftDataImpl(
      {@JsonKey(name: 'banners') final List<BannerModel>? banners,
      @JsonKey(name: 'gifts') final List<GiftModel>? gifts})
      : _banners = banners,
        _gifts = gifts;

  factory _$SponsorGiftDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SponsorGiftDataImplFromJson(json);

  final List<BannerModel>? _banners;
  @override
  @JsonKey(name: 'banners')
  List<BannerModel>? get banners {
    final value = _banners;
    if (value == null) return null;
    if (_banners is EqualUnmodifiableListView) return _banners;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<GiftModel>? _gifts;
  @override
  @JsonKey(name: 'gifts')
  List<GiftModel>? get gifts {
    final value = _gifts;
    if (value == null) return null;
    if (_gifts is EqualUnmodifiableListView) return _gifts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SponsorGiftData(banners: $banners, gifts: $gifts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SponsorGiftDataImpl &&
            const DeepCollectionEquality().equals(other._banners, _banners) &&
            const DeepCollectionEquality().equals(other._gifts, _gifts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_banners),
      const DeepCollectionEquality().hash(_gifts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SponsorGiftDataImplCopyWith<_$SponsorGiftDataImpl> get copyWith =>
      __$$SponsorGiftDataImplCopyWithImpl<_$SponsorGiftDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SponsorGiftDataImplToJson(
      this,
    );
  }
}

abstract class _SponsorGiftData implements SponsorGiftData {
  const factory _SponsorGiftData(
          {@JsonKey(name: 'banners') final List<BannerModel>? banners,
          @JsonKey(name: 'gifts') final List<GiftModel>? gifts}) =
      _$SponsorGiftDataImpl;

  factory _SponsorGiftData.fromJson(Map<String, dynamic> json) =
      _$SponsorGiftDataImpl.fromJson;

  @override
  @JsonKey(name: 'banners')
  List<BannerModel>? get banners;
  @override
  @JsonKey(name: 'gifts')
  List<GiftModel>? get gifts;
  @override
  @JsonKey(ignore: true)
  _$$SponsorGiftDataImplCopyWith<_$SponsorGiftDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BannerModel _$BannerModelFromJson(Map<String, dynamic> json) {
  return _BannerModel.fromJson(json);
}

/// @nodoc
mixin _$BannerModel {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BannerModelCopyWith<BannerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerModelCopyWith<$Res> {
  factory $BannerModelCopyWith(
          BannerModel value, $Res Function(BannerModel) then) =
      _$BannerModelCopyWithImpl<$Res, BannerModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class _$BannerModelCopyWithImpl<$Res, $Val extends BannerModel>
    implements $BannerModelCopyWith<$Res> {
  _$BannerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? image = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
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
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BannerModelImplCopyWith<$Res>
    implements $BannerModelCopyWith<$Res> {
  factory _$$BannerModelImplCopyWith(
          _$BannerModelImpl value, $Res Function(_$BannerModelImpl) then) =
      __$$BannerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class __$$BannerModelImplCopyWithImpl<$Res>
    extends _$BannerModelCopyWithImpl<$Res, _$BannerModelImpl>
    implements _$$BannerModelImplCopyWith<$Res> {
  __$$BannerModelImplCopyWithImpl(
      _$BannerModelImpl _value, $Res Function(_$BannerModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? image = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$BannerModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BannerModelImpl implements _BannerModel {
  const _$BannerModelImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'image') this.image,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$BannerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BannerModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'user_id')
  final String? userId;
  @override
  @JsonKey(name: 'image')
  final String? image;
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
  String toString() {
    return 'BannerModel(id: $id, userId: $userId, image: $image, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BannerModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, userId, image, status, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BannerModelImplCopyWith<_$BannerModelImpl> get copyWith =>
      __$$BannerModelImplCopyWithImpl<_$BannerModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BannerModelImplToJson(
      this,
    );
  }
}

abstract class _BannerModel implements BannerModel {
  const factory _BannerModel(
          {@JsonKey(name: 'id') final String? id,
          @JsonKey(name: 'user_id') final String? userId,
          @JsonKey(name: 'image') final String? image,
          @JsonKey(name: 'status') final String? status,
          @JsonKey(name: 'created_at') final String? createdAt,
          @JsonKey(name: 'updated_at') final String? updatedAt}) =
      _$BannerModelImpl;

  factory _BannerModel.fromJson(Map<String, dynamic> json) =
      _$BannerModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'user_id')
  String? get userId;
  @override
  @JsonKey(name: 'image')
  String? get image;
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
  @JsonKey(ignore: true)
  _$$BannerModelImplCopyWith<_$BannerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GiftModel _$GiftModelFromJson(Map<String, dynamic> json) {
  return _GiftModel.fromJson(json);
}

/// @nodoc
mixin _$GiftModel {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_percentage')
  String? get discountPercentage => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'worth')
  String? get worth => throw _privateConstructorUsedError;
  @JsonKey(name: 'gift_qty')
  String? get giftQty => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_worth')
  String? get totalWorth => throw _privateConstructorUsedError;
  @JsonKey(name: 'approved')
  String? get approved => throw _privateConstructorUsedError;
  @JsonKey(name: 'time_frame')
  String? get timeFrame => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'mileage')
  String? get mileage => throw _privateConstructorUsedError;
  @JsonKey(name: 'mileage_count')
  String? get mileageCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'gift_qty_count')
  String? get giftQtyCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GiftModelCopyWith<GiftModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GiftModelCopyWith<$Res> {
  factory $GiftModelCopyWith(GiftModel value, $Res Function(GiftModel) then) =
      _$GiftModelCopyWithImpl<$Res, GiftModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'discount_percentage') String? discountPercentage,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'worth') String? worth,
      @JsonKey(name: 'gift_qty') String? giftQty,
      @JsonKey(name: 'total_worth') String? totalWorth,
      @JsonKey(name: 'approved') String? approved,
      @JsonKey(name: 'time_frame') String? timeFrame,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'mileage') String? mileage,
      @JsonKey(name: 'mileage_count') String? mileageCount,
      @JsonKey(name: 'gift_qty_count') String? giftQtyCount,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class _$GiftModelCopyWithImpl<$Res, $Val extends GiftModel>
    implements $GiftModelCopyWith<$Res> {
  _$GiftModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? name = freezed,
    Object? discountPercentage = freezed,
    Object? image = freezed,
    Object? worth = freezed,
    Object? giftQty = freezed,
    Object? totalWorth = freezed,
    Object? approved = freezed,
    Object? timeFrame = freezed,
    Object? status = freezed,
    Object? mileage = freezed,
    Object? mileageCount = freezed,
    Object? giftQtyCount = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
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
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      discountPercentage: freezed == discountPercentage
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      worth: freezed == worth
          ? _value.worth
          : worth // ignore: cast_nullable_to_non_nullable
              as String?,
      giftQty: freezed == giftQty
          ? _value.giftQty
          : giftQty // ignore: cast_nullable_to_non_nullable
              as String?,
      totalWorth: freezed == totalWorth
          ? _value.totalWorth
          : totalWorth // ignore: cast_nullable_to_non_nullable
              as String?,
      approved: freezed == approved
          ? _value.approved
          : approved // ignore: cast_nullable_to_non_nullable
              as String?,
      timeFrame: freezed == timeFrame
          ? _value.timeFrame
          : timeFrame // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      mileage: freezed == mileage
          ? _value.mileage
          : mileage // ignore: cast_nullable_to_non_nullable
              as String?,
      mileageCount: freezed == mileageCount
          ? _value.mileageCount
          : mileageCount // ignore: cast_nullable_to_non_nullable
              as String?,
      giftQtyCount: freezed == giftQtyCount
          ? _value.giftQtyCount
          : giftQtyCount // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GiftModelImplCopyWith<$Res>
    implements $GiftModelCopyWith<$Res> {
  factory _$$GiftModelImplCopyWith(
          _$GiftModelImpl value, $Res Function(_$GiftModelImpl) then) =
      __$$GiftModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'discount_percentage') String? discountPercentage,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'worth') String? worth,
      @JsonKey(name: 'gift_qty') String? giftQty,
      @JsonKey(name: 'total_worth') String? totalWorth,
      @JsonKey(name: 'approved') String? approved,
      @JsonKey(name: 'time_frame') String? timeFrame,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'mileage') String? mileage,
      @JsonKey(name: 'mileage_count') String? mileageCount,
      @JsonKey(name: 'gift_qty_count') String? giftQtyCount,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class __$$GiftModelImplCopyWithImpl<$Res>
    extends _$GiftModelCopyWithImpl<$Res, _$GiftModelImpl>
    implements _$$GiftModelImplCopyWith<$Res> {
  __$$GiftModelImplCopyWithImpl(
      _$GiftModelImpl _value, $Res Function(_$GiftModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? name = freezed,
    Object? discountPercentage = freezed,
    Object? image = freezed,
    Object? worth = freezed,
    Object? giftQty = freezed,
    Object? totalWorth = freezed,
    Object? approved = freezed,
    Object? timeFrame = freezed,
    Object? status = freezed,
    Object? mileage = freezed,
    Object? mileageCount = freezed,
    Object? giftQtyCount = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$GiftModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      discountPercentage: freezed == discountPercentage
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      worth: freezed == worth
          ? _value.worth
          : worth // ignore: cast_nullable_to_non_nullable
              as String?,
      giftQty: freezed == giftQty
          ? _value.giftQty
          : giftQty // ignore: cast_nullable_to_non_nullable
              as String?,
      totalWorth: freezed == totalWorth
          ? _value.totalWorth
          : totalWorth // ignore: cast_nullable_to_non_nullable
              as String?,
      approved: freezed == approved
          ? _value.approved
          : approved // ignore: cast_nullable_to_non_nullable
              as String?,
      timeFrame: freezed == timeFrame
          ? _value.timeFrame
          : timeFrame // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      mileage: freezed == mileage
          ? _value.mileage
          : mileage // ignore: cast_nullable_to_non_nullable
              as String?,
      mileageCount: freezed == mileageCount
          ? _value.mileageCount
          : mileageCount // ignore: cast_nullable_to_non_nullable
              as String?,
      giftQtyCount: freezed == giftQtyCount
          ? _value.giftQtyCount
          : giftQtyCount // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GiftModelImpl implements _GiftModel {
  const _$GiftModelImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'discount_percentage') this.discountPercentage,
      @JsonKey(name: 'image') this.image,
      @JsonKey(name: 'worth') this.worth,
      @JsonKey(name: 'gift_qty') this.giftQty,
      @JsonKey(name: 'total_worth') this.totalWorth,
      @JsonKey(name: 'approved') this.approved,
      @JsonKey(name: 'time_frame') this.timeFrame,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'mileage') this.mileage,
      @JsonKey(name: 'mileage_count') this.mileageCount,
      @JsonKey(name: 'gift_qty_count') this.giftQtyCount,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$GiftModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GiftModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'user_id')
  final String? userId;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'discount_percentage')
  final String? discountPercentage;
  @override
  @JsonKey(name: 'image')
  final String? image;
  @override
  @JsonKey(name: 'worth')
  final String? worth;
  @override
  @JsonKey(name: 'gift_qty')
  final String? giftQty;
  @override
  @JsonKey(name: 'total_worth')
  final String? totalWorth;
  @override
  @JsonKey(name: 'approved')
  final String? approved;
  @override
  @JsonKey(name: 'time_frame')
  final String? timeFrame;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'mileage')
  final String? mileage;
  @override
  @JsonKey(name: 'mileage_count')
  final String? mileageCount;
  @override
  @JsonKey(name: 'gift_qty_count')
  final String? giftQtyCount;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @override
  String toString() {
    return 'GiftModel(id: $id, userId: $userId, name: $name, discountPercentage: $discountPercentage, image: $image, worth: $worth, giftQty: $giftQty, totalWorth: $totalWorth, approved: $approved, timeFrame: $timeFrame, status: $status, mileage: $mileage, mileageCount: $mileageCount, giftQtyCount: $giftQtyCount, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GiftModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.discountPercentage, discountPercentage) ||
                other.discountPercentage == discountPercentage) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.worth, worth) || other.worth == worth) &&
            (identical(other.giftQty, giftQty) || other.giftQty == giftQty) &&
            (identical(other.totalWorth, totalWorth) ||
                other.totalWorth == totalWorth) &&
            (identical(other.approved, approved) ||
                other.approved == approved) &&
            (identical(other.timeFrame, timeFrame) ||
                other.timeFrame == timeFrame) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.mileage, mileage) || other.mileage == mileage) &&
            (identical(other.mileageCount, mileageCount) ||
                other.mileageCount == mileageCount) &&
            (identical(other.giftQtyCount, giftQtyCount) ||
                other.giftQtyCount == giftQtyCount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      name,
      discountPercentage,
      image,
      worth,
      giftQty,
      totalWorth,
      approved,
      timeFrame,
      status,
      mileage,
      mileageCount,
      giftQtyCount,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GiftModelImplCopyWith<_$GiftModelImpl> get copyWith =>
      __$$GiftModelImplCopyWithImpl<_$GiftModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GiftModelImplToJson(
      this,
    );
  }
}

abstract class _GiftModel implements GiftModel {
  const factory _GiftModel(
      {@JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'user_id') final String? userId,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'discount_percentage') final String? discountPercentage,
      @JsonKey(name: 'image') final String? image,
      @JsonKey(name: 'worth') final String? worth,
      @JsonKey(name: 'gift_qty') final String? giftQty,
      @JsonKey(name: 'total_worth') final String? totalWorth,
      @JsonKey(name: 'approved') final String? approved,
      @JsonKey(name: 'time_frame') final String? timeFrame,
      @JsonKey(name: 'status') final String? status,
      @JsonKey(name: 'mileage') final String? mileage,
      @JsonKey(name: 'mileage_count') final String? mileageCount,
      @JsonKey(name: 'gift_qty_count') final String? giftQtyCount,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'updated_at') final String? updatedAt}) = _$GiftModelImpl;

  factory _GiftModel.fromJson(Map<String, dynamic> json) =
      _$GiftModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'user_id')
  String? get userId;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'discount_percentage')
  String? get discountPercentage;
  @override
  @JsonKey(name: 'image')
  String? get image;
  @override
  @JsonKey(name: 'worth')
  String? get worth;
  @override
  @JsonKey(name: 'gift_qty')
  String? get giftQty;
  @override
  @JsonKey(name: 'total_worth')
  String? get totalWorth;
  @override
  @JsonKey(name: 'approved')
  String? get approved;
  @override
  @JsonKey(name: 'time_frame')
  String? get timeFrame;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'mileage')
  String? get mileage;
  @override
  @JsonKey(name: 'mileage_count')
  String? get mileageCount;
  @override
  @JsonKey(name: 'gift_qty_count')
  String? get giftQtyCount;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$GiftModelImplCopyWith<_$GiftModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
