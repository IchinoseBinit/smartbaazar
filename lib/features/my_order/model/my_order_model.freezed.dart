// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderResponse _$OrderResponseFromJson(Map<String, dynamic> json) {
  return _OrderResponse.fromJson(json);
}

/// @nodoc
mixin _$OrderResponse {
  @JsonKey(name: "orders_received")
  OrdersReceived get ordersReceived => throw _privateConstructorUsedError;
  @JsonKey(name: "orders_placed")
  OrdersPlaced get ordersPlaced => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderResponseCopyWith<OrderResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderResponseCopyWith<$Res> {
  factory $OrderResponseCopyWith(
          OrderResponse value, $Res Function(OrderResponse) then) =
      _$OrderResponseCopyWithImpl<$Res, OrderResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "orders_received") OrdersReceived ordersReceived,
      @JsonKey(name: "orders_placed") OrdersPlaced ordersPlaced});

  $OrdersReceivedCopyWith<$Res> get ordersReceived;
  $OrdersPlacedCopyWith<$Res> get ordersPlaced;
}

/// @nodoc
class _$OrderResponseCopyWithImpl<$Res, $Val extends OrderResponse>
    implements $OrderResponseCopyWith<$Res> {
  _$OrderResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ordersReceived = null,
    Object? ordersPlaced = null,
  }) {
    return _then(_value.copyWith(
      ordersReceived: null == ordersReceived
          ? _value.ordersReceived
          : ordersReceived // ignore: cast_nullable_to_non_nullable
              as OrdersReceived,
      ordersPlaced: null == ordersPlaced
          ? _value.ordersPlaced
          : ordersPlaced // ignore: cast_nullable_to_non_nullable
              as OrdersPlaced,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OrdersReceivedCopyWith<$Res> get ordersReceived {
    return $OrdersReceivedCopyWith<$Res>(_value.ordersReceived, (value) {
      return _then(_value.copyWith(ordersReceived: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OrdersPlacedCopyWith<$Res> get ordersPlaced {
    return $OrdersPlacedCopyWith<$Res>(_value.ordersPlaced, (value) {
      return _then(_value.copyWith(ordersPlaced: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderResponseImplCopyWith<$Res>
    implements $OrderResponseCopyWith<$Res> {
  factory _$$OrderResponseImplCopyWith(
          _$OrderResponseImpl value, $Res Function(_$OrderResponseImpl) then) =
      __$$OrderResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "orders_received") OrdersReceived ordersReceived,
      @JsonKey(name: "orders_placed") OrdersPlaced ordersPlaced});

  @override
  $OrdersReceivedCopyWith<$Res> get ordersReceived;
  @override
  $OrdersPlacedCopyWith<$Res> get ordersPlaced;
}

/// @nodoc
class __$$OrderResponseImplCopyWithImpl<$Res>
    extends _$OrderResponseCopyWithImpl<$Res, _$OrderResponseImpl>
    implements _$$OrderResponseImplCopyWith<$Res> {
  __$$OrderResponseImplCopyWithImpl(
      _$OrderResponseImpl _value, $Res Function(_$OrderResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ordersReceived = null,
    Object? ordersPlaced = null,
  }) {
    return _then(_$OrderResponseImpl(
      ordersReceived: null == ordersReceived
          ? _value.ordersReceived
          : ordersReceived // ignore: cast_nullable_to_non_nullable
              as OrdersReceived,
      ordersPlaced: null == ordersPlaced
          ? _value.ordersPlaced
          : ordersPlaced // ignore: cast_nullable_to_non_nullable
              as OrdersPlaced,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderResponseImpl implements _OrderResponse {
  const _$OrderResponseImpl(
      {@JsonKey(name: "orders_received") required this.ordersReceived,
      @JsonKey(name: "orders_placed") required this.ordersPlaced});

  factory _$OrderResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderResponseImplFromJson(json);

  @override
  @JsonKey(name: "orders_received")
  final OrdersReceived ordersReceived;
  @override
  @JsonKey(name: "orders_placed")
  final OrdersPlaced ordersPlaced;

  @override
  String toString() {
    return 'OrderResponse(ordersReceived: $ordersReceived, ordersPlaced: $ordersPlaced)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderResponseImpl &&
            (identical(other.ordersReceived, ordersReceived) ||
                other.ordersReceived == ordersReceived) &&
            (identical(other.ordersPlaced, ordersPlaced) ||
                other.ordersPlaced == ordersPlaced));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ordersReceived, ordersPlaced);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderResponseImplCopyWith<_$OrderResponseImpl> get copyWith =>
      __$$OrderResponseImplCopyWithImpl<_$OrderResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderResponseImplToJson(
      this,
    );
  }
}

abstract class _OrderResponse implements OrderResponse {
  const factory _OrderResponse(
      {@JsonKey(name: "orders_received")
      required final OrdersReceived ordersReceived,
      @JsonKey(name: "orders_placed")
      required final OrdersPlaced ordersPlaced}) = _$OrderResponseImpl;

  factory _OrderResponse.fromJson(Map<String, dynamic> json) =
      _$OrderResponseImpl.fromJson;

  @override
  @JsonKey(name: "orders_received")
  OrdersReceived get ordersReceived;
  @override
  @JsonKey(name: "orders_placed")
  OrdersPlaced get ordersPlaced;
  @override
  @JsonKey(ignore: true)
  _$$OrderResponseImplCopyWith<_$OrderResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrdersPlaced _$OrdersPlacedFromJson(Map<String, dynamic> json) {
  return _OrdersPlaced.fromJson(json);
}

/// @nodoc
mixin _$OrdersPlaced {
  @JsonKey(name: "current_page")
  int? get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<OrdersPlacedDatum> get data => throw _privateConstructorUsedError;
  @JsonKey(name: "first_page_url")
  String? get firstPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "from")
  int? get from => throw _privateConstructorUsedError;
  @JsonKey(name: "last_page")
  int? get lastPage => throw _privateConstructorUsedError;
  @JsonKey(name: "last_page_url")
  String? get lastPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "links")
  List<Link> get links => throw _privateConstructorUsedError;
  @JsonKey(name: "next_page_url")
  String? get nextPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "path")
  String? get path => throw _privateConstructorUsedError;
  @JsonKey(name: "per_page")
  int? get perPage => throw _privateConstructorUsedError;
  @JsonKey(name: "prev_page_url")
  dynamic get prevPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "to")
  int? get to => throw _privateConstructorUsedError;
  @JsonKey(name: "total")
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrdersPlacedCopyWith<OrdersPlaced> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersPlacedCopyWith<$Res> {
  factory $OrdersPlacedCopyWith(
          OrdersPlaced value, $Res Function(OrdersPlaced) then) =
      _$OrdersPlacedCopyWithImpl<$Res, OrdersPlaced>;
  @useResult
  $Res call(
      {@JsonKey(name: "current_page") int? currentPage,
      @JsonKey(name: "data") List<OrdersPlacedDatum> data,
      @JsonKey(name: "first_page_url") String? firstPageUrl,
      @JsonKey(name: "from") int? from,
      @JsonKey(name: "last_page") int? lastPage,
      @JsonKey(name: "last_page_url") String? lastPageUrl,
      @JsonKey(name: "links") List<Link> links,
      @JsonKey(name: "next_page_url") String? nextPageUrl,
      @JsonKey(name: "path") String? path,
      @JsonKey(name: "per_page") int? perPage,
      @JsonKey(name: "prev_page_url") dynamic prevPageUrl,
      @JsonKey(name: "to") int? to,
      @JsonKey(name: "total") int? total});
}

/// @nodoc
class _$OrdersPlacedCopyWithImpl<$Res, $Val extends OrdersPlaced>
    implements $OrdersPlacedCopyWith<$Res> {
  _$OrdersPlacedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? data = null,
    Object? firstPageUrl = freezed,
    Object? from = freezed,
    Object? lastPage = freezed,
    Object? lastPageUrl = freezed,
    Object? links = null,
    Object? nextPageUrl = freezed,
    Object? path = freezed,
    Object? perPage = freezed,
    Object? prevPageUrl = freezed,
    Object? to = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<OrdersPlacedDatum>,
      firstPageUrl: freezed == firstPageUrl
          ? _value.firstPageUrl
          : firstPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPageUrl: freezed == lastPageUrl
          ? _value.lastPageUrl
          : lastPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as List<Link>,
      nextPageUrl: freezed == nextPageUrl
          ? _value.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      prevPageUrl: freezed == prevPageUrl
          ? _value.prevPageUrl
          : prevPageUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrdersPlacedImplCopyWith<$Res>
    implements $OrdersPlacedCopyWith<$Res> {
  factory _$$OrdersPlacedImplCopyWith(
          _$OrdersPlacedImpl value, $Res Function(_$OrdersPlacedImpl) then) =
      __$$OrdersPlacedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "current_page") int? currentPage,
      @JsonKey(name: "data") List<OrdersPlacedDatum> data,
      @JsonKey(name: "first_page_url") String? firstPageUrl,
      @JsonKey(name: "from") int? from,
      @JsonKey(name: "last_page") int? lastPage,
      @JsonKey(name: "last_page_url") String? lastPageUrl,
      @JsonKey(name: "links") List<Link> links,
      @JsonKey(name: "next_page_url") String? nextPageUrl,
      @JsonKey(name: "path") String? path,
      @JsonKey(name: "per_page") int? perPage,
      @JsonKey(name: "prev_page_url") dynamic prevPageUrl,
      @JsonKey(name: "to") int? to,
      @JsonKey(name: "total") int? total});
}

/// @nodoc
class __$$OrdersPlacedImplCopyWithImpl<$Res>
    extends _$OrdersPlacedCopyWithImpl<$Res, _$OrdersPlacedImpl>
    implements _$$OrdersPlacedImplCopyWith<$Res> {
  __$$OrdersPlacedImplCopyWithImpl(
      _$OrdersPlacedImpl _value, $Res Function(_$OrdersPlacedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? data = null,
    Object? firstPageUrl = freezed,
    Object? from = freezed,
    Object? lastPage = freezed,
    Object? lastPageUrl = freezed,
    Object? links = null,
    Object? nextPageUrl = freezed,
    Object? path = freezed,
    Object? perPage = freezed,
    Object? prevPageUrl = freezed,
    Object? to = freezed,
    Object? total = freezed,
  }) {
    return _then(_$OrdersPlacedImpl(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<OrdersPlacedDatum>,
      firstPageUrl: freezed == firstPageUrl
          ? _value.firstPageUrl
          : firstPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPageUrl: freezed == lastPageUrl
          ? _value.lastPageUrl
          : lastPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      links: null == links
          ? _value._links
          : links // ignore: cast_nullable_to_non_nullable
              as List<Link>,
      nextPageUrl: freezed == nextPageUrl
          ? _value.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      prevPageUrl: freezed == prevPageUrl
          ? _value.prevPageUrl
          : prevPageUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrdersPlacedImpl implements _OrdersPlaced {
  const _$OrdersPlacedImpl(
      {@JsonKey(name: "current_page") required this.currentPage,
      @JsonKey(name: "data") required final List<OrdersPlacedDatum> data,
      @JsonKey(name: "first_page_url") required this.firstPageUrl,
      @JsonKey(name: "from") required this.from,
      @JsonKey(name: "last_page") required this.lastPage,
      @JsonKey(name: "last_page_url") required this.lastPageUrl,
      @JsonKey(name: "links") required final List<Link> links,
      @JsonKey(name: "next_page_url") required this.nextPageUrl,
      @JsonKey(name: "path") required this.path,
      @JsonKey(name: "per_page") required this.perPage,
      @JsonKey(name: "prev_page_url") required this.prevPageUrl,
      @JsonKey(name: "to") required this.to,
      @JsonKey(name: "total") required this.total})
      : _data = data,
        _links = links;

  factory _$OrdersPlacedImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrdersPlacedImplFromJson(json);

  @override
  @JsonKey(name: "current_page")
  final int? currentPage;
  final List<OrdersPlacedDatum> _data;
  @override
  @JsonKey(name: "data")
  List<OrdersPlacedDatum> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey(name: "first_page_url")
  final String? firstPageUrl;
  @override
  @JsonKey(name: "from")
  final int? from;
  @override
  @JsonKey(name: "last_page")
  final int? lastPage;
  @override
  @JsonKey(name: "last_page_url")
  final String? lastPageUrl;
  final List<Link> _links;
  @override
  @JsonKey(name: "links")
  List<Link> get links {
    if (_links is EqualUnmodifiableListView) return _links;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_links);
  }

  @override
  @JsonKey(name: "next_page_url")
  final String? nextPageUrl;
  @override
  @JsonKey(name: "path")
  final String? path;
  @override
  @JsonKey(name: "per_page")
  final int? perPage;
  @override
  @JsonKey(name: "prev_page_url")
  final dynamic prevPageUrl;
  @override
  @JsonKey(name: "to")
  final int? to;
  @override
  @JsonKey(name: "total")
  final int? total;

  @override
  String toString() {
    return 'OrdersPlaced(currentPage: $currentPage, data: $data, firstPageUrl: $firstPageUrl, from: $from, lastPage: $lastPage, lastPageUrl: $lastPageUrl, links: $links, nextPageUrl: $nextPageUrl, path: $path, perPage: $perPage, prevPageUrl: $prevPageUrl, to: $to, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrdersPlacedImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.firstPageUrl, firstPageUrl) ||
                other.firstPageUrl == firstPageUrl) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.lastPageUrl, lastPageUrl) ||
                other.lastPageUrl == lastPageUrl) &&
            const DeepCollectionEquality().equals(other._links, _links) &&
            (identical(other.nextPageUrl, nextPageUrl) ||
                other.nextPageUrl == nextPageUrl) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            const DeepCollectionEquality()
                .equals(other.prevPageUrl, prevPageUrl) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentPage,
      const DeepCollectionEquality().hash(_data),
      firstPageUrl,
      from,
      lastPage,
      lastPageUrl,
      const DeepCollectionEquality().hash(_links),
      nextPageUrl,
      path,
      perPage,
      const DeepCollectionEquality().hash(prevPageUrl),
      to,
      total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrdersPlacedImplCopyWith<_$OrdersPlacedImpl> get copyWith =>
      __$$OrdersPlacedImplCopyWithImpl<_$OrdersPlacedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrdersPlacedImplToJson(
      this,
    );
  }
}

abstract class _OrdersPlaced implements OrdersPlaced {
  const factory _OrdersPlaced(
      {@JsonKey(name: "current_page") required final int? currentPage,
      @JsonKey(name: "data") required final List<OrdersPlacedDatum> data,
      @JsonKey(name: "first_page_url") required final String? firstPageUrl,
      @JsonKey(name: "from") required final int? from,
      @JsonKey(name: "last_page") required final int? lastPage,
      @JsonKey(name: "last_page_url") required final String? lastPageUrl,
      @JsonKey(name: "links") required final List<Link> links,
      @JsonKey(name: "next_page_url") required final String? nextPageUrl,
      @JsonKey(name: "path") required final String? path,
      @JsonKey(name: "per_page") required final int? perPage,
      @JsonKey(name: "prev_page_url") required final dynamic prevPageUrl,
      @JsonKey(name: "to") required final int? to,
      @JsonKey(name: "total") required final int? total}) = _$OrdersPlacedImpl;

  factory _OrdersPlaced.fromJson(Map<String, dynamic> json) =
      _$OrdersPlacedImpl.fromJson;

  @override
  @JsonKey(name: "current_page")
  int? get currentPage;
  @override
  @JsonKey(name: "data")
  List<OrdersPlacedDatum> get data;
  @override
  @JsonKey(name: "first_page_url")
  String? get firstPageUrl;
  @override
  @JsonKey(name: "from")
  int? get from;
  @override
  @JsonKey(name: "last_page")
  int? get lastPage;
  @override
  @JsonKey(name: "last_page_url")
  String? get lastPageUrl;
  @override
  @JsonKey(name: "links")
  List<Link> get links;
  @override
  @JsonKey(name: "next_page_url")
  String? get nextPageUrl;
  @override
  @JsonKey(name: "path")
  String? get path;
  @override
  @JsonKey(name: "per_page")
  int? get perPage;
  @override
  @JsonKey(name: "prev_page_url")
  dynamic get prevPageUrl;
  @override
  @JsonKey(name: "to")
  int? get to;
  @override
  @JsonKey(name: "total")
  int? get total;
  @override
  @JsonKey(ignore: true)
  _$$OrdersPlacedImplCopyWith<_$OrdersPlacedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrdersPlacedDatum _$OrdersPlacedDatumFromJson(Map<String, dynamic> json) {
  return _OrdersPlacedDatum.fromJson(json);
}

/// @nodoc
mixin _$OrdersPlacedDatum {
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "vendor_id")
  String? get vendorId => throw _privateConstructorUsedError;
  @JsonKey(name: "post_id")
  String? get postId => throw _privateConstructorUsedError;
  @JsonKey(name: "order_id")
  String? get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: "qty")
  String? get qty => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  String? get price => throw _privateConstructorUsedError;
  @JsonKey(name: "shipping_charge")
  String? get shippingCharge => throw _privateConstructorUsedError;
  @JsonKey(name: "total")
  String? get total => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_method")
  String? get paymentMethod => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_proof")
  dynamic get paymentProof => throw _privateConstructorUsedError;
  @JsonKey(name: "delivery_method")
  String? get deliveryMethod => throw _privateConstructorUsedError;
  @JsonKey(name: "delivery_address")
  String? get deliveryAddress => throw _privateConstructorUsedError;
  @JsonKey(name: "coupon")
  String? get coupon => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  dynamic get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "post_title")
  String? get postTitle => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_name")
  String? get customerName => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_contact")
  String? get customerContact => throw _privateConstructorUsedError;
  @JsonKey(name: "vendor_name")
  String? get vendorName => throw _privateConstructorUsedError;
  @JsonKey(name: "vendor_contact")
  String? get vendorContact => throw _privateConstructorUsedError;
  @JsonKey(name: "post_photo_url")
  String? get postPhotoUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrdersPlacedDatumCopyWith<OrdersPlacedDatum> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersPlacedDatumCopyWith<$Res> {
  factory $OrdersPlacedDatumCopyWith(
          OrdersPlacedDatum value, $Res Function(OrdersPlacedDatum) then) =
      _$OrdersPlacedDatumCopyWithImpl<$Res, OrdersPlacedDatum>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "user_id") String? userId,
      @JsonKey(name: "vendor_id") String? vendorId,
      @JsonKey(name: "post_id") String? postId,
      @JsonKey(name: "order_id") String? orderId,
      @JsonKey(name: "qty") String? qty,
      @JsonKey(name: "price") String? price,
      @JsonKey(name: "shipping_charge") String? shippingCharge,
      @JsonKey(name: "total") String? total,
      @JsonKey(name: "payment_method") String? paymentMethod,
      @JsonKey(name: "payment_proof") dynamic paymentProof,
      @JsonKey(name: "delivery_method") String? deliveryMethod,
      @JsonKey(name: "delivery_address") String? deliveryAddress,
      @JsonKey(name: "coupon") String? coupon,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "created_at") DateTime createdAt,
      @JsonKey(name: "updated_at") dynamic updatedAt,
      @JsonKey(name: "post_title") String? postTitle,
      @JsonKey(name: "customer_name") String? customerName,
      @JsonKey(name: "customer_contact") String? customerContact,
      @JsonKey(name: "vendor_name") String? vendorName,
      @JsonKey(name: "vendor_contact") String? vendorContact,
      @JsonKey(name: "post_photo_url") String? postPhotoUrl});
}

/// @nodoc
class _$OrdersPlacedDatumCopyWithImpl<$Res, $Val extends OrdersPlacedDatum>
    implements $OrdersPlacedDatumCopyWith<$Res> {
  _$OrdersPlacedDatumCopyWithImpl(this._value, this._then);

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
    Object? orderId = freezed,
    Object? qty = freezed,
    Object? price = freezed,
    Object? shippingCharge = freezed,
    Object? total = freezed,
    Object? paymentMethod = freezed,
    Object? paymentProof = freezed,
    Object? deliveryMethod = freezed,
    Object? deliveryAddress = freezed,
    Object? coupon = freezed,
    Object? status = freezed,
    Object? createdAt = null,
    Object? updatedAt = freezed,
    Object? postTitle = freezed,
    Object? customerName = freezed,
    Object? customerContact = freezed,
    Object? vendorName = freezed,
    Object? vendorContact = freezed,
    Object? postPhotoUrl = freezed,
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
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      qty: freezed == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingCharge: freezed == shippingCharge
          ? _value.shippingCharge
          : shippingCharge // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentProof: freezed == paymentProof
          ? _value.paymentProof
          : paymentProof // ignore: cast_nullable_to_non_nullable
              as dynamic,
      deliveryMethod: freezed == deliveryMethod
          ? _value.deliveryMethod
          : deliveryMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryAddress: freezed == deliveryAddress
          ? _value.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      coupon: freezed == coupon
          ? _value.coupon
          : coupon // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      postTitle: freezed == postTitle
          ? _value.postTitle
          : postTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      customerContact: freezed == customerContact
          ? _value.customerContact
          : customerContact // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorName: freezed == vendorName
          ? _value.vendorName
          : vendorName // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorContact: freezed == vendorContact
          ? _value.vendorContact
          : vendorContact // ignore: cast_nullable_to_non_nullable
              as String?,
      postPhotoUrl: freezed == postPhotoUrl
          ? _value.postPhotoUrl
          : postPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrdersPlacedDatumImplCopyWith<$Res>
    implements $OrdersPlacedDatumCopyWith<$Res> {
  factory _$$OrdersPlacedDatumImplCopyWith(_$OrdersPlacedDatumImpl value,
          $Res Function(_$OrdersPlacedDatumImpl) then) =
      __$$OrdersPlacedDatumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "user_id") String? userId,
      @JsonKey(name: "vendor_id") String? vendorId,
      @JsonKey(name: "post_id") String? postId,
      @JsonKey(name: "order_id") String? orderId,
      @JsonKey(name: "qty") String? qty,
      @JsonKey(name: "price") String? price,
      @JsonKey(name: "shipping_charge") String? shippingCharge,
      @JsonKey(name: "total") String? total,
      @JsonKey(name: "payment_method") String? paymentMethod,
      @JsonKey(name: "payment_proof") dynamic paymentProof,
      @JsonKey(name: "delivery_method") String? deliveryMethod,
      @JsonKey(name: "delivery_address") String? deliveryAddress,
      @JsonKey(name: "coupon") String? coupon,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "created_at") DateTime createdAt,
      @JsonKey(name: "updated_at") dynamic updatedAt,
      @JsonKey(name: "post_title") String? postTitle,
      @JsonKey(name: "customer_name") String? customerName,
      @JsonKey(name: "customer_contact") String? customerContact,
      @JsonKey(name: "vendor_name") String? vendorName,
      @JsonKey(name: "vendor_contact") String? vendorContact,
      @JsonKey(name: "post_photo_url") String? postPhotoUrl});
}

