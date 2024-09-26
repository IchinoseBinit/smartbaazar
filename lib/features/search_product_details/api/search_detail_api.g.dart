// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_detail_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getSearchDetailsHash() => r'0440e0f6cf11c04e37f306c8f4e29566bf24e1f1';

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
class GetSearchDetailsFamily extends Family<AsyncValue<List<Post>>> {
  /// See also [getSearchDetails].
  const GetSearchDetailsFamily();

  /// See also [getSearchDetails].
  GetSearchDetailsProvider call(
    String query,
  ) {
    return GetSearchDetailsProvider(
      query,
    );
  }

  @override
  GetSearchDetailsProvider getProviderOverride(
    covariant GetSearchDetailsProvider provider,
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
  String? get name => r'getSearchDetailsProvider';
}

/// See also [getSearchDetails].
class GetSearchDetailsProvider extends AutoDisposeFutureProvider<List<Post>> {
  /// See also [getSearchDetails].
  GetSearchDetailsProvider(
    String query,
  ) : this._internal(
          (ref) => getSearchDetails(
            ref as GetSearchDetailsRef,
            query,
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
        );

  GetSearchDetailsProvider._internal(
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
    FutureOr<List<Post>> Function(GetSearchDetailsRef provider) create,
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
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Post>> createElement() {
    return _GetSearchDetailsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetSearchDetailsProvider && other.query == query;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetSearchDetailsRef on AutoDisposeFutureProviderRef<List<Post>> {
  /// The parameter `query` of this provider.
  String get query;
}

class _GetSearchDetailsProviderElement
    extends AutoDisposeFutureProviderElement<List<Post>>
    with GetSearchDetailsRef {
  _GetSearchDetailsProviderElement(super.provider);

  @override
  String get query => (origin as GetSearchDetailsProvider).query;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
