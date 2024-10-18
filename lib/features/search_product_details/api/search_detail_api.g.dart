// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_detail_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getSearchDetailsHash() => r'7e1fa445670fcf8d174c797ccc7ba3ada699afa8';

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

/// See also [getSearchDetails].
@ProviderFor(getSearchDetails)
const getSearchDetailsProvider = GetSearchDetailsFamily();

/// See also [getSearchDetails].
class GetSearchDetailsFamily extends Family<AsyncValue<SearchDetails>> {
  /// See also [getSearchDetails].
  const GetSearchDetailsFamily();

  /// See also [getSearchDetails].
  GetSearchDetailsProvider call(
    String query, {
    String category = 'brand_new',
    String orderby = 'relevance',
  }) {
    return GetSearchDetailsProvider(
      query,
      category: category,
      orderby: orderby,
    );
  }

  @override
  GetSearchDetailsProvider getProviderOverride(
    covariant GetSearchDetailsProvider provider,
  ) {
    return call(
      provider.query,
      category: provider.category,
      orderby: provider.orderby,
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
  String? get name => r'getSearchDetailsProvider';
}

/// See also [getSearchDetails].
class GetSearchDetailsProvider
    extends AutoDisposeFutureProvider<SearchDetails> {
  /// See also [getSearchDetails].
  GetSearchDetailsProvider(
    String query, {
    String category = 'brand_new',
    String orderby = 'relevance',
  }) : this._internal(
          (ref) => getSearchDetails(
            ref as GetSearchDetailsRef,
            query,
            category: category,
            orderby: orderby,
          ),
          from: getSearchDetailsProvider,
          name: r'getSearchDetailsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getSearchDetailsHash,
          dependencies: GetSearchDetailsFamily._dependencies,
          allTransitiveDependencies:
              GetSearchDetailsFamily._allTransitiveDependencies,
          query: query,
          category: category,
          orderby: orderby,
        );

  GetSearchDetailsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.query,
    required this.category,
    required this.orderby,
  }) : super.internal();

  final String query;
  final String category;
  final String orderby;

  @override
  Override overrideWith(
    FutureOr<SearchDetails> Function(GetSearchDetailsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetSearchDetailsProvider._internal(
        (ref) => create(ref as GetSearchDetailsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        query: query,
        category: category,
        orderby: orderby,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<SearchDetails> createElement() {
    return _GetSearchDetailsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetSearchDetailsProvider &&
        other.query == query &&
        other.category == category &&
        other.orderby == orderby;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);
    hash = _SystemHash.combine(hash, category.hashCode);
    hash = _SystemHash.combine(hash, orderby.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetSearchDetailsRef on AutoDisposeFutureProviderRef<SearchDetails> {
  /// The parameter `query` of this provider.
  String get query;

  /// The parameter `category` of this provider.
  String get category;

  /// The parameter `orderby` of this provider.
  String get orderby;
}

class _GetSearchDetailsProviderElement
    extends AutoDisposeFutureProviderElement<SearchDetails>
    with GetSearchDetailsRef {
  _GetSearchDetailsProviderElement(super.provider);

  @override
  String get query => (origin as GetSearchDetailsProvider).query;
  @override
  String get category => (origin as GetSearchDetailsProvider).category;
  @override
  String get orderby => (origin as GetSearchDetailsProvider).orderby;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