/// @nodoc
class __$$OrdersPlacedDatumImplCopyWithImpl<$Res>
    extends _$OrdersPlacedDatumCopyWithImpl<$Res, _$OrdersPlacedDatumImpl>
    implements _$$OrdersPlacedDatumImplCopyWith<$Res> {
  __$$OrdersPlacedDatumImplCopyWithImpl(_$OrdersPlacedDatumImpl _value,
      $Res Function(_$OrdersPlacedDatumImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? vendorId = freezed,
    Object? postId = freezed,
    Object? orderId = freezed,
    Object? qty = freezed,
    Object? price = freezed,
    Object? shippingCharge = freezed,
    Object? total = freezed,
    Object? paymentMethod = freezed,
    Object? paymentProof = freezed,
    Object? deliveryMethod = freezed,
    Object? deliveryAddress = freezed,
    Object? coupon = freezed,
    Object? status = freezed,
    Object? createdAt = null,
    Object? updatedAt = freezed,
    Object? postTitle = freezed,
    Object? customerName = freezed,
    Object? customerContact = freezed,
    Object? vendorName = freezed,
    Object? vendorContact = freezed,
    Object? postPhotoUrl = freezed,
  }) {
    return _then(_$OrdersPlacedDatumImpl(
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
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      qty: freezed == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingCharge: freezed == shippingCharge
          ? _value.shippingCharge
          : shippingCharge // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentProof: freezed == paymentProof
          ? _value.paymentProof
          : paymentProof // ignore: cast_nullable_to_non_nullable
              as dynamic,
      deliveryMethod: freezed == deliveryMethod
          ? _value.deliveryMethod
          : deliveryMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryAddress: freezed == deliveryAddress
          ? _value.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      coupon: freezed == coupon
          ? _value.coupon
          : coupon // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      postTitle: freezed == postTitle
          ? _value.postTitle
          : postTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      customerContact: freezed == customerContact
          ? _value.customerContact
          : customerContact // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorName: freezed == vendorName
          ? _value.vendorName
          : vendorName // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorContact: freezed == vendorContact
          ? _value.vendorContact
          : vendorContact // ignore: cast_nullable_to_non_nullable
              as String?,
      postPhotoUrl: freezed == postPhotoUrl
          ? _value.postPhotoUrl
          : postPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrdersPlacedDatumImpl implements _OrdersPlacedDatum {
  const _$OrdersPlacedDatumImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "user_id") required this.userId,
      @JsonKey(name: "vendor_id") required this.vendorId,
      @JsonKey(name: "post_id") required this.postId,
      @JsonKey(name: "order_id") this.orderId,
      @JsonKey(name: "qty") required this.qty,
      @JsonKey(name: "price") required this.price,
      @JsonKey(name: "shipping_charge") required this.shippingCharge,
      @JsonKey(name: "total") required this.total,
      @JsonKey(name: "payment_method") required this.paymentMethod,
      @JsonKey(name: "payment_proof") this.paymentProof,
      @JsonKey(name: "delivery_method") this.deliveryMethod,
      @JsonKey(name: "delivery_address") this.deliveryAddress,
      @JsonKey(name: "coupon") this.coupon,
      @JsonKey(name: "status") required this.status,
      @JsonKey(name: "created_at") required this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt,
      @JsonKey(name: "post_title") required this.postTitle,
      @JsonKey(name: "customer_name") required this.customerName,
      @JsonKey(name: "customer_contact") required this.customerContact,
      @JsonKey(name: "vendor_name") required this.vendorName,
      @JsonKey(name: "vendor_contact") required this.vendorContact,
      @JsonKey(name: "post_photo_url") required this.postPhotoUrl});

  factory _$OrdersPlacedDatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrdersPlacedDatumImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "user_id")
  final String? userId;
  @override
  @JsonKey(name: "vendor_id")
  final String? vendorId;
  @override
  @JsonKey(name: "post_id")
  final String? postId;
  @override
  @JsonKey(name: "order_id")
  final String? orderId;
  @override
  @JsonKey(name: "qty")
  final String? qty;
  @override
  @JsonKey(name: "price")
  final String? price;
  @override
  @JsonKey(name: "shipping_charge")
  final String? shippingCharge;
  @override
  @JsonKey(name: "total")
  final String? total;
  @override
  @JsonKey(name: "payment_method")
  final String? paymentMethod;
  @override
  @JsonKey(name: "payment_proof")
  final dynamic paymentProof;
  @override
  @JsonKey(name: "delivery_method")
  final String? deliveryMethod;
  @override
  @JsonKey(name: "delivery_address")
  final String? deliveryAddress;
  @override
  @JsonKey(name: "coupon")
  final String? coupon;
  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "created_at")
  final DateTime createdAt;
  @override
  @JsonKey(name: "updated_at")
  final dynamic updatedAt;
  @override
  @JsonKey(name: "post_title")
  final String? postTitle;
  @override
  @JsonKey(name: "customer_name")
  final String? customerName;
  @override
  @JsonKey(name: "customer_contact")
  final String? customerContact;
  @override
  @JsonKey(name: "vendor_name")
  final String? vendorName;
  @override
  @JsonKey(name: "vendor_contact")
  final String? vendorContact;
  @override
  @JsonKey(name: "post_photo_url")
  final String? postPhotoUrl;

  @override
  String toString() {
    return 'OrdersPlacedDatum(id: $id, userId: $userId, vendorId: $vendorId, postId: $postId, orderId: $orderId, qty: $qty, price: $price, shippingCharge: $shippingCharge, total: $total, paymentMethod: $paymentMethod, paymentProof: $paymentProof, deliveryMethod: $deliveryMethod, deliveryAddress: $deliveryAddress, coupon: $coupon, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, postTitle: $postTitle, customerName: $customerName, customerContact: $customerContact, vendorName: $vendorName, vendorContact: $vendorContact, postPhotoUrl: $postPhotoUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrdersPlacedDatumImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.vendorId, vendorId) ||
                other.vendorId == vendorId) &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.qty, qty) || other.qty == qty) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.shippingCharge, shippingCharge) ||
                other.shippingCharge == shippingCharge) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            const DeepCollectionEquality()
                .equals(other.paymentProof, paymentProof) &&
            (identical(other.deliveryMethod, deliveryMethod) ||
                other.deliveryMethod == deliveryMethod) &&
            (identical(other.deliveryAddress, deliveryAddress) ||
                other.deliveryAddress == deliveryAddress) &&
            (identical(other.coupon, coupon) || other.coupon == coupon) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            (identical(other.postTitle, postTitle) ||
                other.postTitle == postTitle) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.customerContact, customerContact) ||
                other.customerContact == customerContact) &&
            (identical(other.vendorName, vendorName) ||
                other.vendorName == vendorName) &&
            (identical(other.vendorContact, vendorContact) ||
                other.vendorContact == vendorContact) &&
            (identical(other.postPhotoUrl, postPhotoUrl) ||
                other.postPhotoUrl == postPhotoUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        userId,
        vendorId,
        postId,
        orderId,
        qty,
        price,
        shippingCharge,
        total,
        paymentMethod,
        const DeepCollectionEquality().hash(paymentProof),
        deliveryMethod,
        deliveryAddress,
        coupon,
        status,
        createdAt,
        const DeepCollectionEquality().hash(updatedAt),
        postTitle,
        customerName,
        customerContact,
        vendorName,
        vendorContact,
        postPhotoUrl
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrdersPlacedDatumImplCopyWith<_$OrdersPlacedDatumImpl> get copyWith =>
      __$$OrdersPlacedDatumImplCopyWithImpl<_$OrdersPlacedDatumImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrdersPlacedDatumImplToJson(
      this,
    );
  }
}

