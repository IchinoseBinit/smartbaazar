// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_new_listing_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$createlistingHash() => r'dc0c7d82354940549bff3eea46e09ae5787508b9';

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

/// See also [createlisting].
@ProviderFor(createlisting)
const createlistingProvider = CreatelistingFamily();

/// See also [createlisting].
class CreatelistingFamily extends Family<AsyncValue<String>> {
  /// See also [createlisting].
  const CreatelistingFamily();

  /// See also [createlisting].
  CreatelistingProvider call(
    String category,
    String title,
    String city,
    String price,
    String description,
    String length,
    String width,
    String height,
    String weight,
    String disprice,
    String type,
    String email,
    String phone,
    String username,
    String pickup,
    List<File?> images,
    String accept,
    String address,
  ) {
    return CreatelistingProvider(
      category,
      title,
      city,
      price,
      description,
      length,
      width,
      height,
      weight,
      disprice,
      type,
      email,
      phone,
      username,
      pickup,
      images,
      accept,
      address,
    );
  }

  @override
  CreatelistingProvider getProviderOverride(
    covariant CreatelistingProvider provider,
  ) {
    return call(
      provider.category,
      provider.title,
      provider.city,
      provider.price,
      provider.description,
      provider.length,
      provider.width,
      provider.height,
      provider.weight,
      provider.disprice,
      provider.type,
      provider.email,
      provider.phone,
      provider.username,
      provider.pickup,
      provider.images,
      provider.accept,
      provider.address,
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
  String? get name => r'createlistingProvider';
}

/// See also [createlisting].
class CreatelistingProvider extends AutoDisposeFutureProvider<String> {
  /// See also [createlisting].
  CreatelistingProvider(
    String category,
    String title,
    String city,
    String price,
    String description,
    String length,
    String width,
    String height,
    String weight,
    String disprice,
    String type,
    String email,
    String phone,
    String username,
    String pickup,
    List<File?> images,
    String accept,
    String address,
  ) : this._internal(
          (ref) => createlisting(
            ref as CreatelistingRef,
            category,
            title,
            city,
            price,
            description,
            length,
            width,
            height,
            weight,
            disprice,
            type,
            email,
            phone,
            username,
            pickup,
            images,
            accept,
            address,
          ),
          from: createlistingProvider,
          name: r'createlistingProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$createlistingHash,
          dependencies: CreatelistingFamily._dependencies,
          allTransitiveDependencies:
              CreatelistingFamily._allTransitiveDependencies,
          category: category,
          title: title,
          city: city,
          price: price,
          description: description,
          length: length,
          width: width,
          height: height,
          weight: weight,
          disprice: disprice,
          type: type,
          email: email,
          phone: phone,
          username: username,
          pickup: pickup,
          images: images,
          accept: accept,
          address: address,
        );

  CreatelistingProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.category,
    required this.title,
    required this.city,
    required this.price,
    required this.description,
    required this.length,
    required this.width,
    required this.height,
    required this.weight,
    required this.disprice,
    required this.type,
    required this.email,
    required this.phone,
    required this.username,
    required this.pickup,
    required this.images,
    required this.accept,
    required this.address,
  }) : super.internal();

  final String category;
  final String title;
  final String city;
  final String price;
  final String description;
  final String length;
  final String width;
  final String height;
  final String weight;
  final String disprice;
  final String type;
  final String email;
  final String phone;
  final String username;
  final String pickup;
  final List<File?> images;
  final String accept;
  final String address;

