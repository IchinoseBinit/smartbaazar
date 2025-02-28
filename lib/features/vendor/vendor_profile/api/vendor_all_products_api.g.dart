// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_all_products_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getVendorAllProductsHash() =>
    r'1390bc8e85f00a7cede83d0750c944707c078a0a';

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

/// See also [getVendorAllProducts].
@ProviderFor(getVendorAllProducts)
const getVendorAllProductsProvider = GetVendorAllProductsFamily();

/// See also [getVendorAllProducts].
class GetVendorAllProductsFamily
    extends Family<AsyncValue<VendorAllProductsResponse>> {
  /// See also [getVendorAllProducts].
  const GetVendorAllProductsFamily();

  /// See also [getVendorAllProducts].
  GetVendorAllProductsProvider call(
    int vendorid, {
    int page = 1,
  }) {
    return GetVendorAllProductsProvider(
      vendorid,
      page: page,
    );
  }

  @override
  GetVendorAllProductsProvider getProviderOverride(
    covariant GetVendorAllProductsProvider provider,
  ) {
    return call(
      provider.vendorid,
      page: provider.page,
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
  String? get name => r'getVendorAllProductsProvider';
}

/// See also [getVendorAllProducts].
class GetVendorAllProductsProvider
    extends AutoDisposeFutureProvider<VendorAllProductsResponse> {
  /// See also [getVendorAllProducts].
  GetVendorAllProductsProvider(
    int vendorid, {
    int page = 1,
  }) : this._internal(
          (ref) => getVendorAllProducts(
            ref as GetVendorAllProductsRef,
            vendorid,
            page: page,
          ),
          from: getVendorAllProductsProvider,
          name: r'getVendorAllProductsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getVendorAllProductsHash,
          dependencies: GetVendorAllProductsFamily._dependencies,
          allTransitiveDependencies:
              GetVendorAllProductsFamily._allTransitiveDependencies,
          vendorid: vendorid,
          page: page,
        );

  GetVendorAllProductsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.vendorid,
    required this.page,
  }) : super.internal();

  final int vendorid;
  final int page;

  @override
  Override overrideWith(
    FutureOr<VendorAllProductsResponse> Function(
            GetVendorAllProductsRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetVendorAllProductsProvider._internal(
        (ref) => create(ref as GetVendorAllProductsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        vendorid: vendorid,
        page: page,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<VendorAllProductsResponse> createElement() {
    return _GetVendorAllProductsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetVendorAllProductsProvider &&
        other.vendorid == vendorid &&
        other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, vendorid.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetVendorAllProductsRef
    on AutoDisposeFutureProviderRef<VendorAllProductsResponse> {
  /// The parameter `vendorid` of this provider.
  int get vendorid;

  /// The parameter `page` of this provider.
  int get page;
}

class _GetVendorAllProductsProviderElement
    extends AutoDisposeFutureProviderElement<VendorAllProductsResponse>
    with GetVendorAllProductsRef {
  _GetVendorAllProductsProviderElement(super.provider);

  @override
  int get vendorid => (origin as GetVendorAllProductsProvider).vendorid;
  @override
  int get page => (origin as GetVendorAllProductsProvider).page;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
