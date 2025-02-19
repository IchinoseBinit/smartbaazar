// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_type_story_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getPostTypeStoryApiHash() =>
    r'bfa89d2d3606e5eee18c099617c4cdaeef2c4792';

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

/// See also [getPostTypeStoryApi].
@ProviderFor(getPostTypeStoryApi)
const getPostTypeStoryApiProvider = GetPostTypeStoryApiFamily();

/// See also [getPostTypeStoryApi].
class GetPostTypeStoryApiFamily extends Family<AsyncValue<HomeStoryModel>> {
  /// See also [getPostTypeStoryApi].
  const GetPostTypeStoryApiFamily();

  /// See also [getPostTypeStoryApi].
  GetPostTypeStoryApiProvider call(
    String postTypeId,
  ) {
    return GetPostTypeStoryApiProvider(
      postTypeId,
    );
  }

  @override
  GetPostTypeStoryApiProvider getProviderOverride(
    covariant GetPostTypeStoryApiProvider provider,
  ) {
    return call(
      provider.postTypeId,
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
  String? get name => r'getPostTypeStoryApiProvider';
}

/// See also [getPostTypeStoryApi].
class GetPostTypeStoryApiProvider
    extends AutoDisposeFutureProvider<HomeStoryModel> {
  /// See also [getPostTypeStoryApi].
  GetPostTypeStoryApiProvider(
    String postTypeId,
  ) : this._internal(
          (ref) => getPostTypeStoryApi(
            ref as GetPostTypeStoryApiRef,
            postTypeId,
          ),
          from: getPostTypeStoryApiProvider,
          name: r'getPostTypeStoryApiProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getPostTypeStoryApiHash,
          dependencies: GetPostTypeStoryApiFamily._dependencies,
          allTransitiveDependencies:
              GetPostTypeStoryApiFamily._allTransitiveDependencies,
          postTypeId: postTypeId,
        );

  GetPostTypeStoryApiProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.postTypeId,
  }) : super.internal();

  final String postTypeId;

  @override
  Override overrideWith(
    FutureOr<HomeStoryModel> Function(GetPostTypeStoryApiRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetPostTypeStoryApiProvider._internal(
        (ref) => create(ref as GetPostTypeStoryApiRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        postTypeId: postTypeId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<HomeStoryModel> createElement() {
    return _GetPostTypeStoryApiProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetPostTypeStoryApiProvider &&
        other.postTypeId == postTypeId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, postTypeId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetPostTypeStoryApiRef on AutoDisposeFutureProviderRef<HomeStoryModel> {
  /// The parameter `postTypeId` of this provider.
  String get postTypeId;
}

class _GetPostTypeStoryApiProviderElement
    extends AutoDisposeFutureProviderElement<HomeStoryModel>
    with GetPostTypeStoryApiRef {
  _GetPostTypeStoryApiProviderElement(super.provider);

  @override
  String get postTypeId => (origin as GetPostTypeStoryApiProvider).postTypeId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
