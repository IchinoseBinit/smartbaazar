// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_search.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$vendorSearchHash() => r'98084b9f5cfc077a42b749bde5a871ec7a35a5d8';

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

/// See also [vendorSearch].
@ProviderFor(vendorSearch)
const vendorSearchProvider = VendorSearchFamily();

/// See also [vendorSearch].
class VendorSearchFamily extends Family<AsyncValue<List<SearchProductModel>>> {
  /// See also [vendorSearch].
  const VendorSearchFamily();

  /// See also [vendorSearch].
  VendorSearchProvider call(
    String query,
    int vendorId,
  ) {
    return VendorSearchProvider(
      query,
      vendorId,
    );
  }

  @override
  VendorSearchProvider getProviderOverride(
    covariant VendorSearchProvider provider,
  ) {
    return call(
      provider.query,
      provider.vendorId,
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
  String? get name => r'vendorSearchProvider';
}

/// See also [vendorSearch].
class VendorSearchProvider
    extends AutoDisposeFutureProvider<List<SearchProductModel>> {
  /// See also [vendorSearch].
  VendorSearchProvider(
    String query,
    int vendorId,
  ) : this._internal(
          (ref) => vendorSearch(
            ref as VendorSearchRef,
            query,
            vendorId,
          ),
          from: vendorSearchProvider,
          name: r'vendorSearchProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$vendorSearchHash,
          dependencies: VendorSearchFamily._dependencies,
          allTransitiveDependencies:
              VendorSearchFamily._allTransitiveDependencies,
          query: query,
          vendorId: vendorId,
        );

  VendorSearchProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.query,
    required this.vendorId,
  }) : super.internal();

  final String query;
  final int vendorId;

  @override
  Override overrideWith(
    FutureOr<List<SearchProductModel>> Function(VendorSearchRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: VendorSearchProvider._internal(
        (ref) => create(ref as VendorSearchRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        query: query,
        vendorId: vendorId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<SearchProductModel>> createElement() {
    return _VendorSearchProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is VendorSearchProvider &&
        other.query == query &&
        other.vendorId == vendorId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);
    hash = _SystemHash.combine(hash, vendorId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin VendorSearchRef
    on AutoDisposeFutureProviderRef<List<SearchProductModel>> {
  /// The parameter `query` of this provider.
  String get query;

  /// The parameter `vendorId` of this provider.
  int get vendorId;
}

class _VendorSearchProviderElement
    extends AutoDisposeFutureProviderElement<List<SearchProductModel>>
    with VendorSearchRef {
  _VendorSearchProviderElement(super.provider);

  @override
  String get query => (origin as VendorSearchProvider).query;
  @override
  int get vendorId => (origin as VendorSearchProvider).vendorId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
