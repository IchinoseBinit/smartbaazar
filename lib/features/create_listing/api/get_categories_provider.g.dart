// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_categories_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getCategoryResponseHash() =>
    r'9c5e14235765647d976bff245b25a7c686992c02';

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

/// See also [getCategoryResponse].
@ProviderFor(getCategoryResponse)
const getCategoryResponseProvider = GetCategoryResponseFamily();

/// See also [getCategoryResponse].
class GetCategoryResponseFamily extends Family<AsyncValue<FieldsResponse>> {
  /// See also [getCategoryResponse].
  const GetCategoryResponseFamily();

  /// See also [getCategoryResponse].
  GetCategoryResponseProvider call(
    int id,
  ) {
    return GetCategoryResponseProvider(
      id,
    );
  }

  @override
  GetCategoryResponseProvider getProviderOverride(
    covariant GetCategoryResponseProvider provider,
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
  String? get name => r'getCategoryResponseProvider';
}

/// See also [getCategoryResponse].
class GetCategoryResponseProvider
    extends AutoDisposeFutureProvider<FieldsResponse> {
  /// See also [getCategoryResponse].
  GetCategoryResponseProvider(
    int id,
  ) : this._internal(
          (ref) => getCategoryResponse(
            ref as GetCategoryResponseRef,
            id,
          ),
          from: getCategoryResponseProvider,
          name: r'getCategoryResponseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getCategoryResponseHash,
          dependencies: GetCategoryResponseFamily._dependencies,
          allTransitiveDependencies:
              GetCategoryResponseFamily._allTransitiveDependencies,
          id: id,
        );

  GetCategoryResponseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  Override overrideWith(
    FutureOr<FieldsResponse> Function(GetCategoryResponseRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetCategoryResponseProvider._internal(
        (ref) => create(ref as GetCategoryResponseRef),
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
  AutoDisposeFutureProviderElement<FieldsResponse> createElement() {
    return _GetCategoryResponseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetCategoryResponseProvider && other.id == id;
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
mixin GetCategoryResponseRef on AutoDisposeFutureProviderRef<FieldsResponse> {
  /// The parameter `id` of this provider.
  int get id;
}

class _GetCategoryResponseProviderElement
    extends AutoDisposeFutureProviderElement<FieldsResponse>
    with GetCategoryResponseRef {
  _GetCategoryResponseProviderElement(super.provider);

  @override
  int get id => (origin as GetCategoryResponseProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
