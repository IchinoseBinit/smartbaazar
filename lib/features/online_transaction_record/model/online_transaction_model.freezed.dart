// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'online_transaction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OnlineTransactionModel _$OnlineTransactionModelFromJson(
    Map<String, dynamic> json) {
  return _OnlineTransactionModel.fromJson(json);
}

/// @nodoc
mixin _$OnlineTransactionModel {
  @JsonKey(name: "data")
  Data get data => throw _privateConstructorUsedError;
  @JsonKey(name: "msg")
  String get msg => throw _privateConstructorUsedError;

  /// Serializes this OnlineTransactionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OnlineTransactionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OnlineTransactionModelCopyWith<OnlineTransactionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnlineTransactionModelCopyWith<$Res> {
  factory $OnlineTransactionModelCopyWith(OnlineTransactionModel value,
          $Res Function(OnlineTransactionModel) then) =
      _$OnlineTransactionModelCopyWithImpl<$Res, OnlineTransactionModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "data") Data data, @JsonKey(name: "msg") String msg});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$OnlineTransactionModelCopyWithImpl<$Res,
        $Val extends OnlineTransactionModel>
    implements $OnlineTransactionModelCopyWith<$Res> {
  _$OnlineTransactionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OnlineTransactionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? msg = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of OnlineTransactionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res> get data {
    return $DataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OnlineTransactionModelImplCopyWith<$Res>
    implements $OnlineTransactionModelCopyWith<$Res> {
  factory _$$OnlineTransactionModelImplCopyWith(
          _$OnlineTransactionModelImpl value,
          $Res Function(_$OnlineTransactionModelImpl) then) =
      __$$OnlineTransactionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "data") Data data, @JsonKey(name: "msg") String msg});

  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$$OnlineTransactionModelImplCopyWithImpl<$Res>
    extends _$OnlineTransactionModelCopyWithImpl<$Res,
        _$OnlineTransactionModelImpl>
    implements _$$OnlineTransactionModelImplCopyWith<$Res> {
  __$$OnlineTransactionModelImplCopyWithImpl(
      _$OnlineTransactionModelImpl _value,
      $Res Function(_$OnlineTransactionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnlineTransactionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? msg = null,
  }) {
    return _then(_$OnlineTransactionModelImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OnlineTransactionModelImpl implements _OnlineTransactionModel {
  const _$OnlineTransactionModelImpl(
      {@JsonKey(name: "data") required this.data,
      @JsonKey(name: "msg") required this.msg});

  factory _$OnlineTransactionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OnlineTransactionModelImplFromJson(json);

  @override
  @JsonKey(name: "data")
  final Data data;
  @override
  @JsonKey(name: "msg")
  final String msg;

  @override
  String toString() {
    return 'OnlineTransactionModel(data: $data, msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnlineTransactionModelImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data, msg);

  /// Create a copy of OnlineTransactionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnlineTransactionModelImplCopyWith<_$OnlineTransactionModelImpl>
      get copyWith => __$$OnlineTransactionModelImplCopyWithImpl<
          _$OnlineTransactionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OnlineTransactionModelImplToJson(
      this,
    );
  }
}

abstract class _OnlineTransactionModel implements OnlineTransactionModel {
  const factory _OnlineTransactionModel(
          {@JsonKey(name: "data") required final Data data,
          @JsonKey(name: "msg") required final String msg}) =
      _$OnlineTransactionModelImpl;

  factory _OnlineTransactionModel.fromJson(Map<String, dynamic> json) =
      _$OnlineTransactionModelImpl.fromJson;

  @override
  @JsonKey(name: "data")
  Data get data;
  @override
  @JsonKey(name: "msg")
  String get msg;

  /// Create a copy of OnlineTransactionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnlineTransactionModelImplCopyWith<_$OnlineTransactionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: "all_payments")
  List<Payment> get allPayments => throw _privateConstructorUsedError;
  @JsonKey(name: "hold_payments")
  List<Payment> get holdPayments => throw _privateConstructorUsedError;
  @JsonKey(name: "release_payments")
  List<dynamic> get releasePayments => throw _privateConstructorUsedError;

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {@JsonKey(name: "all_payments") List<Payment> allPayments,
      @JsonKey(name: "hold_payments") List<Payment> holdPayments,
      @JsonKey(name: "release_payments") List<dynamic> releasePayments});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allPayments = null,
    Object? holdPayments = null,
    Object? releasePayments = null,
  }) {
    return _then(_value.copyWith(
      allPayments: null == allPayments
          ? _value.allPayments
          : allPayments // ignore: cast_nullable_to_non_nullable
              as List<Payment>,
      holdPayments: null == holdPayments
          ? _value.holdPayments
          : holdPayments // ignore: cast_nullable_to_non_nullable
              as List<Payment>,
      releasePayments: null == releasePayments
          ? _value.releasePayments
          : releasePayments // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "all_payments") List<Payment> allPayments,
      @JsonKey(name: "hold_payments") List<Payment> holdPayments,
      @JsonKey(name: "release_payments") List<dynamic> releasePayments});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allPayments = null,
    Object? holdPayments = null,
    Object? releasePayments = null,
  }) {
    return _then(_$DataImpl(
      allPayments: null == allPayments
          ? _value._allPayments
          : allPayments // ignore: cast_nullable_to_non_nullable
              as List<Payment>,
      holdPayments: null == holdPayments
          ? _value._holdPayments
          : holdPayments // ignore: cast_nullable_to_non_nullable
              as List<Payment>,
      releasePayments: null == releasePayments
          ? _value._releasePayments
          : releasePayments // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: "all_payments") required final List<Payment> allPayments,
      @JsonKey(name: "hold_payments") required final List<Payment> holdPayments,
      @JsonKey(name: "release_payments")
      required final List<dynamic> releasePayments})
      : _allPayments = allPayments,
        _holdPayments = holdPayments,
        _releasePayments = releasePayments;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  final List<Payment> _allPayments;
  @override
  @JsonKey(name: "all_payments")
  List<Payment> get allPayments {
    if (_allPayments is EqualUnmodifiableListView) return _allPayments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allPayments);
  }

  final List<Payment> _holdPayments;
  @override
  @JsonKey(name: "hold_payments")
  List<Payment> get holdPayments {
    if (_holdPayments is EqualUnmodifiableListView) return _holdPayments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_holdPayments);
  }

  final List<dynamic> _releasePayments;
  @override
  @JsonKey(name: "release_payments")
  List<dynamic> get releasePayments {
    if (_releasePayments is EqualUnmodifiableListView) return _releasePayments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_releasePayments);
  }

  @override
  String toString() {
    return 'Data(allPayments: $allPayments, holdPayments: $holdPayments, releasePayments: $releasePayments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            const DeepCollectionEquality()
                .equals(other._allPayments, _allPayments) &&
            const DeepCollectionEquality()
                .equals(other._holdPayments, _holdPayments) &&
            const DeepCollectionEquality()
                .equals(other._releasePayments, _releasePayments));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_allPayments),
      const DeepCollectionEquality().hash(_holdPayments),
      const DeepCollectionEquality().hash(_releasePayments));

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {@JsonKey(name: "all_payments") required final List<Payment> allPayments,
      @JsonKey(name: "hold_payments") required final List<Payment> holdPayments,
      @JsonKey(name: "release_payments")
      required final List<dynamic> releasePayments}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "all_payments")
  List<Payment> get allPayments;
  @override
  @JsonKey(name: "hold_payments")
  List<Payment> get holdPayments;
  @override
  @JsonKey(name: "release_payments")
  List<dynamic> get releasePayments;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Payment _$PaymentFromJson(Map<String, dynamic> json) {
  return _Payment.fromJson(json);
}

