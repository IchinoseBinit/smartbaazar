// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkout_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CheckoutDetailsModel _$CheckoutDetailsModelFromJson(Map<String, dynamic> json) {
  return _CheckoutDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$CheckoutDetailsModel {
  @JsonKey(name: 'data')
  CheckoutData? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'msg')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this CheckoutDetailsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CheckoutDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CheckoutDetailsModelCopyWith<CheckoutDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutDetailsModelCopyWith<$Res> {
  factory $CheckoutDetailsModelCopyWith(CheckoutDetailsModel value,
          $Res Function(CheckoutDetailsModel) then) =
      _$CheckoutDetailsModelCopyWithImpl<$Res, CheckoutDetailsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'data') CheckoutData? data,
      @JsonKey(name: 'msg') String? message});

  $CheckoutDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CheckoutDetailsModelCopyWithImpl<$Res,
        $Val extends CheckoutDetailsModel>
    implements $CheckoutDetailsModelCopyWith<$Res> {
  _$CheckoutDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckoutDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CheckoutData?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of CheckoutDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CheckoutDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $CheckoutDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CheckoutDetailsModelImplCopyWith<$Res>
    implements $CheckoutDetailsModelCopyWith<$Res> {
  factory _$$CheckoutDetailsModelImplCopyWith(_$CheckoutDetailsModelImpl value,
          $Res Function(_$CheckoutDetailsModelImpl) then) =
      __$$CheckoutDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'data') CheckoutData? data,
      @JsonKey(name: 'msg') String? message});

  @override
  $CheckoutDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$CheckoutDetailsModelImplCopyWithImpl<$Res>
    extends _$CheckoutDetailsModelCopyWithImpl<$Res, _$CheckoutDetailsModelImpl>
    implements _$$CheckoutDetailsModelImplCopyWith<$Res> {
  __$$CheckoutDetailsModelImplCopyWithImpl(_$CheckoutDetailsModelImpl _value,
      $Res Function(_$CheckoutDetailsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckoutDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_$CheckoutDetailsModelImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CheckoutData?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckoutDetailsModelImpl implements _CheckoutDetailsModel {
  const _$CheckoutDetailsModelImpl(
      {@JsonKey(name: 'data') this.data, @JsonKey(name: 'msg') this.message});

  factory _$CheckoutDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckoutDetailsModelImplFromJson(json);

  @override
  @JsonKey(name: 'data')
  final CheckoutData? data;
  @override
  @JsonKey(name: 'msg')
  final String? message;

  @override
  String toString() {
    return 'CheckoutDetailsModel(data: $data, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckoutDetailsModelImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  /// Create a copy of CheckoutDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckoutDetailsModelImplCopyWith<_$CheckoutDetailsModelImpl>
      get copyWith =>
          __$$CheckoutDetailsModelImplCopyWithImpl<_$CheckoutDetailsModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckoutDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _CheckoutDetailsModel implements CheckoutDetailsModel {
  const factory _CheckoutDetailsModel(
          {@JsonKey(name: 'data') final CheckoutData? data,
          @JsonKey(name: 'msg') final String? message}) =
      _$CheckoutDetailsModelImpl;

  factory _CheckoutDetailsModel.fromJson(Map<String, dynamic> json) =
      _$CheckoutDetailsModelImpl.fromJson;

  @override
  @JsonKey(name: 'data')
  CheckoutData? get data;
  @override
  @JsonKey(name: 'msg')
  String? get message;

  /// Create a copy of CheckoutDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckoutDetailsModelImplCopyWith<_$CheckoutDetailsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CheckoutData _$CheckoutDataFromJson(Map<String, dynamic> json) {
  return _CheckoutData.fromJson(json);
}

/// @nodoc
mixin _$CheckoutData {
  List<Vendor>? get vendor => throw _privateConstructorUsedError;
  List<User>? get user => throw _privateConstructorUsedError;
  List<dynamic>? get coupons => throw _privateConstructorUsedError;
  @JsonKey(name: 'cart_total')
  int? get cartTotal => throw _privateConstructorUsedError;
  List<Item>? get items => throw _privateConstructorUsedError;

  /// Serializes this CheckoutData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CheckoutData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CheckoutDataCopyWith<CheckoutData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutDataCopyWith<$Res> {
  factory $CheckoutDataCopyWith(
          CheckoutData value, $Res Function(CheckoutData) then) =
      _$CheckoutDataCopyWithImpl<$Res, CheckoutData>;
  @useResult
  $Res call(
      {List<Vendor>? vendor,
      List<User>? user,
      List<dynamic>? coupons,
      @JsonKey(name: 'cart_total') int? cartTotal,
      List<Item>? items});
}

/// @nodoc
class _$CheckoutDataCopyWithImpl<$Res, $Val extends CheckoutData>
    implements $CheckoutDataCopyWith<$Res> {
  _$CheckoutDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckoutData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vendor = freezed,
    Object? user = freezed,
    Object? coupons = freezed,
    Object? cartTotal = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      vendor: freezed == vendor
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as List<Vendor>?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as List<User>?,
      coupons: freezed == coupons
          ? _value.coupons
          : coupons // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      cartTotal: freezed == cartTotal
          ? _value.cartTotal
          : cartTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckoutDataImplCopyWith<$Res>
    implements $CheckoutDataCopyWith<$Res> {
  factory _$$CheckoutDataImplCopyWith(
          _$CheckoutDataImpl value, $Res Function(_$CheckoutDataImpl) then) =
      __$$CheckoutDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Vendor>? vendor,
      List<User>? user,
      List<dynamic>? coupons,
      @JsonKey(name: 'cart_total') int? cartTotal,
      List<Item>? items});
}

/// @nodoc
class __$$CheckoutDataImplCopyWithImpl<$Res>
    extends _$CheckoutDataCopyWithImpl<$Res, _$CheckoutDataImpl>
    implements _$$CheckoutDataImplCopyWith<$Res> {
  __$$CheckoutDataImplCopyWithImpl(
      _$CheckoutDataImpl _value, $Res Function(_$CheckoutDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckoutData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vendor = freezed,
    Object? user = freezed,
    Object? coupons = freezed,
    Object? cartTotal = freezed,
    Object? items = freezed,
  }) {
    return _then(_$CheckoutDataImpl(
      vendor: freezed == vendor
          ? _value._vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as List<Vendor>?,
      user: freezed == user
          ? _value._user
          : user // ignore: cast_nullable_to_non_nullable
              as List<User>?,
      coupons: freezed == coupons
          ? _value._coupons
          : coupons // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      cartTotal: freezed == cartTotal
          ? _value.cartTotal
          : cartTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckoutDataImpl implements _CheckoutData {
  const _$CheckoutDataImpl(
      {final List<Vendor>? vendor,
      final List<User>? user,
      final List<dynamic>? coupons,
      @JsonKey(name: 'cart_total') this.cartTotal,
      final List<Item>? items})
      : _vendor = vendor,
        _user = user,
        _coupons = coupons,
        _items = items;

  factory _$CheckoutDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckoutDataImplFromJson(json);

  final List<Vendor>? _vendor;
  @override
  List<Vendor>? get vendor {
    final value = _vendor;
    if (value == null) return null;
    if (_vendor is EqualUnmodifiableListView) return _vendor;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<User>? _user;
  @override
  List<User>? get user {
    final value = _user;
    if (value == null) return null;
    if (_user is EqualUnmodifiableListView) return _user;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _coupons;
  @override
  List<dynamic>? get coupons {
    final value = _coupons;
    if (value == null) return null;
    if (_coupons is EqualUnmodifiableListView) return _coupons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'cart_total')
  final int? cartTotal;
  final List<Item>? _items;
  @override
  List<Item>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CheckoutData(vendor: $vendor, user: $user, coupons: $coupons, cartTotal: $cartTotal, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckoutDataImpl &&
            const DeepCollectionEquality().equals(other._vendor, _vendor) &&
            const DeepCollectionEquality().equals(other._user, _user) &&
            const DeepCollectionEquality().equals(other._coupons, _coupons) &&
            (identical(other.cartTotal, cartTotal) ||
                other.cartTotal == cartTotal) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_vendor),
      const DeepCollectionEquality().hash(_user),
      const DeepCollectionEquality().hash(_coupons),
      cartTotal,
      const DeepCollectionEquality().hash(_items));

  /// Create a copy of CheckoutData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckoutDataImplCopyWith<_$CheckoutDataImpl> get copyWith =>
      __$$CheckoutDataImplCopyWithImpl<_$CheckoutDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckoutDataImplToJson(
      this,
    );
  }
}

abstract class _CheckoutData implements CheckoutData {
  const factory _CheckoutData(
      {final List<Vendor>? vendor,
      final List<User>? user,
      final List<dynamic>? coupons,
      @JsonKey(name: 'cart_total') final int? cartTotal,
      final List<Item>? items}) = _$CheckoutDataImpl;

  factory _CheckoutData.fromJson(Map<String, dynamic> json) =
      _$CheckoutDataImpl.fromJson;

  @override
  List<Vendor>? get vendor;
  @override
  List<User>? get user;
  @override
  List<dynamic>? get coupons;
  @override
  @JsonKey(name: 'cart_total')
  int? get cartTotal;
  @override
  List<Item>? get items;

  /// Create a copy of CheckoutData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckoutDataImplCopyWith<_$CheckoutDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Vendor _$VendorFromJson(Map<String, dynamic> json) {
  return _Vendor.fromJson(json);
}

/// @nodoc
mixin _$Vendor {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_qr')
  String? get paymentQr => throw _privateConstructorUsedError;

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
      {String? id,
      String? name,
      @JsonKey(name: 'payment_qr') String? paymentQr});
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
    Object? id = freezed,
    Object? name = freezed,
    Object? paymentQr = freezed,
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
      paymentQr: freezed == paymentQr
          ? _value.paymentQr
          : paymentQr // ignore: cast_nullable_to_non_nullable
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
      {String? id,
      String? name,
      @JsonKey(name: 'payment_qr') String? paymentQr});
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
    Object? id = freezed,
    Object? name = freezed,
    Object? paymentQr = freezed,
  }) {
    return _then(_$VendorImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentQr: freezed == paymentQr
          ? _value.paymentQr
          : paymentQr // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VendorImpl implements _Vendor {
  const _$VendorImpl(
      {this.id, this.name, @JsonKey(name: 'payment_qr') this.paymentQr});

  factory _$VendorImpl.fromJson(Map<String, dynamic> json) =>
      _$$VendorImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  @JsonKey(name: 'payment_qr')
  final String? paymentQr;

  @override
  String toString() {
    return 'Vendor(id: $id, name: $name, paymentQr: $paymentQr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VendorImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.paymentQr, paymentQr) ||
                other.paymentQr == paymentQr));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, paymentQr);

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
      {final String? id,
      final String? name,
      @JsonKey(name: 'payment_qr') final String? paymentQr}) = _$VendorImpl;

  factory _Vendor.fromJson(Map<String, dynamic> json) = _$VendorImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  @JsonKey(name: 'payment_qr')
  String? get paymentQr;

  /// Create a copy of Vendor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VendorImplCopyWith<_$VendorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call({String? id, String? name, String? email, String? phone});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
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
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name, String? email, String? phone});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
  }) {
    return _then(_$UserImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl({this.id, this.name, this.email, this.phone});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? phone;

  @override
  String toString() {
    return 'User(id: $id, name: $name, email: $email, phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, email, phone);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {final String? id,
      final String? name,
      final String? email,
      final String? phone}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get phone;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Item _$ItemFromJson(Map<String, dynamic> json) {
  return _Item.fromJson(json);
}

/// @nodoc
mixin _$Item {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'vendor_id')
  String? get vendorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'post_id')
  String? get postId =>
      throw _privateConstructorUsedError; //   String? post_type_id,
//  @JsonKey(name: 'post_type_id') String? buynow_post_id, // for BuyNow model
  String? get name => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String get qty => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  String? get lon => throw _privateConstructorUsedError;
  String? get lat => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get pickup => throw _privateConstructorUsedError;
  String? get stock => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_on_bulks')
  List<DiscountOnBulk>? get discountOnBulks =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'item_total')
  int? get itemTotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'post_type_id')
  String? get postTypeId => throw _privateConstructorUsedError;

  /// Serializes this Item to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ItemCopyWith<Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res, Item>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'vendor_id') String? vendorId,
      @JsonKey(name: 'post_id') String? postId,
      String? name,
      String? title,
      String qty,
      String price,
      String? lon,
      String? lat,
      String? image,
      String? pickup,
      String? stock,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'discount_on_bulks') List<DiscountOnBulk>? discountOnBulks,
      @JsonKey(name: 'item_total') int? itemTotal,
      @JsonKey(name: 'post_type_id') String? postTypeId});
}

