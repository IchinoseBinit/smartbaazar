// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout_form_submission_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$postCheckoutFormHash() => r'c7359e0deb9807cf85c584c55f7a47ef04dcc97b';

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
    String city,
    String street,
    String? coupon,
    List<String?> postId,
    List<String> itemId,
    List<String> postName,
    List<String> qty,
    List<String> price,
    String total,
    List<String?> imagePath,
  ) {
    return PostCheckoutFormProvider(
      userName,
      address,
      email,
      payMethod,
      delivery,
      deliveryType,
      city,
      street,
      coupon,
      postId,
      itemId,
      postName,
      qty,
      price,
      total,
      imagePath,
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
      provider.city,
      provider.street,
      provider.coupon,
      provider.postId,
      provider.itemId,
      provider.postName,
      provider.qty,
      provider.price,
      provider.total,
      provider.imagePath,
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
    String city,
    String street,
    String? coupon,
    List<String?> postId,
    List<String> itemId,
    List<String> postName,
    List<String> qty,
    List<String> price,
    String total,
    List<String?> imagePath,
  ) : this._internal(
          (ref) => postCheckoutForm(
            ref as PostCheckoutFormRef,
            userName,
            address,
            email,
            payMethod,
            delivery,
            deliveryType,
            city,
            street,
            coupon,
            postId,
            itemId,
            postName,
            qty,
            price,
            total,
            imagePath,
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
          city: city,
          street: street,
          coupon: coupon,
          postId: postId,
          itemId: itemId,
          postName: postName,
          qty: qty,
          price: price,
          total: total,
          imagePath: imagePath,
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
    required this.city,
    required this.street,
    required this.coupon,
    required this.postId,
    required this.itemId,
    required this.postName,
    required this.qty,
    required this.price,
    required this.total,
    required this.imagePath,
  }) : super.internal();

  final String userName;
  final String address;
  final String email;
  final String payMethod;
  final String delivery;
  final String deliveryType;
  final String city;
  final String street;
  final String? coupon;
  final List<String?> postId;
  final List<String> itemId;
  final List<String> postName;
  final List<String> qty;
  final List<String> price;
  final String total;
  final List<String?> imagePath;

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
        city: city,
        street: street,
        coupon: coupon,
        postId: postId,
        itemId: itemId,
        postName: postName,
        qty: qty,
        price: price,
        total: total,
        imagePath: imagePath,
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
        other.city == city &&
        other.street == street &&
        other.coupon == coupon &&
        other.postId == postId &&
        other.itemId == itemId &&
        other.postName == postName &&
        other.qty == qty &&
        other.price == price &&
        other.total == total &&
        other.imagePath == imagePath;
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
    hash = _SystemHash.combine(hash, city.hashCode);
    hash = _SystemHash.combine(hash, street.hashCode);
    hash = _SystemHash.combine(hash, coupon.hashCode);
    hash = _SystemHash.combine(hash, postId.hashCode);
    hash = _SystemHash.combine(hash, itemId.hashCode);
    hash = _SystemHash.combine(hash, postName.hashCode);
    hash = _SystemHash.combine(hash, qty.hashCode);
    hash = _SystemHash.combine(hash, price.hashCode);
    hash = _SystemHash.combine(hash, total.hashCode);
    hash = _SystemHash.combine(hash, imagePath.hashCode);

    return _SystemHash.finish(hash);
  }
}

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

  /// The parameter `city` of this provider.
  String get city;

  /// The parameter `street` of this provider.
  String get street;

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

  /// The parameter `imagePath` of this provider.
  List<String?> get imagePath;
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
  String get city => (origin as PostCheckoutFormProvider).city;
  @override
  String get street => (origin as PostCheckoutFormProvider).street;
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
  List<String?> get imagePath => (origin as PostCheckoutFormProvider).imagePath;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
