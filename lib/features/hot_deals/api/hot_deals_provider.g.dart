// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hot_deals_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getHotDealsHash() => r'9fcb12e6d800df3dc75df808649ca6423f429c02';

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

/// See also [getHotDeals].
@ProviderFor(getHotDeals)
const getHotDealsProvider = GetHotDealsFamily();

/// See also [getHotDeals].
class GetHotDealsFamily extends Family<AsyncValue<List<GlobalModel>>> {
  /// See also [getHotDeals].
  const GetHotDealsFamily();

  /// See also [getHotDeals].
  GetHotDealsProvider call(
    String header,
  ) {
    return GetHotDealsProvider(
      header,
    );
  }

  @override
  GetHotDealsProvider getProviderOverride(
    covariant GetHotDealsProvider provider,
  ) {
    return call(
      provider.header,
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
  String? get name => r'getHotDealsProvider';
}

/// See also [getHotDeals].
class GetHotDealsProvider extends AutoDisposeFutureProvider<List<GlobalModel>> {
  /// See also [getHotDeals].
  GetHotDealsProvider(
    String header,
  ) : this._internal(
          (ref) => getHotDeals(
            ref as GetHotDealsRef,
            header,
          ),
          from: getHotDealsProvider,
          name: r'getHotDealsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getHotDealsHash,
          dependencies: GetHotDealsFamily._dependencies,
          allTransitiveDependencies:
              GetHotDealsFamily._allTransitiveDependencies,
          header: header,
        );

  GetHotDealsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.header,
  }) : super.internal();

  final String header;

  @override
  Override overrideWith(
    FutureOr<List<GlobalModel>> Function(GetHotDealsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetHotDealsProvider._internal(
        (ref) => create(ref as GetHotDealsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        header: header,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<GlobalModel>> createElement() {
    return _GetHotDealsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetHotDealsProvider && other.header == header;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, header.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetHotDealsRef on AutoDisposeFutureProviderRef<List<GlobalModel>> {
  /// The parameter `header` of this provider.
  String get header;
}

class _GetHotDealsProviderElement
    extends AutoDisposeFutureProviderElement<List<GlobalModel>>
    with GetHotDealsRef {
  _GetHotDealsProviderElement(super.provider);

  @override
  String get header => (origin as GetHotDealsProvider).header;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
