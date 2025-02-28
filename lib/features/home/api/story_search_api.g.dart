// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'story_search_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$searchstoryapiHash() => r'e6280d2c30ba860fbd63c475c06f27a744abd378';

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

/// See also [searchstoryapi].
@ProviderFor(searchstoryapi)
const searchstoryapiProvider = SearchstoryapiFamily();

/// See also [searchstoryapi].
class SearchstoryapiFamily extends Family<AsyncValue<HomeSearchResopnse>> {
  /// See also [searchstoryapi].
  const SearchstoryapiFamily();

  /// See also [searchstoryapi].
  SearchstoryapiProvider call(
    String query,
  ) {
    return SearchstoryapiProvider(
      query,
    );
  }

  @override
  SearchstoryapiProvider getProviderOverride(
    covariant SearchstoryapiProvider provider,
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
  String? get name => r'searchstoryapiProvider';
}

/// See also [searchstoryapi].
class SearchstoryapiProvider
    extends AutoDisposeFutureProvider<HomeSearchResopnse> {
  /// See also [searchstoryapi].
  SearchstoryapiProvider(
    String query,
  ) : this._internal(
          (ref) => searchstoryapi(
            ref as SearchstoryapiRef,
            query,
          ),
          from: searchstoryapiProvider,
          name: r'searchstoryapiProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$searchstoryapiHash,
          dependencies: SearchstoryapiFamily._dependencies,
          allTransitiveDependencies:
              SearchstoryapiFamily._allTransitiveDependencies,
          query: query,
        );

  SearchstoryapiProvider._internal(
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
    FutureOr<HomeSearchResopnse> Function(SearchstoryapiRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SearchstoryapiProvider._internal(
        (ref) => create(ref as SearchstoryapiRef),
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
  AutoDisposeFutureProviderElement<HomeSearchResopnse> createElement() {
    return _SearchstoryapiProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SearchstoryapiProvider && other.query == query;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SearchstoryapiRef on AutoDisposeFutureProviderRef<HomeSearchResopnse> {
  /// The parameter `query` of this provider.
  String get query;
}

class _SearchstoryapiProviderElement
    extends AutoDisposeFutureProviderElement<HomeSearchResopnse>
    with SearchstoryapiRef {
  _SearchstoryapiProviderElement(super.provider);

  @override
  String get query => (origin as SearchstoryapiProvider).query;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
