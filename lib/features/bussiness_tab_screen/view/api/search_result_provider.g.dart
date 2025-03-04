// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getSearchResponseHash() => r'666819cdc1cfd5c997aa5545f9137bfd7ed4d421';

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

/// See also [getSearchResponse].
@ProviderFor(getSearchResponse)
const getSearchResponseProvider = GetSearchResponseFamily();

/// See also [getSearchResponse].
class GetSearchResponseFamily extends Family<AsyncValue<BusinessResponse>> {
  /// See also [getSearchResponse].
  const GetSearchResponseFamily();

  /// See also [getSearchResponse].
  GetSearchResponseProvider call(
    String query,
    String orderby,
  ) {
    return GetSearchResponseProvider(
      query,
      orderby,
    );
  }

  @override
  GetSearchResponseProvider getProviderOverride(
    covariant GetSearchResponseProvider provider,
  ) {
    return call(
      provider.query,
      provider.orderby,
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
  String? get name => r'getSearchResponseProvider';
}

/// See also [getSearchResponse].
class GetSearchResponseProvider
    extends AutoDisposeFutureProvider<BusinessResponse> {
  /// See also [getSearchResponse].
  GetSearchResponseProvider(
    String query,
    String orderby,
  ) : this._internal(
          (ref) => getSearchResponse(
            ref as GetSearchResponseRef,
            query,
            orderby,
          ),
          from: getSearchResponseProvider,
          name: r'getSearchResponseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getSearchResponseHash,
          dependencies: GetSearchResponseFamily._dependencies,
          allTransitiveDependencies:
              GetSearchResponseFamily._allTransitiveDependencies,
          query: query,
          orderby: orderby,
        );

  GetSearchResponseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.query,
    required this.orderby,
  }) : super.internal();

  final String query;
  final String orderby;

  @override
  Override overrideWith(
    FutureOr<BusinessResponse> Function(GetSearchResponseRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetSearchResponseProvider._internal(
        (ref) => create(ref as GetSearchResponseRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        query: query,
        orderby: orderby,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<BusinessResponse> createElement() {
    return _GetSearchResponseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetSearchResponseProvider &&
        other.query == query &&
        other.orderby == orderby;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);
    hash = _SystemHash.combine(hash, orderby.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetSearchResponseRef on AutoDisposeFutureProviderRef<BusinessResponse> {
  /// The parameter `query` of this provider.
  String get query;

  /// The parameter `orderby` of this provider.
  String get orderby;
}

class _GetSearchResponseProviderElement
    extends AutoDisposeFutureProviderElement<BusinessResponse>
    with GetSearchResponseRef {
  _GetSearchResponseProviderElement(super.provider);

  @override
  String get query => (origin as GetSearchResponseProvider).query;
  @override
  String get orderby => (origin as GetSearchResponseProvider).orderby;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