abstract class _OrdersPlacedDatum implements OrdersPlacedDatum {
  const factory _OrdersPlacedDatum(
      {@JsonKey(name: "id") required final String? id,
      @JsonKey(name: "user_id") required final String? userId,
      @JsonKey(name: "vendor_id") required final String? vendorId,
      @JsonKey(name: "post_id") required final String? postId,
      @JsonKey(name: "order_id") final String? orderId,
      @JsonKey(name: "qty") required final String? qty,
      @JsonKey(name: "price") required final String? price,
      @JsonKey(name: "shipping_charge") required final String? shippingCharge,
      @JsonKey(name: "total") required final String? total,
      @JsonKey(name: "payment_method") required final String? paymentMethod,
      @JsonKey(name: "payment_proof") final dynamic paymentProof,
      @JsonKey(name: "delivery_method") final String? deliveryMethod,
      @JsonKey(name: "delivery_address") final String? deliveryAddress,
      @JsonKey(name: "coupon") final String? coupon,
      @JsonKey(name: "status") required final String? status,
      @JsonKey(name: "created_at") required final DateTime createdAt,
      @JsonKey(name: "updated_at") final dynamic updatedAt,
      @JsonKey(name: "post_title") required final String? postTitle,
      @JsonKey(name: "customer_name") required final String? customerName,
      @JsonKey(name: "customer_contact") required final String? customerContact,
      @JsonKey(name: "vendor_name") required final String? vendorName,
      @JsonKey(name: "vendor_contact") required final String? vendorContact,
      @JsonKey(name: "post_photo_url")
      required final String? postPhotoUrl}) = _$OrdersPlacedDatumImpl;

