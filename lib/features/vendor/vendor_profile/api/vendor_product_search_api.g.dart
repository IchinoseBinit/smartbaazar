// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_product_search_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$searchvendorproductHash() =>
    r'49dd538018b0c0973a0900a329240c120bd017a1';

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

/// See also [searchvendorproduct].
@ProviderFor(searchvendorproduct)
const searchvendorproductProvider = SearchvendorproductFamily();

/// See also [searchvendorproduct].
class SearchvendorproductFamily
    extends Family<AsyncValue<List<VendorProductSearchResponse>>> {
  /// See also [searchvendorproduct].
  const SearchvendorproductFamily();

  /// See also [searchvendorproduct].
  SearchvendorproductProvider call(
    String id,
    String query,
  ) {
    return SearchvendorproductProvider(
      id,
      query,
    );
  }

  @override
  SearchvendorproductProvider getProviderOverride(
    covariant SearchvendorproductProvider provider,
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
  String? get name => r'searchvendorproductProvider';
}

/// See also [searchvendorproduct].
class SearchvendorproductProvider
    extends AutoDisposeFutureProvider<List<VendorProductSearchResponse>> {
  /// See also [searchvendorproduct].
  SearchvendorproductProvider(
    String id,
    String query,
  ) : this._internal(
          (ref) => searchvendorproduct(
            ref as SearchvendorproductRef,
            id,
            query,
          ),
          from: searchvendorproductProvider,
          name: r'searchvendorproductProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$searchvendorproductHash,
          dependencies: SearchvendorproductFamily._dependencies,
          allTransitiveDependencies:
              SearchvendorproductFamily._allTransitiveDependencies,
          id: id,
          query: query,
        );

  SearchvendorproductProvider._internal(
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
    FutureOr<List<VendorProductSearchResponse>> Function(
            SearchvendorproductRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SearchvendorproductProvider._internal(
        (ref) => create(ref as SearchvendorproductRef),
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
  AutoDisposeFutureProviderElement<List<VendorProductSearchResponse>>
      createElement() {
    return _SearchvendorproductProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SearchvendorproductProvider &&
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
mixin SearchvendorproductRef
    on AutoDisposeFutureProviderRef<List<VendorProductSearchResponse>> {
  /// The parameter `id` of this provider.
  String get id;

  /// The parameter `query` of this provider.
  String get query;
}

class _SearchvendorproductProviderElement
    extends AutoDisposeFutureProviderElement<List<VendorProductSearchResponse>>
    with SearchvendorproductRef {
  _SearchvendorproductProviderElement(super.provider);

  @override
  String get id => (origin as SearchvendorproductProvider).id;
  @override
  String get query => (origin as SearchvendorproductProvider).query;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
