// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submit_buy_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$buynowsubmitHash() => r'f23471b89c6ad2a888e3b783897f337e4289a6d8';

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
    String token,
    String zoneId,
    List<double> pickupCoordinates,
    List<double> customerCoordinates,
    List<double> customerRequestCoordinates,
    List<double> destinationCoordinates,
    int getestimateid,
    double estimatedFare,
    double estimatedDistance,
    double estimatedTime,
    String pickupAddress,
    String destinationAddress,
    int vendorId,
    String type,
    double returnFee,
    double cancellationFee,
    String senderName,
    String senderPhone,
    String senderAddress,
    String receiverName,
    String receiverPhone,
    String receiverAddress,
    String parcelCategoryId,
    double weight,
    String payer,
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
      token,
      zoneId,
      pickupCoordinates,
      customerCoordinates,
      customerRequestCoordinates,
      destinationCoordinates,
      getestimateid,
      estimatedFare,
      estimatedDistance,
      estimatedTime,
      pickupAddress,
      destinationAddress,
      vendorId,
      type,
      returnFee,
      cancellationFee,
      senderName,
      senderPhone,
      senderAddress,
      receiverName,
      receiverPhone,
      receiverAddress,
      parcelCategoryId,
      weight,
      payer,
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
      provider.token,
      provider.zoneId,
      provider.pickupCoordinates,
      provider.customerCoordinates,
      provider.customerRequestCoordinates,
      provider.destinationCoordinates,
      provider.getestimateid,
      provider.estimatedFare,
      provider.estimatedDistance,
      provider.estimatedTime,
      provider.pickupAddress,
      provider.destinationAddress,
      provider.vendorId,
      provider.type,
      provider.returnFee,
      provider.cancellationFee,
      provider.senderName,
      provider.senderPhone,
      provider.senderAddress,
      provider.receiverName,
      provider.receiverPhone,
      provider.receiverAddress,
      provider.parcelCategoryId,
      provider.weight,
      provider.payer,
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
    String token,
    String zoneId,
    List<double> pickupCoordinates,
    List<double> customerCoordinates,
    List<double> customerRequestCoordinates,
    List<double> destinationCoordinates,
    int getestimateid,
    double estimatedFare,
    double estimatedDistance,
    double estimatedTime,
    String pickupAddress,
    String destinationAddress,
    int vendorId,
    String type,
    double returnFee,
    double cancellationFee,
    String senderName,
    String senderPhone,
    String senderAddress,
    String receiverName,
    String receiverPhone,
    String receiverAddress,
    String parcelCategoryId,
    double weight,
    String payer,
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
            token,
            zoneId,
            pickupCoordinates,
            customerCoordinates,
            customerRequestCoordinates,
            destinationCoordinates,
            getestimateid,
            estimatedFare,
            estimatedDistance,
            estimatedTime,
            pickupAddress,
            destinationAddress,
            vendorId,
            type,
            returnFee,
            cancellationFee,
            senderName,
            senderPhone,
            senderAddress,
            receiverName,
            receiverPhone,
            receiverAddress,
            parcelCategoryId,
            weight,
            payer,
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
          token: token,
          zoneId: zoneId,
          pickupCoordinates: pickupCoordinates,
          customerCoordinates: customerCoordinates,
          customerRequestCoordinates: customerRequestCoordinates,
          destinationCoordinates: destinationCoordinates,
          getestimateid: getestimateid,
          estimatedFare: estimatedFare,
          estimatedDistance: estimatedDistance,
          estimatedTime: estimatedTime,
          pickupAddress: pickupAddress,
          destinationAddress: destinationAddress,
          vendorId: vendorId,
          type: type,
          returnFee: returnFee,
          cancellationFee: cancellationFee,
          senderName: senderName,
          senderPhone: senderPhone,
          senderAddress: senderAddress,
          receiverName: receiverName,
          receiverPhone: receiverPhone,
          receiverAddress: receiverAddress,
          parcelCategoryId: parcelCategoryId,
          weight: weight,
          payer: payer,
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
    required this.token,
    required this.zoneId,
    required this.pickupCoordinates,
    required this.customerCoordinates,
    required this.customerRequestCoordinates,
    required this.destinationCoordinates,
    required this.getestimateid,
    required this.estimatedFare,
    required this.estimatedDistance,
    required this.estimatedTime,
    required this.pickupAddress,
    required this.destinationAddress,
    required this.vendorId,
    required this.type,
    required this.returnFee,
    required this.cancellationFee,
    required this.senderName,
    required this.senderPhone,
    required this.senderAddress,
    required this.receiverName,
    required this.receiverPhone,
    required this.receiverAddress,
    required this.parcelCategoryId,
    required this.weight,
    required this.payer,
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
  final String token;
  final String zoneId;
  final List<double> pickupCoordinates;
  final List<double> customerCoordinates;
  final List<double> customerRequestCoordinates;
  final List<double> destinationCoordinates;
  final int getestimateid;
  final double estimatedFare;
  final double estimatedDistance;
  final double estimatedTime;
  final String pickupAddress;
  final String destinationAddress;
  final int vendorId;
  final String type;
  final double returnFee;
  final double cancellationFee;
  final String senderName;
  final String senderPhone;
  final String senderAddress;
  final String receiverName;
  final String receiverPhone;
  final String receiverAddress;
  final String parcelCategoryId;
  final double weight;
  final String payer;

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
        token: token,
        zoneId: zoneId,
        pickupCoordinates: pickupCoordinates,
        customerCoordinates: customerCoordinates,
        customerRequestCoordinates: customerRequestCoordinates,
        destinationCoordinates: destinationCoordinates,
        getestimateid: getestimateid,
        estimatedFare: estimatedFare,
        estimatedDistance: estimatedDistance,
        estimatedTime: estimatedTime,
        pickupAddress: pickupAddress,
        destinationAddress: destinationAddress,
        vendorId: vendorId,
        type: type,
        returnFee: returnFee,
        cancellationFee: cancellationFee,
        senderName: senderName,
        senderPhone: senderPhone,
        senderAddress: senderAddress,
        receiverName: receiverName,
        receiverPhone: receiverPhone,
        receiverAddress: receiverAddress,
        parcelCategoryId: parcelCategoryId,
        weight: weight,
        payer: payer,
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
        other.productTitle == productTitle &&
        other.token == token &&
        other.zoneId == zoneId &&
        other.pickupCoordinates == pickupCoordinates &&
        other.customerCoordinates == customerCoordinates &&
        other.customerRequestCoordinates == customerRequestCoordinates &&
        other.destinationCoordinates == destinationCoordinates &&
        other.getestimateid == getestimateid &&
        other.estimatedFare == estimatedFare &&
        other.estimatedDistance == estimatedDistance &&
        other.estimatedTime == estimatedTime &&
        other.pickupAddress == pickupAddress &&
        other.destinationAddress == destinationAddress &&
        other.vendorId == vendorId &&
        other.type == type &&
        other.returnFee == returnFee &&
        other.cancellationFee == cancellationFee &&
        other.senderName == senderName &&
        other.senderPhone == senderPhone &&
        other.senderAddress == senderAddress &&
        other.receiverName == receiverName &&
        other.receiverPhone == receiverPhone &&
        other.receiverAddress == receiverAddress &&
        other.parcelCategoryId == parcelCategoryId &&
        other.weight == weight &&
        other.payer == payer;
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
    hash = _SystemHash.combine(hash, token.hashCode);
    hash = _SystemHash.combine(hash, zoneId.hashCode);
    hash = _SystemHash.combine(hash, pickupCoordinates.hashCode);
    hash = _SystemHash.combine(hash, customerCoordinates.hashCode);
    hash = _SystemHash.combine(hash, customerRequestCoordinates.hashCode);
    hash = _SystemHash.combine(hash, destinationCoordinates.hashCode);
    hash = _SystemHash.combine(hash, getestimateid.hashCode);
    hash = _SystemHash.combine(hash, estimatedFare.hashCode);
    hash = _SystemHash.combine(hash, estimatedDistance.hashCode);
    hash = _SystemHash.combine(hash, estimatedTime.hashCode);
    hash = _SystemHash.combine(hash, pickupAddress.hashCode);
    hash = _SystemHash.combine(hash, destinationAddress.hashCode);
    hash = _SystemHash.combine(hash, vendorId.hashCode);
    hash = _SystemHash.combine(hash, type.hashCode);
    hash = _SystemHash.combine(hash, returnFee.hashCode);
    hash = _SystemHash.combine(hash, cancellationFee.hashCode);
    hash = _SystemHash.combine(hash, senderName.hashCode);
    hash = _SystemHash.combine(hash, senderPhone.hashCode);
    hash = _SystemHash.combine(hash, senderAddress.hashCode);
    hash = _SystemHash.combine(hash, receiverName.hashCode);
    hash = _SystemHash.combine(hash, receiverPhone.hashCode);
    hash = _SystemHash.combine(hash, receiverAddress.hashCode);
    hash = _SystemHash.combine(hash, parcelCategoryId.hashCode);
    hash = _SystemHash.combine(hash, weight.hashCode);
    hash = _SystemHash.combine(hash, payer.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
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

  /// The parameter `token` of this provider.
  String get token;

  /// The parameter `zoneId` of this provider.
  String get zoneId;

  /// The parameter `pickupCoordinates` of this provider.
  List<double> get pickupCoordinates;

  /// The parameter `customerCoordinates` of this provider.
  List<double> get customerCoordinates;

  /// The parameter `customerRequestCoordinates` of this provider.
  List<double> get customerRequestCoordinates;

  /// The parameter `destinationCoordinates` of this provider.
  List<double> get destinationCoordinates;

  /// The parameter `getestimateid` of this provider.
  int get getestimateid;

  /// The parameter `estimatedFare` of this provider.
  double get estimatedFare;

  /// The parameter `estimatedDistance` of this provider.
  double get estimatedDistance;

  /// The parameter `estimatedTime` of this provider.
  double get estimatedTime;

  /// The parameter `pickupAddress` of this provider.
  String get pickupAddress;

  /// The parameter `destinationAddress` of this provider.
  String get destinationAddress;

  /// The parameter `vendorId` of this provider.
  int get vendorId;

  /// The parameter `type` of this provider.
  String get type;

  /// The parameter `returnFee` of this provider.
  double get returnFee;

  /// The parameter `cancellationFee` of this provider.
  double get cancellationFee;

  /// The parameter `senderName` of this provider.
  String get senderName;

  /// The parameter `senderPhone` of this provider.
  String get senderPhone;

  /// The parameter `senderAddress` of this provider.
  String get senderAddress;

  /// The parameter `receiverName` of this provider.
  String get receiverName;

  /// The parameter `receiverPhone` of this provider.
  String get receiverPhone;

  /// The parameter `receiverAddress` of this provider.
  String get receiverAddress;

  /// The parameter `parcelCategoryId` of this provider.
  String get parcelCategoryId;

  /// The parameter `weight` of this provider.
  double get weight;

  /// The parameter `payer` of this provider.
  String get payer;
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
  @override
  String get token => (origin as BuynowsubmitProvider).token;
  @override
  String get zoneId => (origin as BuynowsubmitProvider).zoneId;
  @override
  List<double> get pickupCoordinates =>
      (origin as BuynowsubmitProvider).pickupCoordinates;
  @override
  List<double> get customerCoordinates =>
      (origin as BuynowsubmitProvider).customerCoordinates;
  @override
  List<double> get customerRequestCoordinates =>
      (origin as BuynowsubmitProvider).customerRequestCoordinates;
  @override
  List<double> get destinationCoordinates =>
      (origin as BuynowsubmitProvider).destinationCoordinates;
  @override
  int get getestimateid => (origin as BuynowsubmitProvider).getestimateid;
  @override
  double get estimatedFare => (origin as BuynowsubmitProvider).estimatedFare;
  @override
  double get estimatedDistance =>
      (origin as BuynowsubmitProvider).estimatedDistance;
  @override
  double get estimatedTime => (origin as BuynowsubmitProvider).estimatedTime;
  @override
  String get pickupAddress => (origin as BuynowsubmitProvider).pickupAddress;
  @override
  String get destinationAddress =>
      (origin as BuynowsubmitProvider).destinationAddress;
  @override
  int get vendorId => (origin as BuynowsubmitProvider).vendorId;
  @override
  String get type => (origin as BuynowsubmitProvider).type;
  @override
  double get returnFee => (origin as BuynowsubmitProvider).returnFee;
  @override
  double get cancellationFee =>
      (origin as BuynowsubmitProvider).cancellationFee;
  @override
  String get senderName => (origin as BuynowsubmitProvider).senderName;
  @override
  String get senderPhone => (origin as BuynowsubmitProvider).senderPhone;
  @override
  String get senderAddress => (origin as BuynowsubmitProvider).senderAddress;
  @override
  String get receiverName => (origin as BuynowsubmitProvider).receiverName;
  @override
  String get receiverPhone => (origin as BuynowsubmitProvider).receiverPhone;
  @override
  String get receiverAddress =>
      (origin as BuynowsubmitProvider).receiverAddress;
  @override
  String get parcelCategoryId =>
      (origin as BuynowsubmitProvider).parcelCategoryId;
  @override
  double get weight => (origin as BuynowsubmitProvider).weight;
  @override
  String get payer => (origin as BuynowsubmitProvider).payer;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