  factory _OrdersPlacedDatum.fromJson(Map<String, dynamic> json) =
      _$OrdersPlacedDatumImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(name: "user_id")
  String? get userId;
  @override
  @JsonKey(name: "vendor_id")
  String? get vendorId;
  @override
  @JsonKey(name: "post_id")
  String? get postId;
  @override
  @JsonKey(name: "order_id")
  String? get orderId;
  @override
  @JsonKey(name: "qty")
  String? get qty;
  @override
  @JsonKey(name: "price")
  String? get price;
  @override
  @JsonKey(name: "shipping_charge")
  String? get shippingCharge;
  @override
  @JsonKey(name: "total")
  String? get total;
  @override
  @JsonKey(name: "payment_method")
  String? get paymentMethod;
  @override
  @JsonKey(name: "payment_proof")
  dynamic get paymentProof;
  @override
  @JsonKey(name: "delivery_method")
  String? get deliveryMethod;
  @override
  @JsonKey(name: "delivery_address")
  String? get deliveryAddress;
  @override
  @JsonKey(name: "coupon")
  String? get coupon;
  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "created_at")
  DateTime get createdAt;
  @override
  @JsonKey(name: "updated_at")
  dynamic get updatedAt;
  @override
  @JsonKey(name: "post_title")
  String? get postTitle;
  @override
  @JsonKey(name: "customer_name")
  String? get customerName;
  @override
  @JsonKey(name: "customer_contact")
  String? get customerContact;
  @override
  @JsonKey(name: "vendor_name")
  String? get vendorName;
  @override
  @JsonKey(name: "vendor_contact")
  String? get vendorContact;
  @override
  @JsonKey(name: "post_photo_url")
  String? get postPhotoUrl;
  @override
  @JsonKey(ignore: true)
  _$$OrdersPlacedDatumImplCopyWith<_$OrdersPlacedDatumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Link _$LinkFromJson(Map<String, dynamic> json) {
  return _Link.fromJson(json);
}

