// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dropdown_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$newListingRepositoryHash() =>
    r'19a2372351646e5b5fc8cfe8675a0cbfd527a992';

/// See also [newListingRepository].
@ProviderFor(newListingRepository)
final newListingRepositoryProvider =
    AutoDisposeProvider<NewListingRepository>.internal(
  newListingRepository,
  name: r'newListingRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$newListingRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef NewListingRepositoryRef = AutoDisposeProviderRef<NewListingRepository>;
String _$typeListProviderHash() => r'c6cc4e2a2b04eb0a6b1be86cfa15755c32f0d7fb';

/// See also [typeListProvider].
@ProviderFor(typeListProvider)
final typeListProviderProvider =
    AutoDisposeFutureProvider<List<TypeList>>.internal(
  typeListProvider,
  name: r'typeListProviderProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$typeListProviderHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef TypeListProviderRef = AutoDisposeFutureProviderRef<List<TypeList>>;
String _$categoryListProviderHash() =>
    r'929b6a077cf47dc019746b4a35de178d95f69083';

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

/// See also [categoryListProvider].
@ProviderFor(categoryListProvider)
const categoryListProviderProvider = CategoryListProviderFamily();

/// See also [categoryListProvider].
class CategoryListProviderFamily extends Family<AsyncValue<List<Category>>> {
  /// See also [categoryListProvider].
  const CategoryListProviderFamily();

  /// See also [categoryListProvider].
  CategoryListProviderProvider call({
    String? parentId,
  }) {
    return CategoryListProviderProvider(
      parentId: parentId,
    );
  }

  @override
  CategoryListProviderProvider getProviderOverride(
    covariant CategoryListProviderProvider provider,
  ) {
    return call(
      parentId: provider.parentId,
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
  String? get name => r'categoryListProviderProvider';
}

/// See also [categoryListProvider].
class CategoryListProviderProvider
    extends AutoDisposeFutureProvider<List<Category>> {
  /// See also [categoryListProvider].
  CategoryListProviderProvider({
    String? parentId,
  }) : this._internal(
          (ref) => categoryListProvider(
            ref as CategoryListProviderRef,
            parentId: parentId,
          ),
          from: categoryListProviderProvider,
          name: r'categoryListProviderProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$categoryListProviderHash,
          dependencies: CategoryListProviderFamily._dependencies,
          allTransitiveDependencies:
              CategoryListProviderFamily._allTransitiveDependencies,
          parentId: parentId,
        );

  CategoryListProviderProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.parentId,
  }) : super.internal();

  final String? parentId;

  @override
  Override overrideWith(
    FutureOr<List<Category>> Function(CategoryListProviderRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CategoryListProviderProvider._internal(
        (ref) => create(ref as CategoryListProviderRef),
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
  AutoDisposeFutureProviderElement<List<Category>> createElement() {
    return _CategoryListProviderProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CategoryListProviderProvider && other.parentId == parentId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, parentId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CategoryListProviderRef on AutoDisposeFutureProviderRef<List<Category>> {
  /// The parameter `parentId` of this provider.
  String? get parentId;
}

class _CategoryListProviderProviderElement
    extends AutoDisposeFutureProviderElement<List<Category>>
    with CategoryListProviderRef {
  _CategoryListProviderProviderElement(super.provider);

  @override
  String? get parentId => (origin as CategoryListProviderProvider).parentId;
}

String _$subCategoryListProviderHash() =>
    r'fd2645cf4d5d01ac52c440d754c996671d60cdd5';

/// See also [subCategoryListProvider].
@ProviderFor(subCategoryListProvider)
const subCategoryListProviderProvider = SubCategoryListProviderFamily();

/// See also [subCategoryListProvider].
class SubCategoryListProviderFamily extends Family<AsyncValue<List<Category>>> {
  /// See also [subCategoryListProvider].
  const SubCategoryListProviderFamily();

  /// See also [subCategoryListProvider].
  SubCategoryListProviderProvider call(
    int parentId,
  ) {
    return SubCategoryListProviderProvider(
      parentId,
    );
  }

  @override
  SubCategoryListProviderProvider getProviderOverride(
    covariant SubCategoryListProviderProvider provider,
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
  String? get name => r'subCategoryListProviderProvider';
}

/// See also [subCategoryListProvider].
class SubCategoryListProviderProvider
    extends AutoDisposeFutureProvider<List<Category>> {
  /// See also [subCategoryListProvider].
  SubCategoryListProviderProvider(
    int parentId,
  ) : this._internal(
          (ref) => subCategoryListProvider(
            ref as SubCategoryListProviderRef,
            parentId,
          ),
          from: subCategoryListProviderProvider,
          name: r'subCategoryListProviderProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$subCategoryListProviderHash,
          dependencies: SubCategoryListProviderFamily._dependencies,
          allTransitiveDependencies:
              SubCategoryListProviderFamily._allTransitiveDependencies,
          parentId: parentId,
        );

  SubCategoryListProviderProvider._internal(
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
    FutureOr<List<Category>> Function(SubCategoryListProviderRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SubCategoryListProviderProvider._internal(
        (ref) => create(ref as SubCategoryListProviderRef),
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
  AutoDisposeFutureProviderElement<List<Category>> createElement() {
    return _SubCategoryListProviderProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SubCategoryListProviderProvider &&
        other.parentId == parentId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, parentId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SubCategoryListProviderRef
    on AutoDisposeFutureProviderRef<List<Category>> {
  /// The parameter `parentId` of this provider.
  int get parentId;
}

class _SubCategoryListProviderProviderElement
    extends AutoDisposeFutureProviderElement<List<Category>>
    with SubCategoryListProviderRef {
  _SubCategoryListProviderProviderElement(super.provider);

  @override
  int get parentId => (origin as SubCategoryListProviderProvider).parentId;
}

String _$productTypeProviderHash() =>
    r'0003e13ce2bdbabf7ced4fb4d54d6a8144e8a517';

/// See also [productTypeProvider].
@ProviderFor(productTypeProvider)
final productTypeProviderProvider =
    AutoDisposeFutureProvider<List<ProductType>>.internal(
  productTypeProvider,
  name: r'productTypeProviderProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$productTypeProviderHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ProductTypeProviderRef
    = AutoDisposeFutureProviderRef<List<ProductType>>;
String _$cityListProviderHash() => r'542baf7c1076be39287b92361da056d4b975e8dd';

/// See also [cityListProvider].
@ProviderFor(cityListProvider)
const cityListProviderProvider = CityListProviderFamily();

/// See also [cityListProvider].
class CityListProviderFamily extends Family<AsyncValue<List<CityList>>> {
  /// See also [cityListProvider].
  const CityListProviderFamily();

  /// See also [cityListProvider].
  CityListProviderProvider call(
    int page,
  ) {
    return CityListProviderProvider(
      page,
    );
  }

  @override
  CityListProviderProvider getProviderOverride(
    covariant CityListProviderProvider provider,
  ) {
    return call(
      provider.page,
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
  String? get name => r'cityListProviderProvider';
}

/// See also [cityListProvider].
class CityListProviderProvider
    extends AutoDisposeFutureProvider<List<CityList>> {
  /// See also [cityListProvider].
  CityListProviderProvider(
    int page,
  ) : this._internal(
          (ref) => cityListProvider(
            ref as CityListProviderRef,
            page,
          ),
          from: cityListProviderProvider,
          name: r'cityListProviderProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$cityListProviderHash,
          dependencies: CityListProviderFamily._dependencies,
          allTransitiveDependencies:
              CityListProviderFamily._allTransitiveDependencies,
          page: page,
        );

  CityListProviderProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.page,
  }) : super.internal();

  final int page;

  @override
  Override overrideWith(
    FutureOr<List<CityList>> Function(CityListProviderRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CityListProviderProvider._internal(
        (ref) => create(ref as CityListProviderRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        page: page,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<CityList>> createElement() {
    return _CityListProviderProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CityListProviderProvider && other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CityListProviderRef on AutoDisposeFutureProviderRef<List<CityList>> {
  /// The parameter `page` of this provider.
  int get page;
}

class _CityListProviderProviderElement
    extends AutoDisposeFutureProviderElement<List<CityList>>
    with CityListProviderRef {
  _CityListProviderProviderElement(super.provider);

  @override
  int get page => (origin as CityListProviderProvider).page;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
