// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'screen_category_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getCategoriesHash() => r'f2a6c7b99998d2d2eb6b756a1f97a1d1aa568ee6';

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

/// See also [getCategories].
@ProviderFor(getCategories)
const getCategoriesProvider = GetCategoriesFamily();

/// See also [getCategories].
class GetCategoriesFamily extends Family<AsyncValue<List<CategoryModel>>> {
  /// See also [getCategories].
  const GetCategoriesFamily();

  /// See also [getCategories].
  GetCategoriesProvider call(
    int parentId,
  ) {
    return GetCategoriesProvider(
      parentId,
    );
  }

  @override
  GetCategoriesProvider getProviderOverride(
    covariant GetCategoriesProvider provider,
  ) {
    return call(
      provider.parentId,
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
  String? get name => r'getCategoriesProvider';
}

/// See also [getCategories].
class GetCategoriesProvider
    extends AutoDisposeFutureProvider<List<CategoryModel>> {
  /// See also [getCategories].
  GetCategoriesProvider(
    int parentId,
  ) : this._internal(
          (ref) => getCategories(
            ref as GetCategoriesRef,
            parentId,
          ),
          from: getCategoriesProvider,
          name: r'getCategoriesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getCategoriesHash,
          dependencies: GetCategoriesFamily._dependencies,
          allTransitiveDependencies:
              GetCategoriesFamily._allTransitiveDependencies,
          parentId: parentId,
        );

  GetCategoriesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.parentId,
  }) : super.internal();

  final int parentId;

  @override
  Override overrideWith(
    FutureOr<List<CategoryModel>> Function(GetCategoriesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetCategoriesProvider._internal(
        (ref) => create(ref as GetCategoriesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        parentId: parentId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<CategoryModel>> createElement() {
    return _GetCategoriesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetCategoriesProvider && other.parentId == parentId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, parentId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetCategoriesRef on AutoDisposeFutureProviderRef<List<CategoryModel>> {
  /// The parameter `parentId` of this provider.
  int get parentId;
}

class _GetCategoriesProviderElement
    extends AutoDisposeFutureProviderElement<List<CategoryModel>>
    with GetCategoriesRef {
  _GetCategoriesProviderElement(super.provider);

  @override
  int get parentId => (origin as GetCategoriesProvider).parentId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