/// @nodoc
mixin _$Link {
  @JsonKey(name: "url")
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: "label")
  String get label => throw _privateConstructorUsedError;
  @JsonKey(name: "active")
  bool get active => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinkCopyWith<Link> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkCopyWith<$Res> {
  factory $LinkCopyWith(Link value, $Res Function(Link) then) =
      _$LinkCopyWithImpl<$Res, Link>;
  @useResult
  $Res call(
      {@JsonKey(name: "url") String? url,
      @JsonKey(name: "label") String label,
      @JsonKey(name: "active") bool active});
}

/// @nodoc
class _$LinkCopyWithImpl<$Res, $Val extends Link>
    implements $LinkCopyWith<$Res> {
  _$LinkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? label = null,
    Object? active = null,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
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
  $Res call(
      {@JsonKey(name: "url") String? url,
      @JsonKey(name: "label") String label,
      @JsonKey(name: "active") bool active});
}

/// @nodoc
class __$$LinkImplCopyWithImpl<$Res>
    extends _$LinkCopyWithImpl<$Res, _$LinkImpl>
    implements _$$LinkImplCopyWith<$Res> {
  __$$LinkImplCopyWithImpl(_$LinkImpl _value, $Res Function(_$LinkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? label = null,
    Object? active = null,
  }) {
    return _then(_$LinkImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
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
  const _$LinkImpl(
      {@JsonKey(name: "url") this.url,
      @JsonKey(name: "label") required this.label,
      @JsonKey(name: "active") required this.active});

  factory _$LinkImpl.fromJson(Map<String, dynamic> json) =>
      _$$LinkImplFromJson(json);

  @override
  @JsonKey(name: "url")
  final String? url;
  @override
  @JsonKey(name: "label")
  final String label;
  @override
  @JsonKey(name: "active")
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, label, active);

  @JsonKey(ignore: true)
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
      {@JsonKey(name: "url") final String? url,
      @JsonKey(name: "label") required final String label,
      @JsonKey(name: "active") required final bool active}) = _$LinkImpl;

  factory _Link.fromJson(Map<String, dynamic> json) = _$LinkImpl.fromJson;

  @override
  @JsonKey(name: "url")
  String? get url;
  @override
  @JsonKey(name: "label")
  String get label;
  @override
  @JsonKey(name: "active")
  bool get active;
  @override
  @JsonKey(ignore: true)
  _$$LinkImplCopyWith<_$LinkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrdersReceived _$OrdersReceivedFromJson(Map<String, dynamic> json) {
  return _OrdersReceived.fromJson(json);
}

/// @nodoc
mixin _$OrdersReceived {
  @JsonKey(name: "current_page")
  int? get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<OrdersReceivedDatum> get data => throw _privateConstructorUsedError;
  @JsonKey(name: "first_page_url")
  String? get firstPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "from")
  int? get from => throw _privateConstructorUsedError;
  @JsonKey(name: "last_page")
  int? get lastPage => throw _privateConstructorUsedError;
  @JsonKey(name: "last_page_url")
  String? get lastPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "links")
  List<Link> get links => throw _privateConstructorUsedError;
  @JsonKey(name: "next_page_url")
  String? get nextPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "path")
  String? get path => throw _privateConstructorUsedError;
  @JsonKey(name: "per_page")
  int? get perPage => throw _privateConstructorUsedError;
  @JsonKey(name: "prev_page_url")
  dynamic get prevPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "to")
  int? get to => throw _privateConstructorUsedError;
  @JsonKey(name: "total")
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrdersReceivedCopyWith<OrdersReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersReceivedCopyWith<$Res> {
  factory $OrdersReceivedCopyWith(
          OrdersReceived value, $Res Function(OrdersReceived) then) =
      _$OrdersReceivedCopyWithImpl<$Res, OrdersReceived>;
  @useResult
  $Res call(
      {@JsonKey(name: "current_page") int? currentPage,
      @JsonKey(name: "data") List<OrdersReceivedDatum> data,
      @JsonKey(name: "first_page_url") String? firstPageUrl,
      @JsonKey(name: "from") int? from,
      @JsonKey(name: "last_page") int? lastPage,
      @JsonKey(name: "last_page_url") String? lastPageUrl,
      @JsonKey(name: "links") List<Link> links,
      @JsonKey(name: "next_page_url") String? nextPageUrl,
      @JsonKey(name: "path") String? path,
      @JsonKey(name: "per_page") int? perPage,
      @JsonKey(name: "prev_page_url") dynamic prevPageUrl,
      @JsonKey(name: "to") int? to,
      @JsonKey(name: "total") int? total});
}

/// @nodoc
class _$OrdersReceivedCopyWithImpl<$Res, $Val extends OrdersReceived>
    implements $OrdersReceivedCopyWith<$Res> {
  _$OrdersReceivedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? data = null,
    Object? firstPageUrl = freezed,
    Object? from = freezed,
    Object? lastPage = freezed,
    Object? lastPageUrl = freezed,
    Object? links = null,
    Object? nextPageUrl = freezed,
    Object? path = freezed,
    Object? perPage = freezed,
    Object? prevPageUrl = freezed,
    Object? to = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<OrdersReceivedDatum>,
      firstPageUrl: freezed == firstPageUrl
          ? _value.firstPageUrl
          : firstPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPageUrl: freezed == lastPageUrl
          ? _value.lastPageUrl
          : lastPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as List<Link>,
      nextPageUrl: freezed == nextPageUrl
          ? _value.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      prevPageUrl: freezed == prevPageUrl
          ? _value.prevPageUrl
          : prevPageUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrdersReceivedImplCopyWith<$Res>
    implements $OrdersReceivedCopyWith<$Res> {
  factory _$$OrdersReceivedImplCopyWith(_$OrdersReceivedImpl value,
          $Res Function(_$OrdersReceivedImpl) then) =
      __$$OrdersReceivedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "current_page") int? currentPage,
      @JsonKey(name: "data") List<OrdersReceivedDatum> data,
      @JsonKey(name: "first_page_url") String? firstPageUrl,
      @JsonKey(name: "from") int? from,
      @JsonKey(name: "last_page") int? lastPage,
      @JsonKey(name: "last_page_url") String? lastPageUrl,
      @JsonKey(name: "links") List<Link> links,
      @JsonKey(name: "next_page_url") String? nextPageUrl,
      @JsonKey(name: "path") String? path,
      @JsonKey(name: "per_page") int? perPage,
      @JsonKey(name: "prev_page_url") dynamic prevPageUrl,
      @JsonKey(name: "to") int? to,
      @JsonKey(name: "total") int? total});
}

