// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_listing_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$updatelistingHash() => r'0fa6f8ccb395ef6ebfdf4c7b478a1fc022aebc7c';

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

/// See also [updatelisting].
@ProviderFor(updatelisting)
const updatelistingProvider = UpdatelistingFamily();

/// See also [updatelisting].
class UpdatelistingFamily extends Family<AsyncValue<String>> {
  /// See also [updatelisting].
  const UpdatelistingFamily();

  /// See also [updatelisting].
  UpdatelistingProvider call(
    String num, {
    List<List<dynamic>>? cf,
    List<String>? tags,
    required String category,
    required String stock,
    String? mileage,
    String? warrenty,
    required String title,
    required String city,
    required String price,
    required String description,
    String? length,
    String? width,
    String? height,
    String? weight,
    String? disprice,
    required String posttype,
    required String email,
    required String phone,
    required String username,
    required String pickup,
    List<File?>? images,
    required String accept,
    required String address,
    String? offer,
    String? story,
    String? youtube,
    int? package,
    List<Map<String, String>>? pieces,
    double? lat,
    double? long,
    int? hyperd,
    int? seller,
  }) {
    return UpdatelistingProvider(
      num,
      cf: cf,
      tags: tags,
      category: category,
      stock: stock,
      mileage: mileage,
      warrenty: warrenty,
      title: title,
      city: city,
      price: price,
      description: description,
      length: length,
      width: width,
      height: height,
      weight: weight,
      disprice: disprice,
      posttype: posttype,
      email: email,
      phone: phone,
      username: username,
      pickup: pickup,
      images: images,
      accept: accept,
      address: address,
      offer: offer,
      story: story,
      youtube: youtube,
      package: package,
      pieces: pieces,
      lat: lat,
      long: long,
      hyperd: hyperd,
      seller: seller,
    );
  }

  @override
  UpdatelistingProvider getProviderOverride(
    covariant UpdatelistingProvider provider,
  ) {
    return call(
      provider.num,
      cf: provider.cf,
      tags: provider.tags,
      category: provider.category,
      stock: provider.stock,
      mileage: provider.mileage,
      warrenty: provider.warrenty,
      title: provider.title,
      city: provider.city,
      price: provider.price,
      description: provider.description,
      length: provider.length,
      width: provider.width,
      height: provider.height,
      weight: provider.weight,
      disprice: provider.disprice,
      posttype: provider.posttype,
      email: provider.email,
      phone: provider.phone,
      username: provider.username,
      pickup: provider.pickup,
      images: provider.images,
      accept: provider.accept,
      address: provider.address,
      offer: provider.offer,
      story: provider.story,
      youtube: provider.youtube,
      package: provider.package,
      pieces: provider.pieces,
      lat: provider.lat,
      long: provider.long,
      hyperd: provider.hyperd,
      seller: provider.seller,
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
  String? get name => r'updatelistingProvider';
}

/// See also [updatelisting].
class UpdatelistingProvider extends AutoDisposeFutureProvider<String> {
  /// See also [updatelisting].
  UpdatelistingProvider(
    String num, {
    List<List<dynamic>>? cf,
    List<String>? tags,
    required String category,
    required String stock,
    String? mileage,
    String? warrenty,
    required String title,
    required String city,
    required String price,
    required String description,
    String? length,
    String? width,
    String? height,
    String? weight,
    String? disprice,
    required String posttype,
    required String email,
    required String phone,
    required String username,
    required String pickup,
    List<File?>? images,
    required String accept,
    required String address,
    String? offer,
    String? story,
    String? youtube,
    int? package,
    List<Map<String, String>>? pieces,
    double? lat,
    double? long,
    int? hyperd,
    int? seller,
  }) : this._internal(
          (ref) => updatelisting(
            ref as UpdatelistingRef,
            num,
            cf: cf,
            tags: tags,
            category: category,
            stock: stock,
            mileage: mileage,
            warrenty: warrenty,
            title: title,
            city: city,
            price: price,
            description: description,
            length: length,
            width: width,
            height: height,
            weight: weight,
            disprice: disprice,
            posttype: posttype,
            email: email,
            phone: phone,
            username: username,
            pickup: pickup,
            images: images,
            accept: accept,
            address: address,
            offer: offer,
            story: story,
            youtube: youtube,
            package: package,
            pieces: pieces,
            lat: lat,
            long: long,
            hyperd: hyperd,
            seller: seller,
          ),
          from: updatelistingProvider,
          name: r'updatelistingProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updatelistingHash,
          dependencies: UpdatelistingFamily._dependencies,
          allTransitiveDependencies:
              UpdatelistingFamily._allTransitiveDependencies,
          num: num,
          cf: cf,
          tags: tags,
          category: category,
          stock: stock,
          mileage: mileage,
          warrenty: warrenty,
          title: title,
          city: city,
          price: price,
          description: description,
          length: length,
          width: width,
          height: height,
          weight: weight,
          disprice: disprice,
          posttype: posttype,
          email: email,
          phone: phone,
          username: username,
          pickup: pickup,
          images: images,
          accept: accept,
          address: address,
          offer: offer,
          story: story,
          youtube: youtube,
          package: package,
          pieces: pieces,
          lat: lat,
          long: long,
          hyperd: hyperd,
          seller: seller,
        );

  UpdatelistingProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.num,
    required this.cf,
    required this.tags,
    required this.category,
    required this.stock,
    required this.mileage,
    required this.warrenty,
    required this.title,
    required this.city,
    required this.price,
    required this.description,
    required this.length,
    required this.width,
    required this.height,
    required this.weight,
    required this.disprice,
    required this.posttype,
    required this.email,
    required this.phone,
    required this.username,
    required this.pickup,
    required this.images,
    required this.accept,
    required this.address,
    required this.offer,
    required this.story,
    required this.youtube,
    required this.package,
    required this.pieces,
    required this.lat,
    required this.long,
    required this.hyperd,
    required this.seller,
  }) : super.internal();

