// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_return_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MyReturnModel _$MyReturnModelFromJson(Map<String, dynamic> json) {
  return _MyReturnModel.fromJson(json);
}

/// @nodoc
mixin _$MyReturnModel {
  @JsonKey(name: 'return_received')
  ReturnData? get returnReceived => throw _privateConstructorUsedError;
  @JsonKey(name: 'return_placed')
  ReturnData? get returnPlaced => throw _privateConstructorUsedError;

  /// Serializes this MyReturnModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MyReturnModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyReturnModelCopyWith<MyReturnModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyReturnModelCopyWith<$Res> {
  factory $MyReturnModelCopyWith(
          MyReturnModel value, $Res Function(MyReturnModel) then) =
      _$MyReturnModelCopyWithImpl<$Res, MyReturnModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'return_received') ReturnData? returnReceived,
      @JsonKey(name: 'return_placed') ReturnData? returnPlaced});

  $ReturnDataCopyWith<$Res>? get returnReceived;
  $ReturnDataCopyWith<$Res>? get returnPlaced;
}

/// @nodoc
class _$MyReturnModelCopyWithImpl<$Res, $Val extends MyReturnModel>
    implements $MyReturnModelCopyWith<$Res> {
  _$MyReturnModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyReturnModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? returnReceived = freezed,
    Object? returnPlaced = freezed,
  }) {
    return _then(_value.copyWith(
      returnReceived: freezed == returnReceived
          ? _value.returnReceived
          : returnReceived // ignore: cast_nullable_to_non_nullable
              as ReturnData?,
      returnPlaced: freezed == returnPlaced
          ? _value.returnPlaced
          : returnPlaced // ignore: cast_nullable_to_non_nullable
              as ReturnData?,
    ) as $Val);
  }

  /// Create a copy of MyReturnModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReturnDataCopyWith<$Res>? get returnReceived {
    if (_value.returnReceived == null) {
      return null;
    }

    return $ReturnDataCopyWith<$Res>(_value.returnReceived!, (value) {
      return _then(_value.copyWith(returnReceived: value) as $Val);
    });
  }

  /// Create a copy of MyReturnModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReturnDataCopyWith<$Res>? get returnPlaced {
    if (_value.returnPlaced == null) {
      return null;
    }

    return $ReturnDataCopyWith<$Res>(_value.returnPlaced!, (value) {
      return _then(_value.copyWith(returnPlaced: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MyReturnModelImplCopyWith<$Res>
    implements $MyReturnModelCopyWith<$Res> {
  factory _$$MyReturnModelImplCopyWith(
          _$MyReturnModelImpl value, $Res Function(_$MyReturnModelImpl) then) =
      __$$MyReturnModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'return_received') ReturnData? returnReceived,
      @JsonKey(name: 'return_placed') ReturnData? returnPlaced});

  @override
  $ReturnDataCopyWith<$Res>? get returnReceived;
  @override
  $ReturnDataCopyWith<$Res>? get returnPlaced;
}

/// @nodoc
class __$$MyReturnModelImplCopyWithImpl<$Res>
    extends _$MyReturnModelCopyWithImpl<$Res, _$MyReturnModelImpl>
    implements _$$MyReturnModelImplCopyWith<$Res> {
  __$$MyReturnModelImplCopyWithImpl(
      _$MyReturnModelImpl _value, $Res Function(_$MyReturnModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyReturnModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? returnReceived = freezed,
    Object? returnPlaced = freezed,
  }) {
    return _then(_$MyReturnModelImpl(
      returnReceived: freezed == returnReceived
          ? _value.returnReceived
          : returnReceived // ignore: cast_nullable_to_non_nullable
              as ReturnData?,
      returnPlaced: freezed == returnPlaced
          ? _value.returnPlaced
          : returnPlaced // ignore: cast_nullable_to_non_nullable
              as ReturnData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyReturnModelImpl implements _MyReturnModel {
  const _$MyReturnModelImpl(
      {@JsonKey(name: 'return_received') required this.returnReceived,
      @JsonKey(name: 'return_placed') required this.returnPlaced});

  factory _$MyReturnModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyReturnModelImplFromJson(json);

  @override
  @JsonKey(name: 'return_received')
  final ReturnData? returnReceived;
  @override
  @JsonKey(name: 'return_placed')
  final ReturnData? returnPlaced;

  @override
  String toString() {
    return 'MyReturnModel(returnReceived: $returnReceived, returnPlaced: $returnPlaced)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyReturnModelImpl &&
            (identical(other.returnReceived, returnReceived) ||
                other.returnReceived == returnReceived) &&
            (identical(other.returnPlaced, returnPlaced) ||
                other.returnPlaced == returnPlaced));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, returnReceived, returnPlaced);

  /// Create a copy of MyReturnModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyReturnModelImplCopyWith<_$MyReturnModelImpl> get copyWith =>
      __$$MyReturnModelImplCopyWithImpl<_$MyReturnModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyReturnModelImplToJson(
      this,
    );
  }
}

abstract class _MyReturnModel implements MyReturnModel {
  const factory _MyReturnModel(
      {@JsonKey(name: 'return_received')
      required final ReturnData? returnReceived,
      @JsonKey(name: 'return_placed')
      required final ReturnData? returnPlaced}) = _$MyReturnModelImpl;

  factory _MyReturnModel.fromJson(Map<String, dynamic> json) =
      _$MyReturnModelImpl.fromJson;

  @override
  @JsonKey(name: 'return_received')
  ReturnData? get returnReceived;
  @override
  @JsonKey(name: 'return_placed')
  ReturnData? get returnPlaced;

  /// Create a copy of MyReturnModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyReturnModelImplCopyWith<_$MyReturnModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReturnData _$ReturnDataFromJson(Map<String, dynamic> json) {
  return _ReturnData.fromJson(json);
}

/// @nodoc
mixin _$ReturnData {
// @JsonKey(name: "current_page") required int? currentPage,
  List<ReturnItem>? get data =>
      throw _privateConstructorUsedError; // @JsonKey(name: "first_page_url") required String? firstPageUrl,
// int? from,
// @JsonKey(name: "last_page") required int? lastPage,
// @JsonKey(name: "last_page_url") required String? lastPageUrl,
  List<Link>? get links =>
      throw _privateConstructorUsedError; // @JsonKey(name: "next_page_url") required String? nextPageUrl,
  String? get path => throw _privateConstructorUsedError;

  /// Serializes this ReturnData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReturnData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReturnDataCopyWith<ReturnData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReturnDataCopyWith<$Res> {
  factory $ReturnDataCopyWith(
          ReturnData value, $Res Function(ReturnData) then) =
      _$ReturnDataCopyWithImpl<$Res, ReturnData>;
  @useResult
  $Res call({List<ReturnItem>? data, List<Link>? links, String? path});
}

/// @nodoc
class _$ReturnDataCopyWithImpl<$Res, $Val extends ReturnData>
    implements $ReturnDataCopyWith<$Res> {
  _$ReturnDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReturnData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? links = freezed,
    Object? path = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ReturnItem>?,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as List<Link>?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReturnDataImplCopyWith<$Res>
    implements $ReturnDataCopyWith<$Res> {
  factory _$$ReturnDataImplCopyWith(
          _$ReturnDataImpl value, $Res Function(_$ReturnDataImpl) then) =
      __$$ReturnDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ReturnItem>? data, List<Link>? links, String? path});
}

/// @nodoc
class __$$ReturnDataImplCopyWithImpl<$Res>
    extends _$ReturnDataCopyWithImpl<$Res, _$ReturnDataImpl>
    implements _$$ReturnDataImplCopyWith<$Res> {
  __$$ReturnDataImplCopyWithImpl(
      _$ReturnDataImpl _value, $Res Function(_$ReturnDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReturnData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? links = freezed,
    Object? path = freezed,
  }) {
    return _then(_$ReturnDataImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ReturnItem>?,
      links: freezed == links
          ? _value._links
          : links // ignore: cast_nullable_to_non_nullable
              as List<Link>?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReturnDataImpl implements _ReturnData {
  const _$ReturnDataImpl(
      {required final List<ReturnItem>? data,
      required final List<Link>? links,
      required this.path})
      : _data = data,
        _links = links;

  factory _$ReturnDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReturnDataImplFromJson(json);

// @JsonKey(name: "current_page") required int? currentPage,
  final List<ReturnItem>? _data;
// @JsonKey(name: "current_page") required int? currentPage,
  @override
  List<ReturnItem>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// @JsonKey(name: "first_page_url") required String? firstPageUrl,
// int? from,
// @JsonKey(name: "last_page") required int? lastPage,
// @JsonKey(name: "last_page_url") required String? lastPageUrl,
  final List<Link>? _links;
// @JsonKey(name: "first_page_url") required String? firstPageUrl,
// int? from,
// @JsonKey(name: "last_page") required int? lastPage,
// @JsonKey(name: "last_page_url") required String? lastPageUrl,
  @override
  List<Link>? get links {
    final value = _links;
    if (value == null) return null;
    if (_links is EqualUnmodifiableListView) return _links;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// @JsonKey(name: "next_page_url") required String? nextPageUrl,
  @override
  final String? path;

  @override
  String toString() {
    return 'ReturnData(data: $data, links: $links, path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReturnDataImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality().equals(other._links, _links) &&
            (identical(other.path, path) || other.path == path));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(_links),
      path);

  /// Create a copy of ReturnData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReturnDataImplCopyWith<_$ReturnDataImpl> get copyWith =>
      __$$ReturnDataImplCopyWithImpl<_$ReturnDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReturnDataImplToJson(
      this,
    );
  }
}

abstract class _ReturnData implements ReturnData {
  const factory _ReturnData(
      {required final List<ReturnItem>? data,
      required final List<Link>? links,
      required final String? path}) = _$ReturnDataImpl;

  factory _ReturnData.fromJson(Map<String, dynamic> json) =
      _$ReturnDataImpl.fromJson;

// @JsonKey(name: "current_page") required int? currentPage,
  @override
  List<ReturnItem>?
      get data; // @JsonKey(name: "first_page_url") required String? firstPageUrl,
// int? from,
// @JsonKey(name: "last_page") required int? lastPage,
// @JsonKey(name: "last_page_url") required String? lastPageUrl,
  @override
  List<Link>?
      get links; // @JsonKey(name: "next_page_url") required String? nextPageUrl,
  @override
  String? get path;

  /// Create a copy of ReturnData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReturnDataImplCopyWith<_$ReturnDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReturnItem _$ReturnItemFromJson(Map<String, dynamic> json) {
  return _ReturnItem.fromJson(json);
}

/// @nodoc
mixin _$ReturnItem {
// required String? id,
  @JsonKey(name: "user_id")
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "user_name")
  String? get userName => throw _privateConstructorUsedError;
  @JsonKey(name: "vendor_id")
  String? get vendorId => throw _privateConstructorUsedError;
  @JsonKey(name: "vendor_name")
  String? get vendorName => throw _privateConstructorUsedError;
  @JsonKey(name: "post_id")
  String? get postId => throw _privateConstructorUsedError;
  @JsonKey(name: "post_name")
  String? get postName => throw _privateConstructorUsedError;
  @JsonKey(name: "order_id")
  String? get orderId =>
      throw _privateConstructorUsedError; // required String? qty,
  String? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "product_title")
  String? get productTitle => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_name")
  String? get customerName => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_contact")
  String? get customerContact => throw _privateConstructorUsedError;
  @JsonKey(name: "vendor_contact")
  String? get vendorContact => throw _privateConstructorUsedError;

  /// Serializes this ReturnItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReturnItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReturnItemCopyWith<ReturnItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReturnItemCopyWith<$Res> {
  factory $ReturnItemCopyWith(
          ReturnItem value, $Res Function(ReturnItem) then) =
      _$ReturnItemCopyWithImpl<$Res, ReturnItem>;
  @useResult
  $Res call(
      {@JsonKey(name: "user_id") String? userId,
      @JsonKey(name: "user_name") String? userName,
      @JsonKey(name: "vendor_id") String? vendorId,
      @JsonKey(name: "vendor_name") String? vendorName,
      @JsonKey(name: "post_id") String? postId,
      @JsonKey(name: "post_name") String? postName,
      @JsonKey(name: "order_id") String? orderId,
      String? amount,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "product_title") String? productTitle,
      @JsonKey(name: "customer_name") String? customerName,
      @JsonKey(name: "customer_contact") String? customerContact,
      @JsonKey(name: "vendor_contact") String? vendorContact});
}

/// @nodoc
class _$ReturnItemCopyWithImpl<$Res, $Val extends ReturnItem>
    implements $ReturnItemCopyWith<$Res> {
  _$ReturnItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReturnItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? userName = freezed,
    Object? vendorId = freezed,
    Object? vendorName = freezed,
    Object? postId = freezed,
    Object? postName = freezed,
    Object? orderId = freezed,
    Object? amount = freezed,
    Object? createdAt = freezed,
    Object? productTitle = freezed,
    Object? customerName = freezed,
    Object? customerContact = freezed,
    Object? vendorContact = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorId: freezed == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorName: freezed == vendorName
          ? _value.vendorName
          : vendorName // ignore: cast_nullable_to_non_nullable
              as String?,
      postId: freezed == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String?,
      postName: freezed == postName
          ? _value.postName
          : postName // ignore: cast_nullable_to_non_nullable
              as String?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      productTitle: freezed == productTitle
          ? _value.productTitle
          : productTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      customerContact: freezed == customerContact
          ? _value.customerContact
          : customerContact // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorContact: freezed == vendorContact
          ? _value.vendorContact
          : vendorContact // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReturnItemImplCopyWith<$Res>
    implements $ReturnItemCopyWith<$Res> {
  factory _$$ReturnItemImplCopyWith(
          _$ReturnItemImpl value, $Res Function(_$ReturnItemImpl) then) =
      __$$ReturnItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "user_id") String? userId,
      @JsonKey(name: "user_name") String? userName,
      @JsonKey(name: "vendor_id") String? vendorId,
      @JsonKey(name: "vendor_name") String? vendorName,
      @JsonKey(name: "post_id") String? postId,
      @JsonKey(name: "post_name") String? postName,
      @JsonKey(name: "order_id") String? orderId,
      String? amount,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "product_title") String? productTitle,
      @JsonKey(name: "customer_name") String? customerName,
      @JsonKey(name: "customer_contact") String? customerContact,
      @JsonKey(name: "vendor_contact") String? vendorContact});
}