/// @nodoc
mixin _$Payment {
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "order_id")
  String get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: "post_id")
  String get postId => throw _privateConstructorUsedError;
  @JsonKey(name: "transaction_id")
  String? get transactionId => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "vendor_id")
  String get vendorId => throw _privateConstructorUsedError;
  @JsonKey(name: "amount")
  String get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "del_cost")
  String get delCost => throw _privateConstructorUsedError;
  @JsonKey(name: "total")
  String get total => throw _privateConstructorUsedError;
  @JsonKey(name: "coupon")
  String get coupon => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: "method")
  String? get method => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  dynamic get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "release_date")
  dynamic get releaseDate => throw _privateConstructorUsedError;

  /// Serializes this Payment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentCopyWith<Payment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentCopyWith<$Res> {
  factory $PaymentCopyWith(Payment value, $Res Function(Payment) then) =
      _$PaymentCopyWithImpl<$Res, Payment>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "order_id") String orderId,
      @JsonKey(name: "post_id") String postId,
      @JsonKey(name: "transaction_id") String? transactionId,
      @JsonKey(name: "user_id") String userId,
      @JsonKey(name: "vendor_id") String vendorId,
      @JsonKey(name: "amount") String amount,
      @JsonKey(name: "del_cost") String delCost,
      @JsonKey(name: "total") String total,
      @JsonKey(name: "coupon") String coupon,
      @JsonKey(name: "status") String status,
      @JsonKey(name: "method") String? method,
      @JsonKey(name: "created_at") DateTime createdAt,
      @JsonKey(name: "updated_at") dynamic updatedAt,
      @JsonKey(name: "release_date") dynamic releaseDate});
}