/// @nodoc
class _$ItemCopyWithImpl<$Res, $Val extends Item>
    implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? vendorId = freezed,
    Object? postId = freezed,
    Object? name = freezed,
    Object? title = freezed,
    Object? qty = null,
    Object? price = null,
    Object? lon = freezed,
    Object? lat = freezed,
    Object? image = freezed,
    Object? pickup = freezed,
    Object? stock = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? discountOnBulks = freezed,
    Object? itemTotal = freezed,
    Object? postTypeId = freezed,
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
      postId: freezed == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      lon: freezed == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      pickup: freezed == pickup
          ? _value.pickup
          : pickup // ignore: cast_nullable_to_non_nullable
              as String?,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      discountOnBulks: freezed == discountOnBulks
          ? _value.discountOnBulks
          : discountOnBulks // ignore: cast_nullable_to_non_nullable
              as List<DiscountOnBulk>?,
      itemTotal: freezed == itemTotal
          ? _value.itemTotal
          : itemTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      postTypeId: freezed == postTypeId
          ? _value.postTypeId
          : postTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ItemImplCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$$ItemImplCopyWith(
          _$ItemImpl value, $Res Function(_$ItemImpl) then) =
      __$$ItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'vendor_id') String? vendorId,
      @JsonKey(name: 'post_id') String? postId,
      String? name,
      String? title,
      String qty,
      String price,
      String? lon,
      String? lat,
      String? image,
      String? pickup,
      String? stock,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'discount_on_bulks') List<DiscountOnBulk>? discountOnBulks,
      @JsonKey(name: 'item_total') int? itemTotal,
      @JsonKey(name: 'post_type_id') String? postTypeId});
}

