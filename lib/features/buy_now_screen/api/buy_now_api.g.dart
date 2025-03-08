// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buy_now_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$buynowproductHash() => r'05f661e1e60f5d02cb1aa4da18df5c53a557bd92';

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

/// See also [buynowproduct].
@ProviderFor(buynowproduct)
const buynowproductProvider = BuynowproductFamily();

/// See also [buynowproduct].
class BuynowproductFamily extends Family<AsyncValue<PostBuyNowModel>> {
  /// See also [buynowproduct].
  const BuynowproductFamily();

  /// See also [buynowproduct].
  BuynowproductProvider call(
    int postid,
    int vendorid,
  ) {
    return BuynowproductProvider(
      postid,
      vendorid,
    );
  }

  @override
  BuynowproductProvider getProviderOverride(
    covariant BuynowproductProvider provider,
  ) {
    return call(
      provider.postid,
      provider.vendorid,
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
  String? get name => r'buynowproductProvider';
}

/// See also [buynowproduct].
class BuynowproductProvider extends AutoDisposeFutureProvider<PostBuyNowModel> {
  /// See also [buynowproduct].
  BuynowproductProvider(
    int postid,
    int vendorid,
  ) : this._internal(
          (ref) => buynowproduct(
            ref as BuynowproductRef,
            postid,
            vendorid,
          ),
          from: buynowproductProvider,
          name: r'buynowproductProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$buynowproductHash,
          dependencies: BuynowproductFamily._dependencies,
          allTransitiveDependencies:
              BuynowproductFamily._allTransitiveDependencies,
          postid: postid,
          vendorid: vendorid,
        );

  BuynowproductProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.postid,
    required this.vendorid,
  }) : super.internal();

  final int postid;
  final int vendorid;

  @override
  Override overrideWith(
    FutureOr<PostBuyNowModel> Function(BuynowproductRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: BuynowproductProvider._internal(
        (ref) => create(ref as BuynowproductRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        postid: postid,
        vendorid: vendorid,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<PostBuyNowModel> createElement() {
    return _BuynowproductProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BuynowproductProvider &&
        other.postid == postid &&
        other.vendorid == vendorid;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, postid.hashCode);
    hash = _SystemHash.combine(hash, vendorid.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin BuynowproductRef on AutoDisposeFutureProviderRef<PostBuyNowModel> {
  /// The parameter `postid` of this provider.
  int get postid;

  /// The parameter `vendorid` of this provider.
  int get vendorid;
}

class _BuynowproductProviderElement
    extends AutoDisposeFutureProviderElement<PostBuyNowModel>
    with BuynowproductRef {
  _BuynowproductProviderElement(super.provider);

  @override
  int get postid => (origin as BuynowproductProvider).postid;
  @override
  int get vendorid => (origin as BuynowproductProvider).vendorid;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