  @override
  Override overrideWith(
    FutureOr<String> Function(CreatelistingRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CreatelistingProvider._internal(
        (ref) => create(ref as CreatelistingRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        category: category,
        title: title,
        city: city,
        price: price,
        description: description,
        length: length,
        width: width,
        height: height,
        weight: weight,
        disprice: disprice,
        type: type,
        email: email,
        phone: phone,
        username: username,
        pickup: pickup,
        images: images,
        accept: accept,
        address: address,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<String> createElement() {
    return _CreatelistingProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CreatelistingProvider &&
        other.category == category &&
        other.title == title &&
        other.city == city &&
        other.price == price &&
        other.description == description &&
        other.length == length &&
        other.width == width &&
        other.height == height &&
        other.weight == weight &&
        other.disprice == disprice &&
        other.type == type &&
        other.email == email &&
        other.phone == phone &&
        other.username == username &&
        other.pickup == pickup &&
        other.images == images &&
        other.accept == accept &&
        other.address == address;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, category.hashCode);
    hash = _SystemHash.combine(hash, title.hashCode);
    hash = _SystemHash.combine(hash, city.hashCode);
    hash = _SystemHash.combine(hash, price.hashCode);
    hash = _SystemHash.combine(hash, description.hashCode);
    hash = _SystemHash.combine(hash, length.hashCode);
    hash = _SystemHash.combine(hash, width.hashCode);
    hash = _SystemHash.combine(hash, height.hashCode);
    hash = _SystemHash.combine(hash, weight.hashCode);
    hash = _SystemHash.combine(hash, disprice.hashCode);
    hash = _SystemHash.combine(hash, type.hashCode);
    hash = _SystemHash.combine(hash, email.hashCode);
    hash = _SystemHash.combine(hash, phone.hashCode);
    hash = _SystemHash.combine(hash, username.hashCode);
    hash = _SystemHash.combine(hash, pickup.hashCode);
    hash = _SystemHash.combine(hash, images.hashCode);
    hash = _SystemHash.combine(hash, accept.hashCode);
    hash = _SystemHash.combine(hash, address.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CreatelistingRef on AutoDisposeFutureProviderRef<String> {
  /// The parameter `category` of this provider.
  String get category;

  /// The parameter `title` of this provider.
  String get title;

  /// The parameter `city` of this provider.
  String get city;

  /// The parameter `price` of this provider.
  String get price;

  /// The parameter `description` of this provider.
  String get description;

  /// The parameter `length` of this provider.
  String get length;

  /// The parameter `width` of this provider.
  String get width;

  /// The parameter `height` of this provider.
  String get height;

  /// The parameter `weight` of this provider.
  String get weight;

  /// The parameter `disprice` of this provider.
  String get disprice;

  /// The parameter `type` of this provider.
  String get type;

  /// The parameter `email` of this provider.
  String get email;

  /// The parameter `phone` of this provider.
  String get phone;

  /// The parameter `username` of this provider.
  String get username;

  /// The parameter `pickup` of this provider.
  String get pickup;

  /// The parameter `images` of this provider.
  List<File?> get images;

  /// The parameter `accept` of this provider.
  String get accept;

  /// The parameter `address` of this provider.
  String get address;
}

class _CreatelistingProviderElement
    extends AutoDisposeFutureProviderElement<String> with CreatelistingRef {
  _CreatelistingProviderElement(super.provider);

  @override
  String get category => (origin as CreatelistingProvider).category;
  @override
  String get title => (origin as CreatelistingProvider).title;
  @override
  String get city => (origin as CreatelistingProvider).city;
  @override
  String get price => (origin as CreatelistingProvider).price;
  @override
  String get description => (origin as CreatelistingProvider).description;
  @override
  String get length => (origin as CreatelistingProvider).length;
  @override
  String get width => (origin as CreatelistingProvider).width;
  @override
  String get height => (origin as CreatelistingProvider).height;
  @override
  String get weight => (origin as CreatelistingProvider).weight;
  @override
  String get disprice => (origin as CreatelistingProvider).disprice;
  @override
  String get type => (origin as CreatelistingProvider).type;
  @override
  String get email => (origin as CreatelistingProvider).email;
  @override
  String get phone => (origin as CreatelistingProvider).phone;
  @override
  String get username => (origin as CreatelistingProvider).username;
  @override
  String get pickup => (origin as CreatelistingProvider).pickup;
  @override
  List<File?> get images => (origin as CreatelistingProvider).images;
  @override
  String get accept => (origin as CreatelistingProvider).accept;
  @override
  String get address => (origin as CreatelistingProvider).address;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