/// @nodoc
class __$$ReturnItemImplCopyWithImpl<$Res>
    extends _$ReturnItemCopyWithImpl<$Res, _$ReturnItemImpl>
    implements _$$ReturnItemImplCopyWith<$Res> {
  __$$ReturnItemImplCopyWithImpl(
      _$ReturnItemImpl _value, $Res Function(_$ReturnItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReturnItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? userName = freezed,
    Object? vendorId = freezed,
    Object? vendorName = freezed,
    Object? postId = freezed,
    Object? postName = freezed,
    Object? orderId = freezed,
    Object? amount = freezed,
    Object? createdAt = freezed,
    Object? productTitle = freezed,
    Object? customerName = freezed,
    Object? customerContact = freezed,
    Object? vendorContact = freezed,
  }) {
    return _then(_$ReturnItemImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorId: freezed == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorName: freezed == vendorName
          ? _value.vendorName
          : vendorName // ignore: cast_nullable_to_non_nullable
              as String?,
      postId: freezed == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String?,
      postName: freezed == postName
          ? _value.postName
          : postName // ignore: cast_nullable_to_non_nullable
              as String?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      productTitle: freezed == productTitle
          ? _value.productTitle
          : productTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      customerContact: freezed == customerContact
          ? _value.customerContact
          : customerContact // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorContact: freezed == vendorContact
          ? _value.vendorContact
          : vendorContact // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReturnItemImpl implements _ReturnItem {
  const _$ReturnItemImpl(
      {@JsonKey(name: "user_id") required this.userId,
      @JsonKey(name: "user_name") required this.userName,
      @JsonKey(name: "vendor_id") required this.vendorId,
      @JsonKey(name: "vendor_name") required this.vendorName,
      @JsonKey(name: "post_id") required this.postId,
      @JsonKey(name: "post_name") required this.postName,
      @JsonKey(name: "order_id") required this.orderId,
      required this.amount,
      @JsonKey(name: "created_at") required this.createdAt,
      @JsonKey(name: "product_title") required this.productTitle,
      @JsonKey(name: "customer_name") required this.customerName,
      @JsonKey(name: "customer_contact") this.customerContact,
      @JsonKey(name: "vendor_contact") this.vendorContact});

  factory _$ReturnItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReturnItemImplFromJson(json);

// required String? id,
  @override
  @JsonKey(name: "user_id")
  final String? userId;
  @override
  @JsonKey(name: "user_name")
  final String? userName;
  @override
  @JsonKey(name: "vendor_id")
  final String? vendorId;
  @override
  @JsonKey(name: "vendor_name")
  final String? vendorName;
  @override
  @JsonKey(name: "post_id")
  final String? postId;
  @override
  @JsonKey(name: "post_name")
  final String? postName;
  @override
  @JsonKey(name: "order_id")
  final String? orderId;
// required String? qty,
  @override
  final String? amount;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey(name: "product_title")
  final String? productTitle;
  @override
  @JsonKey(name: "customer_name")
  final String? customerName;
  @override
  @JsonKey(name: "customer_contact")
  final String? customerContact;
  @override
  @JsonKey(name: "vendor_contact")
  final String? vendorContact;

  @override
  String toString() {
    return 'ReturnItem(userId: $userId, userName: $userName, vendorId: $vendorId, vendorName: $vendorName, postId: $postId, postName: $postName, orderId: $orderId, amount: $amount, createdAt: $createdAt, productTitle: $productTitle, customerName: $customerName, customerContact: $customerContact, vendorContact: $vendorContact)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReturnItemImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.vendorId, vendorId) ||
                other.vendorId == vendorId) &&
            (identical(other.vendorName, vendorName) ||
                other.vendorName == vendorName) &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.postName, postName) ||
                other.postName == postName) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.productTitle, productTitle) ||
                other.productTitle == productTitle) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.customerContact, customerContact) ||
                other.customerContact == customerContact) &&
            (identical(other.vendorContact, vendorContact) ||
                other.vendorContact == vendorContact));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      userName,
      vendorId,
      vendorName,
      postId,
      postName,
      orderId,
      amount,
      createdAt,
      productTitle,
      customerName,
      customerContact,
      vendorContact);

  /// Create a copy of ReturnItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReturnItemImplCopyWith<_$ReturnItemImpl> get copyWith =>
      __$$ReturnItemImplCopyWithImpl<_$ReturnItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReturnItemImplToJson(
      this,
    );
  }
}

