// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_search_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$geDataBySearchvendorHash() =>
    r'e48ef12799004cef23eec8f747b2bf110f449ddb';

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

/// See also [geDataBySearchvendor].
@ProviderFor(geDataBySearchvendor)
const geDataBySearchvendorProvider = GeDataBySearchvendorFamily();

/// See also [geDataBySearchvendor].
class GeDataBySearchvendorFamily extends Family<AsyncValue<List<GetOnlyData>>> {
  /// See also [geDataBySearchvendor].
  const GeDataBySearchvendorFamily();

  /// See also [geDataBySearchvendor].
  GeDataBySearchvendorProvider call(
    String id,
  ) {
    return GeDataBySearchvendorProvider(
      id,
    );
  }

  @override
  GeDataBySearchvendorProvider getProviderOverride(
    covariant GeDataBySearchvendorProvider provider,
  ) {
    return call(
      provider.id,
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
  String? get name => r'geDataBySearchvendorProvider';
}

/// See also [geDataBySearchvendor].
class GeDataBySearchvendorProvider
    extends AutoDisposeFutureProvider<List<GetOnlyData>> {
  /// See also [geDataBySearchvendor].
  GeDataBySearchvendorProvider(
    String id,
  ) : this._internal(
          (ref) => geDataBySearchvendor(
            ref as GeDataBySearchvendorRef,
            id,
          ),
          from: geDataBySearchvendorProvider,
          name: r'geDataBySearchvendorProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$geDataBySearchvendorHash,
          dependencies: GeDataBySearchvendorFamily._dependencies,
          allTransitiveDependencies:
              GeDataBySearchvendorFamily._allTransitiveDependencies,
          id: id,
        );

  GeDataBySearchvendorProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  Override overrideWith(
    FutureOr<List<GetOnlyData>> Function(GeDataBySearchvendorRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GeDataBySearchvendorProvider._internal(
        (ref) => create(ref as GeDataBySearchvendorRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<GetOnlyData>> createElement() {
    return _GeDataBySearchvendorProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GeDataBySearchvendorProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GeDataBySearchvendorRef
    on AutoDisposeFutureProviderRef<List<GetOnlyData>> {
  /// The parameter `id` of this provider.
  String get id;
}

class _GeDataBySearchvendorProviderElement
    extends AutoDisposeFutureProviderElement<List<GetOnlyData>>
    with GeDataBySearchvendorRef {
  _GeDataBySearchvendorProviderElement(super.provider);

  @override
  String get id => (origin as GeDataBySearchvendorProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
