// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_gift_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$postgiftHash() => r'8f934bb49eea9b45133d08d58dad8d5f526bc048';

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

/// See also [postgift].
@ProviderFor(postgift)
const postgiftProvider = PostgiftFamily();

/// See also [postgift].
class PostgiftFamily extends Family<AsyncValue<bool>> {
  /// See also [postgift].
  const PostgiftFamily();

  /// See also [postgift].
  PostgiftProvider call(
    String gift,
    String giftWorth,
    String giftType,
    String giftQty,
    File imageFile,
  ) {
    return PostgiftProvider(
      gift,
      giftWorth,
      giftType,
      giftQty,
      imageFile,
    );
  }

  @override
  PostgiftProvider getProviderOverride(
    covariant PostgiftProvider provider,
  ) {
    return call(
      provider.gift,
      provider.giftWorth,
      provider.giftType,
      provider.giftQty,
      provider.imageFile,
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
  String? get name => r'postgiftProvider';
}

/// See also [postgift].
class PostgiftProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [postgift].
  PostgiftProvider(
    String gift,
    String giftWorth,
    String giftType,
    String giftQty,
    File imageFile,
  ) : this._internal(
          (ref) => postgift(
            ref as PostgiftRef,
            gift,
            giftWorth,
            giftType,
            giftQty,
            imageFile,
          ),
          from: postgiftProvider,
          name: r'postgiftProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$postgiftHash,
          dependencies: PostgiftFamily._dependencies,
          allTransitiveDependencies: PostgiftFamily._allTransitiveDependencies,
          gift: gift,
          giftWorth: giftWorth,
          giftType: giftType,
          giftQty: giftQty,
          imageFile: imageFile,
        );

  PostgiftProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.gift,
    required this.giftWorth,
    required this.giftType,
    required this.giftQty,
    required this.imageFile,
  }) : super.internal();

  final String gift;
  final String giftWorth;
  final String giftType;
  final String giftQty;
  final File imageFile;

  @override
  Override overrideWith(
    FutureOr<bool> Function(PostgiftRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PostgiftProvider._internal(
        (ref) => create(ref as PostgiftRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        gift: gift,
        giftWorth: giftWorth,
        giftType: giftType,
        giftQty: giftQty,
        imageFile: imageFile,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<bool> createElement() {
    return _PostgiftProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PostgiftProvider &&
        other.gift == gift &&
        other.giftWorth == giftWorth &&
        other.giftType == giftType &&
        other.giftQty == giftQty &&
        other.imageFile == imageFile;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, gift.hashCode);
    hash = _SystemHash.combine(hash, giftWorth.hashCode);
    hash = _SystemHash.combine(hash, giftType.hashCode);
    hash = _SystemHash.combine(hash, giftQty.hashCode);
    hash = _SystemHash.combine(hash, imageFile.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PostgiftRef on AutoDisposeFutureProviderRef<bool> {
  /// The parameter `gift` of this provider.
  String get gift;

  /// The parameter `giftWorth` of this provider.
  String get giftWorth;

  /// The parameter `giftType` of this provider.
  String get giftType;

  /// The parameter `giftQty` of this provider.
  String get giftQty;

  /// The parameter `imageFile` of this provider.
  File get imageFile;
}

class _PostgiftProviderElement extends AutoDisposeFutureProviderElement<bool>
    with PostgiftRef {
  _PostgiftProviderElement(super.provider);

  @override
  String get gift => (origin as PostgiftProvider).gift;
  @override
  String get giftWorth => (origin as PostgiftProvider).giftWorth;
  @override
  String get giftType => (origin as PostgiftProvider).giftType;
  @override
  String get giftQty => (origin as PostgiftProvider).giftQty;
  @override
  File get imageFile => (origin as PostgiftProvider).imageFile;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
