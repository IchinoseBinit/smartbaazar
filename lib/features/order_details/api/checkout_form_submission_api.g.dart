// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout_form_submission_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$postCheckoutFormHash() => r'0127d2fc220fd3adfd2809ec1f3d388c121c7331';

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

/// See also [postCheckoutForm].
@ProviderFor(postCheckoutForm)
const postCheckoutFormProvider = PostCheckoutFormFamily();

/// See also [postCheckoutForm].
class PostCheckoutFormFamily extends Family<AsyncValue<bool>> {
  /// See also [postCheckoutForm].
  const PostCheckoutFormFamily();

  /// See also [postCheckoutForm].
  PostCheckoutFormProvider call(
    String userName,
    String address,
    String email,
    String payMethod,
    String delivery,
    String deliveryType,
    String street,
    String? delCost,
    String? coupon,
    List<String?> postId,
    List<String> itemId,
    List<String> postName,
    List<String> qty,
    List<String> price,
    String total,
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
    return PostCheckoutFormProvider(
      userName,
      address,
      email,
      payMethod,
      delivery,
      deliveryType,
      street,
      delCost,
      coupon,
      postId,
      itemId,
      postName,
      qty,
      price,
      total,
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
  PostCheckoutFormProvider getProviderOverride(
    covariant PostCheckoutFormProvider provider,
  ) {
    return call(
      provider.userName,
      provider.address,
      provider.email,
      provider.payMethod,
      provider.delivery,
      provider.deliveryType,
      provider.street,
      provider.delCost,
      provider.coupon,
      provider.postId,
      provider.itemId,
      provider.postName,
      provider.qty,
      provider.price,
      provider.total,
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
  String? get name => r'postCheckoutFormProvider';
}

/// See also [postCheckoutForm].
class PostCheckoutFormProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [postCheckoutForm].
  PostCheckoutFormProvider(
    String userName,
    String address,
    String email,
    String payMethod,
    String delivery,
    String deliveryType,
    String street,
    String? delCost,
    String? coupon,
    List<String?> postId,
    List<String> itemId,
    List<String> postName,
    List<String> qty,
    List<String> price,
    String total,
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
          (ref) => postCheckoutForm(
            ref as PostCheckoutFormRef,
            userName,
            address,
            email,
            payMethod,
            delivery,
            deliveryType,
            street,
            delCost,
            coupon,
            postId,
            itemId,
            postName,
            qty,
            price,
            total,
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
          from: postCheckoutFormProvider,
          name: r'postCheckoutFormProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$postCheckoutFormHash,
          dependencies: PostCheckoutFormFamily._dependencies,
          allTransitiveDependencies:
              PostCheckoutFormFamily._allTransitiveDependencies,
          userName: userName,
          address: address,
          email: email,
          payMethod: payMethod,
          delivery: delivery,
          deliveryType: deliveryType,
          street: street,
          delCost: delCost,
          coupon: coupon,
          postId: postId,
          itemId: itemId,
          postName: postName,
          qty: qty,
          price: price,
          total: total,
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

  PostCheckoutFormProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userName,
    required this.address,
    required this.email,
    required this.payMethod,
    required this.delivery,
    required this.deliveryType,
    required this.street,
    required this.delCost,
    required this.coupon,
    required this.postId,
    required this.itemId,
    required this.postName,
    required this.qty,
    required this.price,
    required this.total,
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

  final String userName;
  final String address;
  final String email;
  final String payMethod;
  final String delivery;
  final String deliveryType;
  final String street;
  final String? delCost;
  final String? coupon;
  final List<String?> postId;
  final List<String> itemId;
  final List<String> postName;
  final List<String> qty;
  final List<String> price;
  final String total;
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
    FutureOr<bool> Function(PostCheckoutFormRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PostCheckoutFormProvider._internal(
        (ref) => create(ref as PostCheckoutFormRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userName: userName,
        address: address,
        email: email,
        payMethod: payMethod,
        delivery: delivery,
        deliveryType: deliveryType,
        street: street,
        delCost: delCost,
        coupon: coupon,
        postId: postId,
        itemId: itemId,
        postName: postName,
        qty: qty,
        price: price,
        total: total,
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
    return _PostCheckoutFormProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PostCheckoutFormProvider &&
        other.userName == userName &&
        other.address == address &&
        other.email == email &&
        other.payMethod == payMethod &&
        other.delivery == delivery &&
        other.deliveryType == deliveryType &&
        other.street == street &&
        other.delCost == delCost &&
        other.coupon == coupon &&
        other.postId == postId &&
        other.itemId == itemId &&
        other.postName == postName &&
        other.qty == qty &&
        other.price == price &&
        other.total == total &&
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
    hash = _SystemHash.combine(hash, userName.hashCode);
    hash = _SystemHash.combine(hash, address.hashCode);
    hash = _SystemHash.combine(hash, email.hashCode);
    hash = _SystemHash.combine(hash, payMethod.hashCode);
    hash = _SystemHash.combine(hash, delivery.hashCode);
    hash = _SystemHash.combine(hash, deliveryType.hashCode);
    hash = _SystemHash.combine(hash, street.hashCode);
    hash = _SystemHash.combine(hash, delCost.hashCode);
    hash = _SystemHash.combine(hash, coupon.hashCode);
    hash = _SystemHash.combine(hash, postId.hashCode);
    hash = _SystemHash.combine(hash, itemId.hashCode);
    hash = _SystemHash.combine(hash, postName.hashCode);
    hash = _SystemHash.combine(hash, qty.hashCode);
    hash = _SystemHash.combine(hash, price.hashCode);
    hash = _SystemHash.combine(hash, total.hashCode);
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
mixin PostCheckoutFormRef on AutoDisposeFutureProviderRef<bool> {
  /// The parameter `userName` of this provider.
  String get userName;

  /// The parameter `address` of this provider.
  String get address;

  /// The parameter `email` of this provider.
  String get email;

  /// The parameter `payMethod` of this provider.
  String get payMethod;

  /// The parameter `delivery` of this provider.
  String get delivery;

  /// The parameter `deliveryType` of this provider.
  String get deliveryType;

  /// The parameter `street` of this provider.
  String get street;

  /// The parameter `delCost` of this provider.
  String? get delCost;

  /// The parameter `coupon` of this provider.
  String? get coupon;

  /// The parameter `postId` of this provider.
  List<String?> get postId;

  /// The parameter `itemId` of this provider.
  List<String> get itemId;

  /// The parameter `postName` of this provider.
  List<String> get postName;

  /// The parameter `qty` of this provider.
  List<String> get qty;

  /// The parameter `price` of this provider.
  List<String> get price;

  /// The parameter `total` of this provider.
  String get total;

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

class _PostCheckoutFormProviderElement
    extends AutoDisposeFutureProviderElement<bool> with PostCheckoutFormRef {
  _PostCheckoutFormProviderElement(super.provider);

  @override
  String get userName => (origin as PostCheckoutFormProvider).userName;
  @override
  String get address => (origin as PostCheckoutFormProvider).address;
  @override
  String get email => (origin as PostCheckoutFormProvider).email;
  @override
  String get payMethod => (origin as PostCheckoutFormProvider).payMethod;
  @override
  String get delivery => (origin as PostCheckoutFormProvider).delivery;
  @override
  String get deliveryType => (origin as PostCheckoutFormProvider).deliveryType;
  @override
  String get street => (origin as PostCheckoutFormProvider).street;
  @override
  String? get delCost => (origin as PostCheckoutFormProvider).delCost;
  @override
  String? get coupon => (origin as PostCheckoutFormProvider).coupon;
  @override
  List<String?> get postId => (origin as PostCheckoutFormProvider).postId;
  @override
  List<String> get itemId => (origin as PostCheckoutFormProvider).itemId;
  @override
  List<String> get postName => (origin as PostCheckoutFormProvider).postName;
  @override
  List<String> get qty => (origin as PostCheckoutFormProvider).qty;
  @override
  List<String> get price => (origin as PostCheckoutFormProvider).price;
  @override
  String get total => (origin as PostCheckoutFormProvider).total;
  @override
  String get token => (origin as PostCheckoutFormProvider).token;
  @override
  String get zoneId => (origin as PostCheckoutFormProvider).zoneId;
  @override
  List<double> get pickupCoordinates =>
      (origin as PostCheckoutFormProvider).pickupCoordinates;
  @override
  List<double> get customerCoordinates =>
      (origin as PostCheckoutFormProvider).customerCoordinates;
  @override
  List<double> get customerRequestCoordinates =>
      (origin as PostCheckoutFormProvider).customerRequestCoordinates;
  @override
  List<double> get destinationCoordinates =>
      (origin as PostCheckoutFormProvider).destinationCoordinates;
  @override
  int get getestimateid => (origin as PostCheckoutFormProvider).getestimateid;
  @override
  double get estimatedFare =>
      (origin as PostCheckoutFormProvider).estimatedFare;
  @override
  double get estimatedDistance =>
      (origin as PostCheckoutFormProvider).estimatedDistance;
  @override
  double get estimatedTime =>
      (origin as PostCheckoutFormProvider).estimatedTime;
  @override
  String get pickupAddress =>
      (origin as PostCheckoutFormProvider).pickupAddress;
  @override
  String get destinationAddress =>
      (origin as PostCheckoutFormProvider).destinationAddress;
  @override
  int get vendorId => (origin as PostCheckoutFormProvider).vendorId;
  @override
  String get type => (origin as PostCheckoutFormProvider).type;
  @override
  double get returnFee => (origin as PostCheckoutFormProvider).returnFee;
  @override
  double get cancellationFee =>
      (origin as PostCheckoutFormProvider).cancellationFee;
  @override
  String get senderName => (origin as PostCheckoutFormProvider).senderName;
  @override
  String get senderPhone => (origin as PostCheckoutFormProvider).senderPhone;
  @override
  String get senderAddress =>
      (origin as PostCheckoutFormProvider).senderAddress;
  @override
  String get receiverName => (origin as PostCheckoutFormProvider).receiverName;
  @override
  String get receiverPhone =>
      (origin as PostCheckoutFormProvider).receiverPhone;
  @override
  String get receiverAddress =>
      (origin as PostCheckoutFormProvider).receiverAddress;
  @override
  String get parcelCategoryId =>
      (origin as PostCheckoutFormProvider).parcelCategoryId;
  @override
  double get weight => (origin as PostCheckoutFormProvider).weight;
  @override
  String get payer => (origin as PostCheckoutFormProvider).payer;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
