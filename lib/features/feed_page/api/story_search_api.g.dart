// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'story_search_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$storySearchApiHash() => r'ab27bfe007a9ace9e3b4cb7d4d3a28c503f181e6';

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

/// See also [storySearchApi].
@ProviderFor(storySearchApi)
const storySearchApiProvider = StorySearchApiFamily();

/// See also [storySearchApi].
class StorySearchApiFamily extends Family<AsyncValue<StorySearchModel>> {
  /// See also [storySearchApi].
  const StorySearchApiFamily();

  /// See also [storySearchApi].
  StorySearchApiProvider call(
    String query,
  ) {
    return StorySearchApiProvider(
      query,
    );
  }

  @override
  StorySearchApiProvider getProviderOverride(
    covariant StorySearchApiProvider provider,
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
  String? get name => r'storySearchApiProvider';
}

/// See also [storySearchApi].
class StorySearchApiProvider
    extends AutoDisposeFutureProvider<StorySearchModel> {
  /// See also [storySearchApi].
  StorySearchApiProvider(
    String query,
  ) : this._internal(
          (ref) => storySearchApi(
            ref as StorySearchApiRef,
            query,
          ),
          from: storySearchApiProvider,
          name: r'storySearchApiProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$storySearchApiHash,
          dependencies: StorySearchApiFamily._dependencies,
          allTransitiveDependencies:
              StorySearchApiFamily._allTransitiveDependencies,
          query: query,
        );

  StorySearchApiProvider._internal(
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
    FutureOr<StorySearchModel> Function(StorySearchApiRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: StorySearchApiProvider._internal(
        (ref) => create(ref as StorySearchApiRef),
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
  AutoDisposeFutureProviderElement<StorySearchModel> createElement() {
    return _StorySearchApiProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is StorySearchApiProvider && other.query == query;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin StorySearchApiRef on AutoDisposeFutureProviderRef<StorySearchModel> {
  /// The parameter `query` of this provider.
  String get query;
}

class _StorySearchApiProviderElement
    extends AutoDisposeFutureProviderElement<StorySearchModel>
    with StorySearchApiRef {
  _StorySearchApiProviderElement(super.provider);

  @override
  String get query => (origin as StorySearchApiProvider).query;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
