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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
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
  @override
  @JsonKey(ignore: true)
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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_vendor),
      const DeepCollectionEquality().hash(_user),
      const DeepCollectionEquality().hash(_coupons),
      cartTotal,
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
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
  @override
  @JsonKey(ignore: true)
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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, paymentQr);

  @JsonKey(ignore: true)
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
  @override
  @JsonKey(ignore: true)
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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, email, phone);

  @JsonKey(ignore: true)
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
  @override
  @JsonKey(ignore: true)
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
  String? get postId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String get qty => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'item_total')
  int? get itemTotal => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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
      String qty,
      String price,
      String? image,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'item_total') int? itemTotal});
}

/// @nodoc
class _$ItemCopyWithImpl<$Res, $Val extends Item>
    implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? vendorId = freezed,
    Object? postId = freezed,
    Object? name = freezed,
    Object? qty = null,
    Object? price = null,
    Object? image = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? itemTotal = freezed,
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
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      itemTotal: freezed == itemTotal
          ? _value.itemTotal
          : itemTotal // ignore: cast_nullable_to_non_nullable
              as int?,
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
      String qty,
      String price,
      String? image,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'item_total') int? itemTotal});
}

/// @nodoc
class __$$ItemImplCopyWithImpl<$Res>
    extends _$ItemCopyWithImpl<$Res, _$ItemImpl>
    implements _$$ItemImplCopyWith<$Res> {
  __$$ItemImplCopyWithImpl(_$ItemImpl _value, $Res Function(_$ItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? vendorId = freezed,
    Object? postId = freezed,
    Object? name = freezed,
    Object? qty = null,
    Object? price = null,
    Object? image = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? itemTotal = freezed,
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
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      itemTotal: freezed == itemTotal
          ? _value.itemTotal
          : itemTotal // ignore: cast_nullable_to_non_nullable
              as int?,
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
      required this.qty,
      required this.price,
      this.image,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'item_total') this.itemTotal});

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
  @override
  final String? name;
  @override
  final String qty;
  @override
  final String price;
  @override
  final String? image;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  @JsonKey(name: 'item_total')
  final int? itemTotal;

  @override
  String toString() {
    return 'Item(id: $id, userId: $userId, vendorId: $vendorId, postId: $postId, name: $name, qty: $qty, price: $price, image: $image, createdAt: $createdAt, updatedAt: $updatedAt, itemTotal: $itemTotal)';
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
            (identical(other.qty, qty) || other.qty == qty) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.itemTotal, itemTotal) ||
                other.itemTotal == itemTotal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, vendorId, postId,
      name, qty, price, image, createdAt, updatedAt, itemTotal);

  @JsonKey(ignore: true)
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
      required final String qty,
      required final String price,
      final String? image,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'updated_at') final String? updatedAt,
      @JsonKey(name: 'item_total') final int? itemTotal}) = _$ItemImpl;

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
  @override
  String? get name;
  @override
  String get qty;
  @override
  String get price;
  @override
  String? get image;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(name: 'item_total')
  int? get itemTotal;
  @override
  @JsonKey(ignore: true)
  _$$ItemImplCopyWith<_$ItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