/// @nodoc
class _$PaymentCopyWithImpl<$Res, $Val extends Payment>
    implements $PaymentCopyWith<$Res> {
  _$PaymentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderId = null,
    Object? postId = null,
    Object? transactionId = freezed,
    Object? userId = null,
    Object? vendorId = null,
    Object? amount = null,
    Object? delCost = null,
    Object? total = null,
    Object? coupon = null,
    Object? status = null,
    Object? method = freezed,
    Object? createdAt = null,
    Object? updatedAt = freezed,
    Object? releaseDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      transactionId: freezed == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      vendorId: null == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      delCost: null == delCost
          ? _value.delCost
          : delCost // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      coupon: null == coupon
          ? _value.coupon
          : coupon // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      method: freezed == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentImplCopyWith<$Res> implements $PaymentCopyWith<$Res> {
  factory _$$PaymentImplCopyWith(
          _$PaymentImpl value, $Res Function(_$PaymentImpl) then) =
      __$$PaymentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "order_id") String orderId,
      @JsonKey(name: "post_id") String postId,
      @JsonKey(name: "transaction_id") String? transactionId,
      @JsonKey(name: "user_id") String userId,
      @JsonKey(name: "vendor_id") String vendorId,
      @JsonKey(name: "amount") String amount,
      @JsonKey(name: "del_cost") String delCost,
      @JsonKey(name: "total") String total,
      @JsonKey(name: "coupon") String coupon,
      @JsonKey(name: "status") String status,
      @JsonKey(name: "method") String? method,
      @JsonKey(name: "created_at") DateTime createdAt,
      @JsonKey(name: "updated_at") dynamic updatedAt,
      @JsonKey(name: "release_date") dynamic releaseDate});
}

