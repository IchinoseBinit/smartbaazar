// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_product_to_favourite_list_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$addToFavoritesHash() => r'b5436f0499a2c5726da6531fbd6bb6f5d5b6dbb2';

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

/// See also [addToFavorites].
@ProviderFor(addToFavorites)
const addToFavoritesProvider = AddToFavoritesFamily();

/// See also [addToFavorites].
class AddToFavoritesFamily extends Family<AsyncValue<void>> {
  /// See also [addToFavorites].
  const AddToFavoritesFamily();

  /// See also [addToFavorites].
  AddToFavoritesProvider call(
    String userId,
    String postId,
  ) {
    return AddToFavoritesProvider(
      userId,
      postId,
    );
  }

  @override
  AddToFavoritesProvider getProviderOverride(
    covariant AddToFavoritesProvider provider,
  ) {
    return call(
      provider.userId,
      provider.postId,
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
  String? get name => r'addToFavoritesProvider';
}

/// See also [addToFavorites].
class AddToFavoritesProvider extends AutoDisposeFutureProvider<void> {
  /// See also [addToFavorites].
  AddToFavoritesProvider(
    String userId,
    String postId,
  ) : this._internal(
          (ref) => addToFavorites(
            ref as AddToFavoritesRef,
            userId,
            postId,
          ),
          from: addToFavoritesProvider,
          name: r'addToFavoritesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$addToFavoritesHash,
          dependencies: AddToFavoritesFamily._dependencies,
          allTransitiveDependencies:
              AddToFavoritesFamily._allTransitiveDependencies,
          userId: userId,
          postId: postId,
        );

  AddToFavoritesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userId,
    required this.postId,
  }) : super.internal();

  final String userId;
  final String postId;

  @override
  Override overrideWith(
    FutureOr<void> Function(AddToFavoritesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AddToFavoritesProvider._internal(
        (ref) => create(ref as AddToFavoritesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userId: userId,
        postId: postId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _AddToFavoritesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AddToFavoritesProvider &&
        other.userId == userId &&
        other.postId == postId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);
    hash = _SystemHash.combine(hash, postId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AddToFavoritesRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `userId` of this provider.
  String get userId;

  /// The parameter `postId` of this provider.
  String get postId;
}

class _AddToFavoritesProviderElement
    extends AutoDisposeFutureProviderElement<void> with AddToFavoritesRef {
  _AddToFavoritesProviderElement(super.provider);

  @override
  String get userId => (origin as AddToFavoritesProvider).userId;
  @override
  String get postId => (origin as AddToFavoritesProvider).postId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