/// @nodoc
class __$$ItemImplCopyWithImpl<$Res>
    extends _$ItemCopyWithImpl<$Res, _$ItemImpl>
    implements _$$ItemImplCopyWith<$Res> {
  __$$ItemImplCopyWithImpl(_$ItemImpl _value, $Res Function(_$ItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? vendorId = freezed,
    Object? postId = freezed,
    Object? name = freezed,
    Object? title = freezed,
    Object? qty = null,
    Object? price = null,
    Object? lon = freezed,
    Object? lat = freezed,
    Object? image = freezed,
    Object? pickup = freezed,
    Object? stock = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? discountOnBulks = freezed,
    Object? itemTotal = freezed,
    Object? postTypeId = freezed,
  }) {
    return _then(_$ItemImpl(
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
      postId: freezed == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      lon: freezed == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      pickup: freezed == pickup
          ? _value.pickup
          : pickup // ignore: cast_nullable_to_non_nullable
              as String?,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      discountOnBulks: freezed == discountOnBulks
          ? _value._discountOnBulks
          : discountOnBulks // ignore: cast_nullable_to_non_nullable
              as List<DiscountOnBulk>?,
      itemTotal: freezed == itemTotal
          ? _value.itemTotal
          : itemTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      postTypeId: freezed == postTypeId
          ? _value.postTypeId
          : postTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemImpl implements _Item {
  const _$ItemImpl(
      {this.id,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'vendor_id') this.vendorId,
      @JsonKey(name: 'post_id') this.postId,
      this.name,
      this.title,
      this.qty = '1',
      required this.price,
      this.lon,
      this.lat,
      this.image,
      this.pickup,
      this.stock,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'discount_on_bulks')
      final List<DiscountOnBulk>? discountOnBulks,
      @JsonKey(name: 'item_total') this.itemTotal,
      @JsonKey(name: 'post_type_id') this.postTypeId})
      : _discountOnBulks = discountOnBulks;

  factory _$ItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'user_id')
  final String? userId;
  @override
  @JsonKey(name: 'vendor_id')
  final String? vendorId;
  @override
  @JsonKey(name: 'post_id')
  final String? postId;
//   String? post_type_id,
//  @JsonKey(name: 'post_type_id') String? buynow_post_id, // for BuyNow model
  @override
  final String? name;
  @override
  final String? title;
  @override
  @JsonKey()
  final String qty;
  @override
  final String price;
  @override
  final String? lon;
  @override
  final String? lat;
  @override
  final String? image;
  @override
  final String? pickup;
  @override
  final String? stock;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  final List<DiscountOnBulk>? _discountOnBulks;
  @override
  @JsonKey(name: 'discount_on_bulks')
  List<DiscountOnBulk>? get discountOnBulks {
    final value = _discountOnBulks;
    if (value == null) return null;
    if (_discountOnBulks is EqualUnmodifiableListView) return _discountOnBulks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'item_total')
  final int? itemTotal;
  @override
  @JsonKey(name: 'post_type_id')
  final String? postTypeId;

  @override
  String toString() {
    return 'Item(id: $id, userId: $userId, vendorId: $vendorId, postId: $postId, name: $name, title: $title, qty: $qty, price: $price, lon: $lon, lat: $lat, image: $image, pickup: $pickup, stock: $stock, createdAt: $createdAt, updatedAt: $updatedAt, discountOnBulks: $discountOnBulks, itemTotal: $itemTotal, postTypeId: $postTypeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.vendorId, vendorId) ||
                other.vendorId == vendorId) &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.qty, qty) || other.qty == qty) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.lon, lon) || other.lon == lon) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.pickup, pickup) || other.pickup == pickup) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality()
                .equals(other._discountOnBulks, _discountOnBulks) &&
            (identical(other.itemTotal, itemTotal) ||
                other.itemTotal == itemTotal) &&
            (identical(other.postTypeId, postTypeId) ||
                other.postTypeId == postTypeId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      vendorId,
      postId,
      name,
      title,
      qty,
      price,
      lon,
      lat,
      image,
      pickup,
      stock,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_discountOnBulks),
      itemTotal,
      postTypeId);

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemImplCopyWith<_$ItemImpl> get copyWith =>
      __$$ItemImplCopyWithImpl<_$ItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemImplToJson(
      this,
    );
  }
}