abstract class _ReturnItem implements ReturnItem {
  const factory _ReturnItem(
          {@JsonKey(name: "user_id") required final String? userId,
          @JsonKey(name: "user_name") required final String? userName,
          @JsonKey(name: "vendor_id") required final String? vendorId,
          @JsonKey(name: "vendor_name") required final String? vendorName,
          @JsonKey(name: "post_id") required final String? postId,
          @JsonKey(name: "post_name") required final String? postName,
          @JsonKey(name: "order_id") required final String? orderId,
          required final String? amount,
          @JsonKey(name: "created_at") required final String? createdAt,
          @JsonKey(name: "product_title") required final String? productTitle,
          @JsonKey(name: "customer_name") required final String? customerName,
          @JsonKey(name: "customer_contact") final String? customerContact,
          @JsonKey(name: "vendor_contact") final String? vendorContact}) =
      _$ReturnItemImpl;

  factory _ReturnItem.fromJson(Map<String, dynamic> json) =
      _$ReturnItemImpl.fromJson;

// required String? id,
  @override
  @JsonKey(name: "user_id")
  String? get userId;
  @override
  @JsonKey(name: "user_name")
  String? get userName;
  @override
  @JsonKey(name: "vendor_id")
  String? get vendorId;
  @override
  @JsonKey(name: "vendor_name")
  String? get vendorName;
  @override
  @JsonKey(name: "post_id")
  String? get postId;
  @override
  @JsonKey(name: "post_name")
  String? get postName;
  @override
  @JsonKey(name: "order_id")
  String? get orderId; // required String? qty,
  @override
  String? get amount;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @JsonKey(name: "product_title")
  String? get productTitle;
  @override
  @JsonKey(name: "customer_name")
  String? get customerName;
  @override
  @JsonKey(name: "customer_contact")
  String? get customerContact;
  @override
  @JsonKey(name: "vendor_contact")
  String? get vendorContact;