/// @nodoc
class __$$OrdersReceivedImplCopyWithImpl<$Res>
    extends _$OrdersReceivedCopyWithImpl<$Res, _$OrdersReceivedImpl>
    implements _$$OrdersReceivedImplCopyWith<$Res> {
  __$$OrdersReceivedImplCopyWithImpl(
      _$OrdersReceivedImpl _value, $Res Function(_$OrdersReceivedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? data = null,
    Object? firstPageUrl = freezed,
    Object? from = freezed,
    Object? lastPage = freezed,
    Object? lastPageUrl = freezed,
    Object? links = null,
    Object? nextPageUrl = freezed,
    Object? path = freezed,
    Object? perPage = freezed,
    Object? prevPageUrl = freezed,
    Object? to = freezed,
    Object? total = freezed,
  }) {
    return _then(_$OrdersReceivedImpl(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<OrdersReceivedDatum>,
      firstPageUrl: freezed == firstPageUrl
          ? _value.firstPageUrl
          : firstPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPageUrl: freezed == lastPageUrl
          ? _value.lastPageUrl
          : lastPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      links: null == links
          ? _value._links
          : links // ignore: cast_nullable_to_non_nullable
              as List<Link>,
      nextPageUrl: freezed == nextPageUrl
          ? _value.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      prevPageUrl: freezed == prevPageUrl
          ? _value.prevPageUrl
          : prevPageUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrdersReceivedImpl implements _OrdersReceived {
  const _$OrdersReceivedImpl(
      {@JsonKey(name: "current_page") required this.currentPage,
      @JsonKey(name: "data") required final List<OrdersReceivedDatum> data,
      @JsonKey(name: "first_page_url") required this.firstPageUrl,
      @JsonKey(name: "from") required this.from,
      @JsonKey(name: "last_page") required this.lastPage,
      @JsonKey(name: "last_page_url") required this.lastPageUrl,
      @JsonKey(name: "links") required final List<Link> links,
      @JsonKey(name: "next_page_url") required this.nextPageUrl,
      @JsonKey(name: "path") required this.path,
      @JsonKey(name: "per_page") required this.perPage,
      @JsonKey(name: "prev_page_url") this.prevPageUrl,
      @JsonKey(name: "to") required this.to,
      @JsonKey(name: "total") required this.total})
      : _data = data,
        _links = links;

  factory _$OrdersReceivedImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrdersReceivedImplFromJson(json);

  @override
  @JsonKey(name: "current_page")
  final int? currentPage;
  final List<OrdersReceivedDatum> _data;
  @override
  @JsonKey(name: "data")
  List<OrdersReceivedDatum> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey(name: "first_page_url")
  final String? firstPageUrl;
  @override
  @JsonKey(name: "from")
  final int? from;
  @override
  @JsonKey(name: "last_page")
  final int? lastPage;
  @override
  @JsonKey(name: "last_page_url")
  final String? lastPageUrl;
  final List<Link> _links;
  @override
  @JsonKey(name: "links")
  List<Link> get links {
    if (_links is EqualUnmodifiableListView) return _links;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_links);
  }

  @override
  @JsonKey(name: "next_page_url")
  final String? nextPageUrl;
  @override
  @JsonKey(name: "path")
  final String? path;
  @override
  @JsonKey(name: "per_page")
  final int? perPage;
  @override
  @JsonKey(name: "prev_page_url")
  final dynamic prevPageUrl;
  @override
  @JsonKey(name: "to")
  final int? to;
  @override
  @JsonKey(name: "total")
  final int? total;

  @override
  String toString() {
    return 'OrdersReceived(currentPage: $currentPage, data: $data, firstPageUrl: $firstPageUrl, from: $from, lastPage: $lastPage, lastPageUrl: $lastPageUrl, links: $links, nextPageUrl: $nextPageUrl, path: $path, perPage: $perPage, prevPageUrl: $prevPageUrl, to: $to, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrdersReceivedImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.firstPageUrl, firstPageUrl) ||
                other.firstPageUrl == firstPageUrl) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.lastPageUrl, lastPageUrl) ||
                other.lastPageUrl == lastPageUrl) &&
            const DeepCollectionEquality().equals(other._links, _links) &&
            (identical(other.nextPageUrl, nextPageUrl) ||
                other.nextPageUrl == nextPageUrl) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            const DeepCollectionEquality()
                .equals(other.prevPageUrl, prevPageUrl) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentPage,
      const DeepCollectionEquality().hash(_data),
      firstPageUrl,
      from,
      lastPage,
      lastPageUrl,
      const DeepCollectionEquality().hash(_links),
      nextPageUrl,
      path,
      perPage,
      const DeepCollectionEquality().hash(prevPageUrl),
      to,
      total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrdersReceivedImplCopyWith<_$OrdersReceivedImpl> get copyWith =>
      __$$OrdersReceivedImplCopyWithImpl<_$OrdersReceivedImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrdersReceivedImplToJson(
      this,
    );
  }
}

abstract class _OrdersReceived implements OrdersReceived {
  const factory _OrdersReceived(
          {@JsonKey(name: "current_page") required final int? currentPage,
          @JsonKey(name: "data") required final List<OrdersReceivedDatum> data,
          @JsonKey(name: "first_page_url") required final String? firstPageUrl,
          @JsonKey(name: "from") required final int? from,
          @JsonKey(name: "last_page") required final int? lastPage,
          @JsonKey(name: "last_page_url") required final String? lastPageUrl,
          @JsonKey(name: "links") required final List<Link> links,
          @JsonKey(name: "next_page_url") required final String? nextPageUrl,
          @JsonKey(name: "path") required final String? path,
          @JsonKey(name: "per_page") required final int? perPage,
          @JsonKey(name: "prev_page_url") final dynamic prevPageUrl,
          @JsonKey(name: "to") required final int? to,
          @JsonKey(name: "total") required final int? total}) =
      _$OrdersReceivedImpl;

  factory _OrdersReceived.fromJson(Map<String, dynamic> json) =
      _$OrdersReceivedImpl.fromJson;

  @override
  @JsonKey(name: "current_page")
  int? get currentPage;
  @override
  @JsonKey(name: "data")
  List<OrdersReceivedDatum> get data;
  @override
  @JsonKey(name: "first_page_url")
  String? get firstPageUrl;
  @override
  @JsonKey(name: "from")
  int? get from;
  @override
  @JsonKey(name: "last_page")
  int? get lastPage;
  @override
  @JsonKey(name: "last_page_url")
  String? get lastPageUrl;
  @override
  @JsonKey(name: "links")
  List<Link> get links;
  @override
  @JsonKey(name: "next_page_url")
  String? get nextPageUrl;
  @override
  @JsonKey(name: "path")
  String? get path;
  @override
  @JsonKey(name: "per_page")
  int? get perPage;
  @override
  @JsonKey(name: "prev_page_url")
  dynamic get prevPageUrl;
  @override
  @JsonKey(name: "to")
  int? get to;
  @override
  @JsonKey(name: "total")
  int? get total;
  @override
  @JsonKey(ignore: true)
  _$$OrdersReceivedImplCopyWith<_$OrdersReceivedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrdersReceivedDatum _$OrdersReceivedDatumFromJson(Map<String, dynamic> json) {
  return _OrdersReceivedDatum.fromJson(json);
}

/// @nodoc
mixin _$OrdersReceivedDatum {
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "vendor_id")
  String? get vendorId => throw _privateConstructorUsedError;
  @JsonKey(name: "post_id")
  String? get postId => throw _privateConstructorUsedError;
  @JsonKey(name: "order_id")
  dynamic get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: "qty")
  String? get qty => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  String? get price => throw _privateConstructorUsedError;
  @JsonKey(name: "shipping_charge")
  String? get shippingCharge => throw _privateConstructorUsedError;
  @JsonKey(name: "total")
  String? get total => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_method")
  String? get paymentMethod => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_proof")
  dynamic get paymentProof => throw _privateConstructorUsedError;
  @JsonKey(name: "delivery_method")
  String? get deliveryMethod => throw _privateConstructorUsedError;
  @JsonKey(name: "delivery_address")
  String? get deliveryAddress => throw _privateConstructorUsedError;
  @JsonKey(name: "coupon")
  String? get coupon => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  dynamic get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "post_title")
  String? get postTitle => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_name")
  String? get customerName => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_contact")
  String? get customerContact => throw _privateConstructorUsedError;
  @JsonKey(name: "vendor_name")
  String? get vendorName => throw _privateConstructorUsedError;
  @JsonKey(name: "vendor_contact")
  String? get vendorContact => throw _privateConstructorUsedError;
  @JsonKey(name: "post_photo_url")
  String? get postPhotoUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrdersReceivedDatumCopyWith<OrdersReceivedDatum> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersReceivedDatumCopyWith<$Res> {
  factory $OrdersReceivedDatumCopyWith(
          OrdersReceivedDatum value, $Res Function(OrdersReceivedDatum) then) =
      _$OrdersReceivedDatumCopyWithImpl<$Res, OrdersReceivedDatum>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "user_id") String? userId,
      @JsonKey(name: "vendor_id") String? vendorId,
      @JsonKey(name: "post_id") String? postId,
      @JsonKey(name: "order_id") dynamic orderId,
      @JsonKey(name: "qty") String? qty,
      @JsonKey(name: "price") String? price,
      @JsonKey(name: "shipping_charge") String? shippingCharge,
      @JsonKey(name: "total") String? total,
      @JsonKey(name: "payment_method") String? paymentMethod,
      @JsonKey(name: "payment_proof") dynamic paymentProof,
      @JsonKey(name: "delivery_method") String? deliveryMethod,
      @JsonKey(name: "delivery_address") String? deliveryAddress,
      @JsonKey(name: "coupon") String? coupon,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "created_at") DateTime createdAt,
      @JsonKey(name: "updated_at") dynamic updatedAt,
      @JsonKey(name: "post_title") String? postTitle,
      @JsonKey(name: "customer_name") String? customerName,
      @JsonKey(name: "customer_contact") String? customerContact,
      @JsonKey(name: "vendor_name") String? vendorName,
      @JsonKey(name: "vendor_contact") String? vendorContact,
      @JsonKey(name: "post_photo_url") String? postPhotoUrl});
}

