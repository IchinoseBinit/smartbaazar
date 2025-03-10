// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_listing_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$updatelistingHash() => r'547be7ca6318d14a99a46c94a9a50b81d95c6c3a';

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
    String? category,
    String? posttype,
    String? title,
    String? description,
    String? username,
    String? phone,
    String? city_id,
    String? email,
    String? price,
    String? disprice,
    String? stock,
    String? address,
    String? length,
    String? width,
    String? height,
    String? weight,
    String? pickup,
    String? offer,
    String? story,
    String? youtube,
    double? lat,
    double? long,
    int? hyperd,
    int? seller,
    int? package,
    String? accept,
    List<String>? tags,
    List<Map<String, String>>? pieces,
    List<File?>? images,
  }) {
    return UpdatelistingProvider(
      num,
      category: category,
      posttype: posttype,
      title: title,
      description: description,
      username: username,
      phone: phone,
      city_id: city_id,
      email: email,
      price: price,
      disprice: disprice,
      stock: stock,
      address: address,
      length: length,
      width: width,
      height: height,
      weight: weight,
      pickup: pickup,
      offer: offer,
      story: story,
      youtube: youtube,
      lat: lat,
      long: long,
      hyperd: hyperd,
      seller: seller,
      package: package,
      accept: accept,
      tags: tags,
      pieces: pieces,
      images: images,
    );
  }

  @override
  UpdatelistingProvider getProviderOverride(
    covariant UpdatelistingProvider provider,
  ) {
    return call(
      provider.num,
      category: provider.category,
      posttype: provider.posttype,
      title: provider.title,
      description: provider.description,
      username: provider.username,
      phone: provider.phone,
      city_id: provider.city_id,
      email: provider.email,
      price: provider.price,
      disprice: provider.disprice,
      stock: provider.stock,
      address: provider.address,
      length: provider.length,
      width: provider.width,
      height: provider.height,
      weight: provider.weight,
      pickup: provider.pickup,
      offer: provider.offer,
      story: provider.story,
      youtube: provider.youtube,
      lat: provider.lat,
      long: provider.long,
      hyperd: provider.hyperd,
      seller: provider.seller,
      package: provider.package,
      accept: provider.accept,
      tags: provider.tags,
      pieces: provider.pieces,
      images: provider.images,
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
    String? category,
    String? posttype,
    String? title,
    String? description,
    String? username,
    String? phone,
    String? city_id,
    String? email,
    String? price,
    String? disprice,
    String? stock,
    String? address,
    String? length,
    String? width,
    String? height,
    String? weight,
    String? pickup,
    String? offer,
    String? story,
    String? youtube,
    double? lat,
    double? long,
    int? hyperd,
    int? seller,
    int? package,
    String? accept,
    List<String>? tags,
    List<Map<String, String>>? pieces,
    List<File?>? images,
  }) : this._internal(
          (ref) => updatelisting(
            ref as UpdatelistingRef,
            num,
            category: category,
            posttype: posttype,
            title: title,
            description: description,
            username: username,
            phone: phone,
            city_id: city_id,
            email: email,
            price: price,
            disprice: disprice,
            stock: stock,
            address: address,
            length: length,
            width: width,
            height: height,
            weight: weight,
            pickup: pickup,
            offer: offer,
            story: story,
            youtube: youtube,
            lat: lat,
            long: long,
            hyperd: hyperd,
            seller: seller,
            package: package,
            accept: accept,
            tags: tags,
            pieces: pieces,
            images: images,
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
          category: category,
          posttype: posttype,
          title: title,
          description: description,
          username: username,
          phone: phone,
          city_id: city_id,
          email: email,
          price: price,
          disprice: disprice,
          stock: stock,
          address: address,
          length: length,
          width: width,
          height: height,
          weight: weight,
          pickup: pickup,
          offer: offer,
          story: story,
          youtube: youtube,
          lat: lat,
          long: long,
          hyperd: hyperd,
          seller: seller,
          package: package,
          accept: accept,
          tags: tags,
          pieces: pieces,
          images: images,
        );

  UpdatelistingProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.num,
    required this.category,
    required this.posttype,
    required this.title,
    required this.description,
    required this.username,
    required this.phone,
    required this.city_id,
    required this.email,
    required this.price,
    required this.disprice,
    required this.stock,
    required this.address,
    required this.length,
    required this.width,
    required this.height,
    required this.weight,
    required this.pickup,
    required this.offer,
    required this.story,
    required this.youtube,
    required this.lat,
    required this.long,
    required this.hyperd,
    required this.seller,
    required this.package,
    required this.accept,
    required this.tags,
    required this.pieces,
    required this.images,
  }) : super.internal();

  final String num;
  final String? category;
  final String? posttype;
  final String? title;
  final String? description;
  final String? username;
  final String? phone;
  final String? city_id;
  final String? email;
  final String? price;
  final String? disprice;
  final String? stock;
  final String? address;
  final String? length;
  final String? width;
  final String? height;
  final String? weight;
  final String? pickup;
  final String? offer;
  final String? story;
  final String? youtube;
  final double? lat;
  final double? long;
  final int? hyperd;
  final int? seller;
  final int? package;
  final String? accept;
  final List<String>? tags;
  final List<Map<String, String>>? pieces;
  final List<File?>? images;

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
        category: category,
        posttype: posttype,
        title: title,
        description: description,
        username: username,
        phone: phone,
        city_id: city_id,
        email: email,
        price: price,
        disprice: disprice,
        stock: stock,
        address: address,
        length: length,
        width: width,
        height: height,
        weight: weight,
        pickup: pickup,
        offer: offer,
        story: story,
        youtube: youtube,
        lat: lat,
        long: long,
        hyperd: hyperd,
        seller: seller,
        package: package,
        accept: accept,
        tags: tags,
        pieces: pieces,
        images: images,
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
        other.category == category &&
        other.posttype == posttype &&
        other.title == title &&
        other.description == description &&
        other.username == username &&
        other.phone == phone &&
        other.city_id == city_id &&
        other.email == email &&
        other.price == price &&
        other.disprice == disprice &&
        other.stock == stock &&
        other.address == address &&
        other.length == length &&
        other.width == width &&
        other.height == height &&
        other.weight == weight &&
        other.pickup == pickup &&
        other.offer == offer &&
        other.story == story &&
        other.youtube == youtube &&
        other.lat == lat &&
        other.long == long &&
        other.hyperd == hyperd &&
        other.seller == seller &&
        other.package == package &&
        other.accept == accept &&
        other.tags == tags &&
        other.pieces == pieces &&
        other.images == images;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, num.hashCode);
    hash = _SystemHash.combine(hash, category.hashCode);
    hash = _SystemHash.combine(hash, posttype.hashCode);
    hash = _SystemHash.combine(hash, title.hashCode);
    hash = _SystemHash.combine(hash, description.hashCode);
    hash = _SystemHash.combine(hash, username.hashCode);
    hash = _SystemHash.combine(hash, phone.hashCode);
    hash = _SystemHash.combine(hash, city_id.hashCode);
    hash = _SystemHash.combine(hash, email.hashCode);
    hash = _SystemHash.combine(hash, price.hashCode);
    hash = _SystemHash.combine(hash, disprice.hashCode);
    hash = _SystemHash.combine(hash, stock.hashCode);
    hash = _SystemHash.combine(hash, address.hashCode);
    hash = _SystemHash.combine(hash, length.hashCode);
    hash = _SystemHash.combine(hash, width.hashCode);
    hash = _SystemHash.combine(hash, height.hashCode);
    hash = _SystemHash.combine(hash, weight.hashCode);
    hash = _SystemHash.combine(hash, pickup.hashCode);
    hash = _SystemHash.combine(hash, offer.hashCode);
    hash = _SystemHash.combine(hash, story.hashCode);
    hash = _SystemHash.combine(hash, youtube.hashCode);
    hash = _SystemHash.combine(hash, lat.hashCode);
    hash = _SystemHash.combine(hash, long.hashCode);
    hash = _SystemHash.combine(hash, hyperd.hashCode);
    hash = _SystemHash.combine(hash, seller.hashCode);
    hash = _SystemHash.combine(hash, package.hashCode);
    hash = _SystemHash.combine(hash, accept.hashCode);
    hash = _SystemHash.combine(hash, tags.hashCode);
    hash = _SystemHash.combine(hash, pieces.hashCode);
    hash = _SystemHash.combine(hash, images.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin UpdatelistingRef on AutoDisposeFutureProviderRef<String> {
  /// The parameter `num` of this provider.
  String get num;

  /// The parameter `category` of this provider.
  String? get category;

  /// The parameter `posttype` of this provider.
  String? get posttype;

  /// The parameter `title` of this provider.
  String? get title;

  /// The parameter `description` of this provider.
  String? get description;

  /// The parameter `username` of this provider.
  String? get username;

  /// The parameter `phone` of this provider.
  String? get phone;

  /// The parameter `city_id` of this provider.
  String? get city_id;

  /// The parameter `email` of this provider.
  String? get email;

  /// The parameter `price` of this provider.
  String? get price;

  /// The parameter `disprice` of this provider.
  String? get disprice;

  /// The parameter `stock` of this provider.
  String? get stock;

  /// The parameter `address` of this provider.
  String? get address;

  /// The parameter `length` of this provider.
  String? get length;

  /// The parameter `width` of this provider.
  String? get width;

  /// The parameter `height` of this provider.
  String? get height;

  /// The parameter `weight` of this provider.
  String? get weight;

  /// The parameter `pickup` of this provider.
  String? get pickup;

  /// The parameter `offer` of this provider.
  String? get offer;

  /// The parameter `story` of this provider.
  String? get story;

  /// The parameter `youtube` of this provider.
  String? get youtube;

  /// The parameter `lat` of this provider.
  double? get lat;

  /// The parameter `long` of this provider.
  double? get long;

  /// The parameter `hyperd` of this provider.
  int? get hyperd;

  /// The parameter `seller` of this provider.
  int? get seller;

  /// The parameter `package` of this provider.
  int? get package;

  /// The parameter `accept` of this provider.
  String? get accept;

  /// The parameter `tags` of this provider.
  List<String>? get tags;

  /// The parameter `pieces` of this provider.
  List<Map<String, String>>? get pieces;

  /// The parameter `images` of this provider.
  List<File?>? get images;
}

class _UpdatelistingProviderElement
    extends AutoDisposeFutureProviderElement<String> with UpdatelistingRef {
  _UpdatelistingProviderElement(super.provider);

  @override
  String get num => (origin as UpdatelistingProvider).num;
  @override
  String? get category => (origin as UpdatelistingProvider).category;
  @override
  String? get posttype => (origin as UpdatelistingProvider).posttype;
  @override
  String? get title => (origin as UpdatelistingProvider).title;
  @override
  String? get description => (origin as UpdatelistingProvider).description;
  @override
  String? get username => (origin as UpdatelistingProvider).username;
  @override
  String? get phone => (origin as UpdatelistingProvider).phone;
  @override
  String? get city_id => (origin as UpdatelistingProvider).city_id;
  @override
  String? get email => (origin as UpdatelistingProvider).email;
  @override
  String? get price => (origin as UpdatelistingProvider).price;
  @override
  String? get disprice => (origin as UpdatelistingProvider).disprice;
  @override
  String? get stock => (origin as UpdatelistingProvider).stock;
  @override
  String? get address => (origin as UpdatelistingProvider).address;
  @override
  String? get length => (origin as UpdatelistingProvider).length;
  @override
  String? get width => (origin as UpdatelistingProvider).width;
  @override
  String? get height => (origin as UpdatelistingProvider).height;
  @override
  String? get weight => (origin as UpdatelistingProvider).weight;
  @override
  String? get pickup => (origin as UpdatelistingProvider).pickup;
  @override
  String? get offer => (origin as UpdatelistingProvider).offer;
  @override
  String? get story => (origin as UpdatelistingProvider).story;
  @override
  String? get youtube => (origin as UpdatelistingProvider).youtube;
  @override
  double? get lat => (origin as UpdatelistingProvider).lat;
  @override
  double? get long => (origin as UpdatelistingProvider).long;
  @override
  int? get hyperd => (origin as UpdatelistingProvider).hyperd;
  @override
  int? get seller => (origin as UpdatelistingProvider).seller;
  @override
  int? get package => (origin as UpdatelistingProvider).package;
  @override
  String? get accept => (origin as UpdatelistingProvider).accept;
  @override
  List<String>? get tags => (origin as UpdatelistingProvider).tags;
  @override
  List<Map<String, String>>? get pieces =>
      (origin as UpdatelistingProvider).pieces;
  @override
  List<File?>? get images => (origin as UpdatelistingProvider).images;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