abstract class _Item implements Item {
  const factory _Item(
      {final String? id,
      @JsonKey(name: 'user_id') final String? userId,
      @JsonKey(name: 'vendor_id') final String? vendorId,
      @JsonKey(name: 'post_id') final String? postId,
      final String? name,
      final String? title,
      final String qty,
      required final String price,
      final String? lon,
      final String? lat,
      final String? image,
      final String? pickup,
      final String? stock,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'updated_at') final String? updatedAt,
      @JsonKey(name: 'discount_on_bulks')
      final List<DiscountOnBulk>? discountOnBulks,
      @JsonKey(name: 'item_total') final int? itemTotal,
      @JsonKey(name: 'post_type_id') final String? postTypeId}) = _$ItemImpl;

  factory _Item.fromJson(Map<String, dynamic> json) = _$ItemImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'user_id')
  String? get userId;
  @override
  @JsonKey(name: 'vendor_id')
  String? get vendorId;
  @override
  @JsonKey(name: 'post_id')
  String? get postId;
  @override //   String? post_type_id,
//  @JsonKey(name: 'post_type_id') String? buynow_post_id, // for BuyNow model
  String? get name;
  @override
  String? get title;
  @override
  String get qty;
  @override
  String get price;
  @override
  String? get lon;
  @override
  String? get lat;
  @override
  String? get image;
  @override
  String? get pickup;
  @override
  String? get stock;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(name: 'discount_on_bulks')
  List<DiscountOnBulk>? get discountOnBulks;
  @override
  @JsonKey(name: 'item_total')
  int? get itemTotal;
  @override
  @JsonKey(name: 'post_type_id')
  String? get postTypeId;

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItemImplCopyWith<_$ItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DiscountOnBulk _$DiscountOnBulkFromJson(Map<String, dynamic> json) {
  return _DiscountOnBulk.fromJson(json);
}