/// @nodoc
class _$OrdersReceivedDatumCopyWithImpl<$Res, $Val extends OrdersReceivedDatum>
    implements $OrdersReceivedDatumCopyWith<$Res> {
  _$OrdersReceivedDatumCopyWithImpl(this._value, this._then);

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
    Object? orderId = freezed,
    Object? qty = freezed,
    Object? price = freezed,
    Object? shippingCharge = freezed,
    Object? total = freezed,
    Object? paymentMethod = freezed,
    Object? paymentProof = freezed,
    Object? deliveryMethod = freezed,
    Object? deliveryAddress = freezed,
    Object? coupon = freezed,
    Object? status = freezed,
    Object? createdAt = null,
    Object? updatedAt = freezed,
    Object? postTitle = freezed,
    Object? customerName = freezed,
    Object? customerContact = freezed,
    Object? vendorName = freezed,
    Object? vendorContact = freezed,
    Object? postPhotoUrl = freezed,
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
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      qty: freezed == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingCharge: freezed == shippingCharge
          ? _value.shippingCharge
          : shippingCharge // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentProof: freezed == paymentProof
          ? _value.paymentProof
          : paymentProof // ignore: cast_nullable_to_non_nullable
              as dynamic,
      deliveryMethod: freezed == deliveryMethod
          ? _value.deliveryMethod
          : deliveryMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryAddress: freezed == deliveryAddress
          ? _value.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      coupon: freezed == coupon
          ? _value.coupon
          : coupon // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      postTitle: freezed == postTitle
          ? _value.postTitle
          : postTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      customerContact: freezed == customerContact
          ? _value.customerContact
          : customerContact // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorName: freezed == vendorName
          ? _value.vendorName
          : vendorName // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorContact: freezed == vendorContact
          ? _value.vendorContact
          : vendorContact // ignore: cast_nullable_to_non_nullable
              as String?,
      postPhotoUrl: freezed == postPhotoUrl
          ? _value.postPhotoUrl
          : postPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrdersReceivedDatumImplCopyWith<$Res>
    implements $OrdersReceivedDatumCopyWith<$Res> {
  factory _$$OrdersReceivedDatumImplCopyWith(_$OrdersReceivedDatumImpl value,
          $Res Function(_$OrdersReceivedDatumImpl) then) =
      __$$OrdersReceivedDatumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "user_id") String? userId,
      @JsonKey(name: "vendor_id") String? vendorId,
      @JsonKey(name: "post_id") String? postId,
      @JsonKey(name: "order_id") dynamic orderId,
      @JsonKey(name: "qty") String? qty,
      @JsonKey(name: "price") String? price,
      @JsonKey(name: "shipping_charge") String? shippingCharge,
      @JsonKey(name: "total") String? total,
      @JsonKey(name: "payment_method") String? paymentMethod,
      @JsonKey(name: "payment_proof") dynamic paymentProof,
      @JsonKey(name: "delivery_method") String? deliveryMethod,
      @JsonKey(name: "delivery_address") String? deliveryAddress,
      @JsonKey(name: "coupon") String? coupon,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "created_at") DateTime createdAt,
      @JsonKey(name: "updated_at") dynamic updatedAt,
      @JsonKey(name: "post_title") String? postTitle,
      @JsonKey(name: "customer_name") String? customerName,
      @JsonKey(name: "customer_contact") String? customerContact,
      @JsonKey(name: "vendor_name") String? vendorName,
      @JsonKey(name: "vendor_contact") String? vendorContact,
      @JsonKey(name: "post_photo_url") String? postPhotoUrl});
}