/// @nodoc
class __$$PaymentImplCopyWithImpl<$Res>
    extends _$PaymentCopyWithImpl<$Res, _$PaymentImpl>
    implements _$$PaymentImplCopyWith<$Res> {
  __$$PaymentImplCopyWithImpl(
      _$PaymentImpl _value, $Res Function(_$PaymentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderId = null,
    Object? postId = null,
    Object? transactionId = freezed,
    Object? userId = null,
    Object? vendorId = null,
    Object? amount = null,
    Object? delCost = null,
    Object? total = null,
    Object? coupon = null,
    Object? status = null,
    Object? method = freezed,
    Object? createdAt = null,
    Object? updatedAt = freezed,
    Object? releaseDate = freezed,
  }) {
    return _then(_$PaymentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      transactionId: freezed == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      vendorId: null == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      delCost: null == delCost
          ? _value.delCost
          : delCost // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      coupon: null == coupon
          ? _value.coupon
          : coupon // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      method: freezed == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentImpl implements _Payment {
  const _$PaymentImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "order_id") required this.orderId,
      @JsonKey(name: "post_id") required this.postId,
      @JsonKey(name: "transaction_id") required this.transactionId,
      @JsonKey(name: "user_id") required this.userId,
      @JsonKey(name: "vendor_id") required this.vendorId,
      @JsonKey(name: "amount") required this.amount,
      @JsonKey(name: "del_cost") required this.delCost,
      @JsonKey(name: "total") required this.total,
      @JsonKey(name: "coupon") required this.coupon,
      @JsonKey(name: "status") required this.status,
      @JsonKey(name: "method") required this.method,
      @JsonKey(name: "created_at") required this.createdAt,
      @JsonKey(name: "updated_at") required this.updatedAt,
      @JsonKey(name: "release_date") required this.releaseDate});

  factory _$PaymentImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "order_id")
  final String orderId;
  @override
  @JsonKey(name: "post_id")
  final String postId;
  @override
  @JsonKey(name: "transaction_id")
  final String? transactionId;
  @override
  @JsonKey(name: "user_id")
  final String userId;
  @override
  @JsonKey(name: "vendor_id")
  final String vendorId;
  @override
  @JsonKey(name: "amount")
  final String amount;
  @override
  @JsonKey(name: "del_cost")
  final String delCost;
  @override
  @JsonKey(name: "total")
  final String total;
  @override
  @JsonKey(name: "coupon")
  final String coupon;
  @override
  @JsonKey(name: "status")
  final String status;
  @override
  @JsonKey(name: "method")
  final String? method;
  @override
  @JsonKey(name: "created_at")
  final DateTime createdAt;
  @override
  @JsonKey(name: "updated_at")
  final dynamic updatedAt;
  @override
  @JsonKey(name: "release_date")
  final dynamic releaseDate;

  @override
  String toString() {
    return 'Payment(id: $id, orderId: $orderId, postId: $postId, transactionId: $transactionId, userId: $userId, vendorId: $vendorId, amount: $amount, delCost: $delCost, total: $total, coupon: $coupon, status: $status, method: $method, createdAt: $createdAt, updatedAt: $updatedAt, releaseDate: $releaseDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.vendorId, vendorId) ||
                other.vendorId == vendorId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.delCost, delCost) || other.delCost == delCost) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.coupon, coupon) || other.coupon == coupon) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality()
                .equals(other.releaseDate, releaseDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      orderId,
      postId,
      transactionId,
      userId,
      vendorId,
      amount,
      delCost,
      total,
      coupon,
      status,
      method,
      createdAt,
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(releaseDate));

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentImplCopyWith<_$PaymentImpl> get copyWith =>
      __$$PaymentImplCopyWithImpl<_$PaymentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentImplToJson(
      this,
    );
  }
}

abstract class _Payment implements Payment {
  const factory _Payment(
          {@JsonKey(name: "id") required final String id,
          @JsonKey(name: "order_id") required final String orderId,
          @JsonKey(name: "post_id") required final String postId,
          @JsonKey(name: "transaction_id") required final String? transactionId,
          @JsonKey(name: "user_id") required final String userId,
          @JsonKey(name: "vendor_id") required final String vendorId,
          @JsonKey(name: "amount") required final String amount,
          @JsonKey(name: "del_cost") required final String delCost,
          @JsonKey(name: "total") required final String total,
          @JsonKey(name: "coupon") required final String coupon,
          @JsonKey(name: "status") required final String status,
          @JsonKey(name: "method") required final String? method,
          @JsonKey(name: "created_at") required final DateTime createdAt,
          @JsonKey(name: "updated_at") required final dynamic updatedAt,
          @JsonKey(name: "release_date") required final dynamic releaseDate}) =
      _$PaymentImpl;

  factory _Payment.fromJson(Map<String, dynamic> json) = _$PaymentImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "order_id")
  String get orderId;
  @override
  @JsonKey(name: "post_id")
  String get postId;
  @override
  @JsonKey(name: "transaction_id")
  String? get transactionId;
  @override
  @JsonKey(name: "user_id")
  String get userId;
  @override
  @JsonKey(name: "vendor_id")
  String get vendorId;
  @override
  @JsonKey(name: "amount")
  String get amount;
  @override
  @JsonKey(name: "del_cost")
  String get delCost;
  @override
  @JsonKey(name: "total")
  String get total;
  @override
  @JsonKey(name: "coupon")
  String get coupon;
  @override
  @JsonKey(name: "status")
  String get status;
  @override
  @JsonKey(name: "method")
  String? get method;
  @override
  @JsonKey(name: "created_at")
  DateTime get createdAt;
  @override
  @JsonKey(name: "updated_at")
  dynamic get updatedAt;
  @override
  @JsonKey(name: "release_date")
  dynamic get releaseDate;

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentImplCopyWith<_$PaymentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