  /// Create a copy of ReturnItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReturnItemImplCopyWith<_$ReturnItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Link _$LinkFromJson(Map<String, dynamic> json) {
  return _Link.fromJson(json);
}

/// @nodoc
mixin _$Link {
  String? get url => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  bool get active => throw _privateConstructorUsedError;

  /// Serializes this Link to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Link
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LinkCopyWith<Link> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkCopyWith<$Res> {
  factory $LinkCopyWith(Link value, $Res Function(Link) then) =
      _$LinkCopyWithImpl<$Res, Link>;
  @useResult
  $Res call({String? url, String? label, bool active});
}

/// @nodoc
class _$LinkCopyWithImpl<$Res, $Val extends Link>
    implements $LinkCopyWith<$Res> {
  _$LinkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Link
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? label = freezed,
    Object? active = null,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LinkImplCopyWith<$Res> implements $LinkCopyWith<$Res> {
  factory _$$LinkImplCopyWith(
          _$LinkImpl value, $Res Function(_$LinkImpl) then) =
      __$$LinkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? url, String? label, bool active});
}

/// @nodoc
class __$$LinkImplCopyWithImpl<$Res>
    extends _$LinkCopyWithImpl<$Res, _$LinkImpl>
    implements _$$LinkImplCopyWith<$Res> {
  __$$LinkImplCopyWithImpl(_$LinkImpl _value, $Res Function(_$LinkImpl) _then)
      : super(_value, _then);

  /// Create a copy of Link
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? label = freezed,
    Object? active = null,
  }) {
    return _then(_$LinkImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LinkImpl implements _Link {
  const _$LinkImpl({this.url, required this.label, required this.active});

  factory _$LinkImpl.fromJson(Map<String, dynamic> json) =>
      _$$LinkImplFromJson(json);

  @override
  final String? url;
  @override
  final String? label;
  @override
  final bool active;

  @override
  String toString() {
    return 'Link(url: $url, label: $label, active: $active)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LinkImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.active, active) || other.active == active));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, label, active);

  /// Create a copy of Link
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LinkImplCopyWith<_$LinkImpl> get copyWith =>
      __$$LinkImplCopyWithImpl<_$LinkImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LinkImplToJson(
      this,
    );
  }
}

abstract class _Link implements Link {
  const factory _Link(
      {final String? url,
      required final String? label,
      required final bool active}) = _$LinkImpl;

  factory _Link.fromJson(Map<String, dynamic> json) = _$LinkImpl.fromJson;

  @override
  String? get url;
  @override
  String? get label;
  @override
  bool get active;

  /// Create a copy of Link
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LinkImplCopyWith<_$LinkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