/// @nodoc
mixin _$DiscountOnBulk {
  @JsonKey(name: 'piece_from')
  String? get pieceFrom => throw _privateConstructorUsedError;
  @JsonKey(name: 'piece_to')
  String? get pieceTo => throw _privateConstructorUsedError;
  @JsonKey(name: 'rate')
  String? get rate => throw _privateConstructorUsedError;

  /// Serializes this DiscountOnBulk to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DiscountOnBulk
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DiscountOnBulkCopyWith<DiscountOnBulk> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscountOnBulkCopyWith<$Res> {
  factory $DiscountOnBulkCopyWith(
          DiscountOnBulk value, $Res Function(DiscountOnBulk) then) =
      _$DiscountOnBulkCopyWithImpl<$Res, DiscountOnBulk>;
  @useResult
  $Res call(
      {@JsonKey(name: 'piece_from') String? pieceFrom,
      @JsonKey(name: 'piece_to') String? pieceTo,
      @JsonKey(name: 'rate') String? rate});
}

/// @nodoc
class _$DiscountOnBulkCopyWithImpl<$Res, $Val extends DiscountOnBulk>
    implements $DiscountOnBulkCopyWith<$Res> {
  _$DiscountOnBulkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DiscountOnBulk
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pieceFrom = freezed,
    Object? pieceTo = freezed,
    Object? rate = freezed,
  }) {
    return _then(_value.copyWith(
      pieceFrom: freezed == pieceFrom
          ? _value.pieceFrom
          : pieceFrom // ignore: cast_nullable_to_non_nullable
              as String?,
      pieceTo: freezed == pieceTo
          ? _value.pieceTo
          : pieceTo // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiscountOnBulkImplCopyWith<$Res>
    implements $DiscountOnBulkCopyWith<$Res> {
  factory _$$DiscountOnBulkImplCopyWith(_$DiscountOnBulkImpl value,
          $Res Function(_$DiscountOnBulkImpl) then) =
      __$$DiscountOnBulkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'piece_from') String? pieceFrom,
      @JsonKey(name: 'piece_to') String? pieceTo,
      @JsonKey(name: 'rate') String? rate});
}

