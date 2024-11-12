// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_from_saved_search_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$searchFromSavedSearchHash() =>
    r'7f5a58a93e90a57e4bbe1bf4b49ef26e0de1fca3';

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

/// See also [searchFromSavedSearch].
@ProviderFor(searchFromSavedSearch)
const searchFromSavedSearchProvider = SearchFromSavedSearchFamily();

/// See also [searchFromSavedSearch].
class SearchFromSavedSearchFamily
    extends Family<AsyncValue<SavedSearchesResponseModel?>> {
  /// See also [searchFromSavedSearch].
  const SearchFromSavedSearchFamily();

  /// See also [searchFromSavedSearch].
  SearchFromSavedSearchProvider call(
    String query,
  ) {
    return SearchFromSavedSearchProvider(
      query,
    );
  }

  @override
  SearchFromSavedSearchProvider getProviderOverride(
    covariant SearchFromSavedSearchProvider provider,
  ) {
    return call(
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
  String? get name => r'searchFromSavedSearchProvider';
}

/// See also [searchFromSavedSearch].
class SearchFromSavedSearchProvider
    extends AutoDisposeFutureProvider<SavedSearchesResponseModel?> {
  /// See also [searchFromSavedSearch].
  SearchFromSavedSearchProvider(
    String query,
  ) : this._internal(
          (ref) => searchFromSavedSearch(
            ref as SearchFromSavedSearchRef,
            query,
          ),
          from: searchFromSavedSearchProvider,
          name: r'searchFromSavedSearchProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$searchFromSavedSearchHash,
          dependencies: SearchFromSavedSearchFamily._dependencies,
          allTransitiveDependencies:
              SearchFromSavedSearchFamily._allTransitiveDependencies,
          query: query,
        );

  SearchFromSavedSearchProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.query,
  }) : super.internal();

  final String query;

  @override
  Override overrideWith(
    FutureOr<SavedSearchesResponseModel?> Function(
            SearchFromSavedSearchRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SearchFromSavedSearchProvider._internal(
        (ref) => create(ref as SearchFromSavedSearchRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        query: query,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<SavedSearchesResponseModel?>
      createElement() {
    return _SearchFromSavedSearchProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SearchFromSavedSearchProvider && other.query == query;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SearchFromSavedSearchRef
    on AutoDisposeFutureProviderRef<SavedSearchesResponseModel?> {
  /// The parameter `query` of this provider.
  String get query;
}

class _SearchFromSavedSearchProviderElement
    extends AutoDisposeFutureProviderElement<SavedSearchesResponseModel?>
    with SearchFromSavedSearchRef {
  _SearchFromSavedSearchProviderElement(super.provider);

  @override
  String get query => (origin as SearchFromSavedSearchProvider).query;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
