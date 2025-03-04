// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submit_buy_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$buynowsubmitHash() => r'89bfb9b74365fe0c5dc63a5dd285667371e7d1d0';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [buynowsubmit].
@ProviderFor(buynowsubmit)
const buynowsubmitProvider = BuynowsubmitFamily();

/// See also [buynowsubmit].
class BuynowsubmitFamily extends Family<AsyncValue<bool>> {
  /// See also [buynowsubmit].
  const BuynowsubmitFamily();

  /// See also [buynowsubmit].
  BuynowsubmitProvider call(
    String cityCode,
    String usernmame,
    String address,
    String email,
    double price,
    String payMethod,
    String delivery,
    String deliveryType,
    String city,
    String street,
    double latitude,
    double longitude,
    String? coupon,
    int qty,
    double delCost,
    double couponDiscount,
    double total,
    int productId,
    String productTitle,
  ) {
    return BuynowsubmitProvider(
      cityCode,
      usernmame,
      address,
      email,
      price,
      payMethod,
      delivery,
      deliveryType,
      city,
      street,
      latitude,
      longitude,
      coupon,
      qty,
      delCost,
      couponDiscount,
      total,
      productId,
      productTitle,
    );
  }

  @override
  BuynowsubmitProvider getProviderOverride(
    covariant BuynowsubmitProvider provider,
  ) {
    return call(
      provider.cityCode,
      provider.usernmame,
      provider.address,
      provider.email,
      provider.price,
      provider.payMethod,
      provider.delivery,
      provider.deliveryType,
      provider.city,
      provider.street,
      provider.latitude,
      provider.longitude,
      provider.coupon,
      provider.qty,
      provider.delCost,
      provider.couponDiscount,
      provider.total,
      provider.productId,
      provider.productTitle,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'buynowsubmitProvider';
}

/// See also [buynowsubmit].
class BuynowsubmitProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [buynowsubmit].
  BuynowsubmitProvider(
    String cityCode,
    String usernmame,
    String address,
    String email,
    double price,
    String payMethod,
    String delivery,
    String deliveryType,
    String city,
    String street,
    double latitude,
    double longitude,
    String? coupon,
    int qty,
    double delCost,
    double couponDiscount,
    double total,
    int productId,
    String productTitle,
  ) : this._internal(
          (ref) => buynowsubmit(
            ref as BuynowsubmitRef,
            cityCode,
            usernmame,
            address,
            email,
            price,
            payMethod,
            delivery,
            deliveryType,
            city,
            street,
            latitude,
            longitude,
            coupon,
            qty,
            delCost,
            couponDiscount,
            total,
            productId,
            productTitle,
          ),
          from: buynowsubmitProvider,
          name: r'buynowsubmitProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$buynowsubmitHash,
          dependencies: BuynowsubmitFamily._dependencies,
          allTransitiveDependencies:
              BuynowsubmitFamily._allTransitiveDependencies,
          cityCode: cityCode,
          usernmame: usernmame,
          address: address,
          email: email,
          price: price,
          payMethod: payMethod,
          delivery: delivery,
          deliveryType: deliveryType,
          city: city,
          street: street,
          latitude: latitude,
          longitude: longitude,
          coupon: coupon,
          qty: qty,
          delCost: delCost,
          couponDiscount: couponDiscount,
          total: total,
          productId: productId,
          productTitle: productTitle,
        );

  BuynowsubmitProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.cityCode,
    required this.usernmame,
    required this.address,
    required this.email,
    required this.price,
    required this.payMethod,
    required this.delivery,
    required this.deliveryType,
    required this.city,
    required this.street,
    required this.latitude,
    required this.longitude,
    required this.coupon,
    required this.qty,
    required this.delCost,
    required this.couponDiscount,
    required this.total,
    required this.productId,
    required this.productTitle,
  }) : super.internal();

  final String cityCode;
  final String usernmame;
  final String address;
  final String email;
  final double price;
  final String payMethod;
  final String delivery;
  final String deliveryType;
  final String city;
  final String street;
  final double latitude;
  final double longitude;
  final String? coupon;
  final int qty;
  final double delCost;
  final double couponDiscount;
  final double total;
  final int productId;
  final String productTitle;

  @override
  Override overrideWith(
    FutureOr<bool> Function(BuynowsubmitRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: BuynowsubmitProvider._internal(
        (ref) => create(ref as BuynowsubmitRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        cityCode: cityCode,
        usernmame: usernmame,
        address: address,
        email: email,
        price: price,
        payMethod: payMethod,
        delivery: delivery,
        deliveryType: deliveryType,
        city: city,
        street: street,
        latitude: latitude,
        longitude: longitude,
        coupon: coupon,
        qty: qty,
        delCost: delCost,
        couponDiscount: couponDiscount,
        total: total,
        productId: productId,
        productTitle: productTitle,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<bool> createElement() {
    return _BuynowsubmitProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BuynowsubmitProvider &&
        other.cityCode == cityCode &&
        other.usernmame == usernmame &&
        other.address == address &&
        other.email == email &&
        other.price == price &&
        other.payMethod == payMethod &&
        other.delivery == delivery &&
        other.deliveryType == deliveryType &&
        other.city == city &&
        other.street == street &&
        other.latitude == latitude &&
        other.longitude == longitude &&
        other.coupon == coupon &&
        other.qty == qty &&
        other.delCost == delCost &&
        other.couponDiscount == couponDiscount &&
        other.total == total &&
        other.productId == productId &&
        other.productTitle == productTitle;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, cityCode.hashCode);
    hash = _SystemHash.combine(hash, usernmame.hashCode);
    hash = _SystemHash.combine(hash, address.hashCode);
    hash = _SystemHash.combine(hash, email.hashCode);
    hash = _SystemHash.combine(hash, price.hashCode);
    hash = _SystemHash.combine(hash, payMethod.hashCode);
    hash = _SystemHash.combine(hash, delivery.hashCode);
    hash = _SystemHash.combine(hash, deliveryType.hashCode);
    hash = _SystemHash.combine(hash, city.hashCode);
    hash = _SystemHash.combine(hash, street.hashCode);
    hash = _SystemHash.combine(hash, latitude.hashCode);
    hash = _SystemHash.combine(hash, longitude.hashCode);
    hash = _SystemHash.combine(hash, coupon.hashCode);
    hash = _SystemHash.combine(hash, qty.hashCode);
    hash = _SystemHash.combine(hash, delCost.hashCode);
    hash = _SystemHash.combine(hash, couponDiscount.hashCode);
    hash = _SystemHash.combine(hash, total.hashCode);
    hash = _SystemHash.combine(hash, productId.hashCode);
    hash = _SystemHash.combine(hash, productTitle.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin BuynowsubmitRef on AutoDisposeFutureProviderRef<bool> {
  /// The parameter `cityCode` of this provider.
  String get cityCode;

  /// The parameter `usernmame` of this provider.
  String get usernmame;

  /// The parameter `address` of this provider.
  String get address;

  /// The parameter `email` of this provider.
  String get email;

  /// The parameter `price` of this provider.
  double get price;

  /// The parameter `payMethod` of this provider.
  String get payMethod;

  /// The parameter `delivery` of this provider.
  String get delivery;

  /// The parameter `deliveryType` of this provider.
  String get deliveryType;

  /// The parameter `city` of this provider.
  String get city;

  /// The parameter `street` of this provider.
  String get street;

  /// The parameter `latitude` of this provider.
  double get latitude;

  /// The parameter `longitude` of this provider.
  double get longitude;

  /// The parameter `coupon` of this provider.
  String? get coupon;

  /// The parameter `qty` of this provider.
  int get qty;

  /// The parameter `delCost` of this provider.
  double get delCost;

  /// The parameter `couponDiscount` of this provider.
  double get couponDiscount;

  /// The parameter `total` of this provider.
  double get total;

  /// The parameter `productId` of this provider.
  int get productId;

  /// The parameter `productTitle` of this provider.
  String get productTitle;
}

class _BuynowsubmitProviderElement
    extends AutoDisposeFutureProviderElement<bool> with BuynowsubmitRef {
  _BuynowsubmitProviderElement(super.provider);

  @override
  String get cityCode => (origin as BuynowsubmitProvider).cityCode;
  @override
  String get usernmame => (origin as BuynowsubmitProvider).usernmame;
  @override
  String get address => (origin as BuynowsubmitProvider).address;
  @override
  String get email => (origin as BuynowsubmitProvider).email;
  @override
  double get price => (origin as BuynowsubmitProvider).price;
  @override
  String get payMethod => (origin as BuynowsubmitProvider).payMethod;
  @override
  String get delivery => (origin as BuynowsubmitProvider).delivery;
  @override
  String get deliveryType => (origin as BuynowsubmitProvider).deliveryType;
  @override
  String get city => (origin as BuynowsubmitProvider).city;
  @override
  String get street => (origin as BuynowsubmitProvider).street;
  @override
  double get latitude => (origin as BuynowsubmitProvider).latitude;
  @override
  double get longitude => (origin as BuynowsubmitProvider).longitude;
  @override
  String? get coupon => (origin as BuynowsubmitProvider).coupon;
  @override
  int get qty => (origin as BuynowsubmitProvider).qty;
  @override
  double get delCost => (origin as BuynowsubmitProvider).delCost;
  @override
  double get couponDiscount => (origin as BuynowsubmitProvider).couponDiscount;
  @override
  double get total => (origin as BuynowsubmitProvider).total;
  @override
  int get productId => (origin as BuynowsubmitProvider).productId;
  @override
  String get productTitle => (origin as BuynowsubmitProvider).productTitle;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
