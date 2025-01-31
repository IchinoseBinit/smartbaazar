// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_product_search_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$searchVendorProductHash() =>
    r'9aa4ec60c49a349fcd842311c9cfaaeec150783f';

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

/// See also [searchVendorProduct].
@ProviderFor(searchVendorProduct)
const searchVendorProductProvider = SearchVendorProductFamily();

/// See also [searchVendorProduct].
class SearchVendorProductFamily
    extends Family<AsyncValue<VendorProductSearchResponse>> {
  /// See also [searchVendorProduct].
  const SearchVendorProductFamily();

  /// See also [searchVendorProduct].
  SearchVendorProductProvider call(
    String id,
    String query,
  ) {
    return SearchVendorProductProvider(
      id,
      query,
    );
  }

  @override
  SearchVendorProductProvider getProviderOverride(
    covariant SearchVendorProductProvider provider,
  ) {
    return call(
      provider.id,
      provider.query,
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
  String? get name => r'searchVendorProductProvider';
}

/// See also [searchVendorProduct].
class SearchVendorProductProvider
    extends AutoDisposeFutureProvider<VendorProductSearchResponse> {
  /// See also [searchVendorProduct].
  SearchVendorProductProvider(
    String id,
    String query,
  ) : this._internal(
          (ref) => searchVendorProduct(
            ref as SearchVendorProductRef,
            id,
            query,
          ),
          from: searchVendorProductProvider,
          name: r'searchVendorProductProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$searchVendorProductHash,
          dependencies: SearchVendorProductFamily._dependencies,
          allTransitiveDependencies:
              SearchVendorProductFamily._allTransitiveDependencies,
          id: id,
          query: query,
        );

  SearchVendorProductProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
    required this.query,
  }) : super.internal();

  final String id;
  final String query;

  @override
  Override overrideWith(
    FutureOr<VendorProductSearchResponse> Function(
            SearchVendorProductRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SearchVendorProductProvider._internal(
        (ref) => create(ref as SearchVendorProductRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
        query: query,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<VendorProductSearchResponse>
      createElement() {
    return _SearchVendorProductProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SearchVendorProductProvider &&
        other.id == id &&
        other.query == query;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SearchVendorProductRef
    on AutoDisposeFutureProviderRef<VendorProductSearchResponse> {
  /// The parameter `id` of this provider.
  String get id;

  /// The parameter `query` of this provider.
  String get query;
}

class _SearchVendorProductProviderElement
    extends AutoDisposeFutureProviderElement<VendorProductSearchResponse>
    with SearchVendorProductRef {
  _SearchVendorProductProviderElement(super.provider);

  @override
  String get id => (origin as SearchVendorProductProvider).id;
  @override
  String get query => (origin as SearchVendorProductProvider).query;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