  final String num;
  final List<List<dynamic>>? cf;
  final List<String>? tags;
  final String category;
  final String stock;
  final String? mileage;
  final String? warrenty;
  final String title;
  final String city;
  final String price;
  final String description;
  final String? length;
  final String? width;
  final String? height;
  final String? weight;
  final String? disprice;
  final String posttype;
  final String email;
  final String phone;
  final String username;
  final String pickup;
  final List<File?>? images;
  final String accept;
  final String address;
  final String? offer;
  final String? story;
  final String? youtube;
  final int? package;
  final List<Map<String, String>>? pieces;
  final double? lat;
  final double? long;
  final int? hyperd;
  final int? seller;

  @override
  Override overrideWith(
    FutureOr<String> Function(UpdatelistingRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UpdatelistingProvider._internal(
        (ref) => create(ref as UpdatelistingRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        num: num,
        cf: cf,
        tags: tags,
        category: category,
        stock: stock,
        mileage: mileage,
        warrenty: warrenty,
        title: title,
        city: city,
        price: price,
        description: description,
        length: length,
        width: width,
        height: height,
        weight: weight,
        disprice: disprice,
        posttype: posttype,
        email: email,
        phone: phone,
        username: username,
        pickup: pickup,
        images: images,
        accept: accept,
        address: address,
        offer: offer,
        story: story,
        youtube: youtube,
        package: package,
        pieces: pieces,
        lat: lat,
        long: long,
        hyperd: hyperd,
        seller: seller,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<String> createElement() {
    return _UpdatelistingProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdatelistingProvider &&
        other.num == num &&
        other.cf == cf &&
        other.tags == tags &&
        other.category == category &&
        other.stock == stock &&
        other.mileage == mileage &&
        other.warrenty == warrenty &&
        other.title == title &&
        other.city == city &&
        other.price == price &&
        other.description == description &&
        other.length == length &&
        other.width == width &&
        other.height == height &&
        other.weight == weight &&
        other.disprice == disprice &&
        other.posttype == posttype &&
        other.email == email &&
        other.phone == phone &&
        other.username == username &&
        other.pickup == pickup &&
        other.images == images &&
        other.accept == accept &&
        other.address == address &&
        other.offer == offer &&
        other.story == story &&
        other.youtube == youtube &&
        other.package == package &&
        other.pieces == pieces &&
        other.lat == lat &&
        other.long == long &&
        other.hyperd == hyperd &&
        other.seller == seller;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, num.hashCode);
    hash = _SystemHash.combine(hash, cf.hashCode);
    hash = _SystemHash.combine(hash, tags.hashCode);
    hash = _SystemHash.combine(hash, category.hashCode);
    hash = _SystemHash.combine(hash, stock.hashCode);
    hash = _SystemHash.combine(hash, mileage.hashCode);
    hash = _SystemHash.combine(hash, warrenty.hashCode);
    hash = _SystemHash.combine(hash, title.hashCode);
    hash = _SystemHash.combine(hash, city.hashCode);
    hash = _SystemHash.combine(hash, price.hashCode);
    hash = _SystemHash.combine(hash, description.hashCode);
    hash = _SystemHash.combine(hash, length.hashCode);
    hash = _SystemHash.combine(hash, width.hashCode);
    hash = _SystemHash.combine(hash, height.hashCode);
    hash = _SystemHash.combine(hash, weight.hashCode);
    hash = _SystemHash.combine(hash, disprice.hashCode);
    hash = _SystemHash.combine(hash, posttype.hashCode);
    hash = _SystemHash.combine(hash, email.hashCode);
    hash = _SystemHash.combine(hash, phone.hashCode);
    hash = _SystemHash.combine(hash, username.hashCode);
    hash = _SystemHash.combine(hash, pickup.hashCode);
    hash = _SystemHash.combine(hash, images.hashCode);
    hash = _SystemHash.combine(hash, accept.hashCode);
    hash = _SystemHash.combine(hash, address.hashCode);
    hash = _SystemHash.combine(hash, offer.hashCode);
    hash = _SystemHash.combine(hash, story.hashCode);
    hash = _SystemHash.combine(hash, youtube.hashCode);
    hash = _SystemHash.combine(hash, package.hashCode);
    hash = _SystemHash.combine(hash, pieces.hashCode);
    hash = _SystemHash.combine(hash, lat.hashCode);
    hash = _SystemHash.combine(hash, long.hashCode);
    hash = _SystemHash.combine(hash, hyperd.hashCode);
    hash = _SystemHash.combine(hash, seller.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin UpdatelistingRef on AutoDisposeFutureProviderRef<String> {
  /// The parameter `num` of this provider.
  String get num;

  /// The parameter `cf` of this provider.
  List<List<dynamic>>? get cf;

  /// The parameter `tags` of this provider.
  List<String>? get tags;

  /// The parameter `category` of this provider.
  String get category;

  /// The parameter `stock` of this provider.
  String get stock;

  /// The parameter `mileage` of this provider.
  String? get mileage;

  /// The parameter `warrenty` of this provider.
  String? get warrenty;

  /// The parameter `title` of this provider.
  String get title;

  /// The parameter `city` of this provider.
  String get city;

  /// The parameter `price` of this provider.
  String get price;

  /// The parameter `description` of this provider.
  String get description;

  /// The parameter `length` of this provider.
  String? get length;

  /// The parameter `width` of this provider.
  String? get width;

  /// The parameter `height` of this provider.
  String? get height;

  /// The parameter `weight` of this provider.
  String? get weight;

  /// The parameter `disprice` of this provider.
  String? get disprice;

  /// The parameter `posttype` of this provider.
  String get posttype;

  /// The parameter `email` of this provider.
  String get email;

  /// The parameter `phone` of this provider.
  String get phone;

  /// The parameter `username` of this provider.
  String get username;

  /// The parameter `pickup` of this provider.
  String get pickup;

  /// The parameter `images` of this provider.
  List<File?>? get images;

  /// The parameter `accept` of this provider.
  String get accept;

  /// The parameter `address` of this provider.
  String get address;

  /// The parameter `offer` of this provider.
  String? get offer;

  /// The parameter `story` of this provider.
  String? get story;

  /// The parameter `youtube` of this provider.
  String? get youtube;

  /// The parameter `package` of this provider.
  int? get package;

  /// The parameter `pieces` of this provider.
  List<Map<String, String>>? get pieces;

  /// The parameter `lat` of this provider.
  double? get lat;

  /// The parameter `long` of this provider.
  double? get long;

  /// The parameter `hyperd` of this provider.
  int? get hyperd;

  /// The parameter `seller` of this provider.
  int? get seller;
}

class _UpdatelistingProviderElement
    extends AutoDisposeFutureProviderElement<String> with UpdatelistingRef {
  _UpdatelistingProviderElement(super.provider);

  @override
  String get num => (origin as UpdatelistingProvider).num;
  @override
  List<List<dynamic>>? get cf => (origin as UpdatelistingProvider).cf;
  @override
  List<String>? get tags => (origin as UpdatelistingProvider).tags;
  @override
  String get category => (origin as UpdatelistingProvider).category;
  @override
  String get stock => (origin as UpdatelistingProvider).stock;
  @override
  String? get mileage => (origin as UpdatelistingProvider).mileage;
  @override
  String? get warrenty => (origin as UpdatelistingProvider).warrenty;
  @override
  String get title => (origin as UpdatelistingProvider).title;
  @override
  String get city => (origin as UpdatelistingProvider).city;
  @override
  String get price => (origin as UpdatelistingProvider).price;
  @override
  String get description => (origin as UpdatelistingProvider).description;
  @override
  String? get length => (origin as UpdatelistingProvider).length;
  @override
  String? get width => (origin as UpdatelistingProvider).width;
  @override
  String? get height => (origin as UpdatelistingProvider).height;
  @override
  String? get weight => (origin as UpdatelistingProvider).weight;
  @override
  String? get disprice => (origin as UpdatelistingProvider).disprice;
  @override
  String get posttype => (origin as UpdatelistingProvider).posttype;
  @override
  String get email => (origin as UpdatelistingProvider).email;
  @override
  String get phone => (origin as UpdatelistingProvider).phone;
  @override
  String get username => (origin as UpdatelistingProvider).username;
  @override
  String get pickup => (origin as UpdatelistingProvider).pickup;
  @override
  List<File?>? get images => (origin as UpdatelistingProvider).images;
  @override
  String get accept => (origin as UpdatelistingProvider).accept;
  @override
  String get address => (origin as UpdatelistingProvider).address;
  @override
  String? get offer => (origin as UpdatelistingProvider).offer;
  @override
  String? get story => (origin as UpdatelistingProvider).story;
  @override
  String? get youtube => (origin as UpdatelistingProvider).youtube;
  @override
  int? get package => (origin as UpdatelistingProvider).package;
  @override
  List<Map<String, String>>? get pieces =>
      (origin as UpdatelistingProvider).pieces;
  @override
  double? get lat => (origin as UpdatelistingProvider).lat;
  @override
  double? get long => (origin as UpdatelistingProvider).long;
  @override
  int? get hyperd => (origin as UpdatelistingProvider).hyperd;
  @override
  int? get seller => (origin as UpdatelistingProvider).seller;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