/// @nodoc
class __$$OrdersReceivedDatumImplCopyWithImpl<$Res>
    extends _$OrdersReceivedDatumCopyWithImpl<$Res, _$OrdersReceivedDatumImpl>
    implements _$$OrdersReceivedDatumImplCopyWith<$Res> {
  __$$OrdersReceivedDatumImplCopyWithImpl(_$OrdersReceivedDatumImpl _value,
      $Res Function(_$OrdersReceivedDatumImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? vendorId = freezed,
    Object? postId = freezed,
    Object? orderId = freezed,
    Object? qty = freezed,
    Object? price = freezed,
    Object? shippingCharge = freezed,
    Object? total = freezed,
    Object? paymentMethod = freezed,
    Object? paymentProof = freezed,
    Object? deliveryMethod = freezed,
    Object? deliveryAddress = freezed,
    Object? coupon = freezed,
    Object? status = freezed,
    Object? createdAt = null,
    Object? updatedAt = freezed,
    Object? postTitle = freezed,
    Object? customerName = freezed,
    Object? customerContact = freezed,
    Object? vendorName = freezed,
    Object? vendorContact = freezed,
    Object? postPhotoUrl = freezed,
  }) {
    return _then(_$OrdersReceivedDatumImpl(
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
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      qty: freezed == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingCharge: freezed == shippingCharge
          ? _value.shippingCharge
          : shippingCharge // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentProof: freezed == paymentProof
          ? _value.paymentProof
          : paymentProof // ignore: cast_nullable_to_non_nullable
              as dynamic,
      deliveryMethod: freezed == deliveryMethod
          ? _value.deliveryMethod
          : deliveryMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryAddress: freezed == deliveryAddress
          ? _value.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      coupon: freezed == coupon
          ? _value.coupon
          : coupon // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      postTitle: freezed == postTitle
          ? _value.postTitle
          : postTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      customerContact: freezed == customerContact
          ? _value.customerContact
          : customerContact // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorName: freezed == vendorName
          ? _value.vendorName
          : vendorName // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorContact: freezed == vendorContact
          ? _value.vendorContact
          : vendorContact // ignore: cast_nullable_to_non_nullable
              as String?,
      postPhotoUrl: freezed == postPhotoUrl
          ? _value.postPhotoUrl
          : postPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrdersReceivedDatumImpl implements _OrdersReceivedDatum {
  const _$OrdersReceivedDatumImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "user_id") required this.userId,
      @JsonKey(name: "vendor_id") required this.vendorId,
      @JsonKey(name: "post_id") required this.postId,
      @JsonKey(name: "order_id") this.orderId,
      @JsonKey(name: "qty") required this.qty,
      @JsonKey(name: "price") required this.price,
      @JsonKey(name: "shipping_charge") required this.shippingCharge,
      @JsonKey(name: "total") required this.total,
      @JsonKey(name: "payment_method") required this.paymentMethod,
      @JsonKey(name: "payment_proof") this.paymentProof,
      @JsonKey(name: "delivery_method") this.deliveryMethod,
      @JsonKey(name: "delivery_address") this.deliveryAddress,
      @JsonKey(name: "coupon") required this.coupon,
      @JsonKey(name: "status") required this.status,
      @JsonKey(name: "created_at") required this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt,
      @JsonKey(name: "post_title") required this.postTitle,
      @JsonKey(name: "customer_name") required this.customerName,
      @JsonKey(name: "customer_contact") this.customerContact,
      @JsonKey(name: "vendor_name") required this.vendorName,
      @JsonKey(name: "vendor_contact") required this.vendorContact,
      @JsonKey(name: "post_photo_url") required this.postPhotoUrl});

  factory _$OrdersReceivedDatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrdersReceivedDatumImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "user_id")
  final String? userId;
  @override
  @JsonKey(name: "vendor_id")
  final String? vendorId;
  @override
  @JsonKey(name: "post_id")
  final String? postId;
  @override
  @JsonKey(name: "order_id")
  final dynamic orderId;
  @override
  @JsonKey(name: "qty")
  final String? qty;
  @override
  @JsonKey(name: "price")
  final String? price;
  @override
  @JsonKey(name: "shipping_charge")
  final String? shippingCharge;
  @override
  @JsonKey(name: "total")
  final String? total;
  @override
  @JsonKey(name: "payment_method")
  final String? paymentMethod;
  @override
  @JsonKey(name: "payment_proof")
  final dynamic paymentProof;
  @override
  @JsonKey(name: "delivery_method")
  final String? deliveryMethod;
  @override
  @JsonKey(name: "delivery_address")
  final String? deliveryAddress;
  @override
  @JsonKey(name: "coupon")
  final String? coupon;
  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "created_at")
  final DateTime createdAt;
  @override
  @JsonKey(name: "updated_at")
  final dynamic updatedAt;
  @override
  @JsonKey(name: "post_title")
  final String? postTitle;
  @override
  @JsonKey(name: "customer_name")
  final String? customerName;
  @override
  @JsonKey(name: "customer_contact")
  final String? customerContact;
  @override
  @JsonKey(name: "vendor_name")
  final String? vendorName;
  @override
  @JsonKey(name: "vendor_contact")
  final String? vendorContact;
  @override
  @JsonKey(name: "post_photo_url")
  final String? postPhotoUrl;

  @override
  String toString() {
    return 'OrdersReceivedDatum(id: $id, userId: $userId, vendorId: $vendorId, postId: $postId, orderId: $orderId, qty: $qty, price: $price, shippingCharge: $shippingCharge, total: $total, paymentMethod: $paymentMethod, paymentProof: $paymentProof, deliveryMethod: $deliveryMethod, deliveryAddress: $deliveryAddress, coupon: $coupon, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, postTitle: $postTitle, customerName: $customerName, customerContact: $customerContact, vendorName: $vendorName, vendorContact: $vendorContact, postPhotoUrl: $postPhotoUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrdersReceivedDatumImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.vendorId, vendorId) ||
                other.vendorId == vendorId) &&
            (identical(other.postId, postId) || other.postId == postId) &&
            const DeepCollectionEquality().equals(other.orderId, orderId) &&
            (identical(other.qty, qty) || other.qty == qty) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.shippingCharge, shippingCharge) ||
                other.shippingCharge == shippingCharge) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            const DeepCollectionEquality()
                .equals(other.paymentProof, paymentProof) &&
            (identical(other.deliveryMethod, deliveryMethod) ||
                other.deliveryMethod == deliveryMethod) &&
            (identical(other.deliveryAddress, deliveryAddress) ||
                other.deliveryAddress == deliveryAddress) &&
            (identical(other.coupon, coupon) || other.coupon == coupon) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            (identical(other.postTitle, postTitle) ||
                other.postTitle == postTitle) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.customerContact, customerContact) ||
                other.customerContact == customerContact) &&
            (identical(other.vendorName, vendorName) ||
                other.vendorName == vendorName) &&
            (identical(other.vendorContact, vendorContact) ||
                other.vendorContact == vendorContact) &&
            (identical(other.postPhotoUrl, postPhotoUrl) ||
                other.postPhotoUrl == postPhotoUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        userId,
        vendorId,
        postId,
        const DeepCollectionEquality().hash(orderId),
        qty,
        price,
        shippingCharge,
        total,
        paymentMethod,
        const DeepCollectionEquality().hash(paymentProof),
        deliveryMethod,
        deliveryAddress,
        coupon,
        status,
        createdAt,
        const DeepCollectionEquality().hash(updatedAt),
        postTitle,
        customerName,
        customerContact,
        vendorName,
        vendorContact,
        postPhotoUrl
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrdersReceivedDatumImplCopyWith<_$OrdersReceivedDatumImpl> get copyWith =>
      __$$OrdersReceivedDatumImplCopyWithImpl<_$OrdersReceivedDatumImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrdersReceivedDatumImplToJson(
      this,
    );
  }
}

abstract class _OrdersReceivedDatum implements OrdersReceivedDatum {
  const factory _OrdersReceivedDatum(
      {@JsonKey(name: "id") required final String? id,
      @JsonKey(name: "user_id") required final String? userId,
      @JsonKey(name: "vendor_id") required final String? vendorId,
      @JsonKey(name: "post_id") required final String? postId,
      @JsonKey(name: "order_id") final dynamic orderId,
      @JsonKey(name: "qty") required final String? qty,
      @JsonKey(name: "price") required final String? price,
      @JsonKey(name: "shipping_charge") required final String? shippingCharge,
      @JsonKey(name: "total") required final String? total,
      @JsonKey(name: "payment_method") required final String? paymentMethod,
      @JsonKey(name: "payment_proof") final dynamic paymentProof,
      @JsonKey(name: "delivery_method") final String? deliveryMethod,
      @JsonKey(name: "delivery_address") final String? deliveryAddress,
      @JsonKey(name: "coupon") required final String? coupon,
      @JsonKey(name: "status") required final String? status,
      @JsonKey(name: "created_at") required final DateTime createdAt,
      @JsonKey(name: "updated_at") final dynamic updatedAt,
      @JsonKey(name: "post_title") required final String? postTitle,
      @JsonKey(name: "customer_name") required final String? customerName,
      @JsonKey(name: "customer_contact") final String? customerContact,
      @JsonKey(name: "vendor_name") required final String? vendorName,
      @JsonKey(name: "vendor_contact") required final String? vendorContact,
      @JsonKey(name: "post_photo_url")
      required final String? postPhotoUrl}) = _$OrdersReceivedDatumImpl;

  factory _OrdersReceivedDatum.fromJson(Map<String, dynamic> json) =
      _$OrdersReceivedDatumImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(name: "user_id")
  String? get userId;
  @override
  @JsonKey(name: "vendor_id")
  String? get vendorId;
  @override
  @JsonKey(name: "post_id")
  String? get postId;
  @override
  @JsonKey(name: "order_id")
  dynamic get orderId;
  @override
  @JsonKey(name: "qty")
  String? get qty;
  @override
  @JsonKey(name: "price")
  String? get price;
  @override
  @JsonKey(name: "shipping_charge")
  String? get shippingCharge;
  @override
  @JsonKey(name: "total")
  String? get total;
  @override
  @JsonKey(name: "payment_method")
  String? get paymentMethod;
  @override
  @JsonKey(name: "payment_proof")
  dynamic get paymentProof;
  @override
  @JsonKey(name: "delivery_method")
  String? get deliveryMethod;
  @override
  @JsonKey(name: "delivery_address")
  String? get deliveryAddress;
  @override
  @JsonKey(name: "coupon")
  String? get coupon;
  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "created_at")
  DateTime get createdAt;
  @override
  @JsonKey(name: "updated_at")
  dynamic get updatedAt;
  @override
  @JsonKey(name: "post_title")
  String? get postTitle;
  @override
  @JsonKey(name: "customer_name")
  String? get customerName;
  @override
  @JsonKey(name: "customer_contact")
  String? get customerContact;
  @override
  @JsonKey(name: "vendor_name")
  String? get vendorName;
  @override
  @JsonKey(name: "vendor_contact")
  String? get vendorContact;
  @override
  @JsonKey(name: "post_photo_url")
  String? get postPhotoUrl;
  @override
  @JsonKey(ignore: true)
  _$$OrdersReceivedDatumImplCopyWith<_$OrdersReceivedDatumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