/// @nodoc
class __$$DiscountOnBulkImplCopyWithImpl<$Res>
    extends _$DiscountOnBulkCopyWithImpl<$Res, _$DiscountOnBulkImpl>
    implements _$$DiscountOnBulkImplCopyWith<$Res> {
  __$$DiscountOnBulkImplCopyWithImpl(
      _$DiscountOnBulkImpl _value, $Res Function(_$DiscountOnBulkImpl) _then)
      : super(_value, _then);

  /// Create a copy of DiscountOnBulk
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pieceFrom = freezed,
    Object? pieceTo = freezed,
    Object? rate = freezed,
  }) {
    return _then(_$DiscountOnBulkImpl(
      pieceFrom: freezed == pieceFrom
          ? _value.pieceFrom
          : pieceFrom // ignore: cast_nullable_to_non_nullable
              as String?,
      pieceTo: freezed == pieceTo
          ? _value.pieceTo
          : pieceTo // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DiscountOnBulkImpl implements _DiscountOnBulk {
  const _$DiscountOnBulkImpl(
      {@JsonKey(name: 'piece_from') this.pieceFrom,
      @JsonKey(name: 'piece_to') this.pieceTo,
      @JsonKey(name: 'rate') this.rate});

  factory _$DiscountOnBulkImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiscountOnBulkImplFromJson(json);

  @override
  @JsonKey(name: 'piece_from')
  final String? pieceFrom;
  @override
  @JsonKey(name: 'piece_to')
  final String? pieceTo;
  @override
  @JsonKey(name: 'rate')
  final String? rate;

  @override
  String toString() {
    return 'DiscountOnBulk(pieceFrom: $pieceFrom, pieceTo: $pieceTo, rate: $rate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscountOnBulkImpl &&
            (identical(other.pieceFrom, pieceFrom) ||
                other.pieceFrom == pieceFrom) &&
            (identical(other.pieceTo, pieceTo) || other.pieceTo == pieceTo) &&
            (identical(other.rate, rate) || other.rate == rate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, pieceFrom, pieceTo, rate);

  /// Create a copy of DiscountOnBulk
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscountOnBulkImplCopyWith<_$DiscountOnBulkImpl> get copyWith =>
      __$$DiscountOnBulkImplCopyWithImpl<_$DiscountOnBulkImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiscountOnBulkImplToJson(
      this,
    );
  }
}

abstract class _DiscountOnBulk implements DiscountOnBulk {
  const factory _DiscountOnBulk(
      {@JsonKey(name: 'piece_from') final String? pieceFrom,
      @JsonKey(name: 'piece_to') final String? pieceTo,
      @JsonKey(name: 'rate') final String? rate}) = _$DiscountOnBulkImpl;

  factory _DiscountOnBulk.fromJson(Map<String, dynamic> json) =
      _$DiscountOnBulkImpl.fromJson;

  @override
  @JsonKey(name: 'piece_from')
  String? get pieceFrom;
  @override
  @JsonKey(name: 'piece_to')
  String? get pieceTo;
  @override
  @JsonKey(name: 'rate')
  String? get rate;

  /// Create a copy of DiscountOnBulk
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DiscountOnBulkImplCopyWith<_$DiscountOnBulkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
