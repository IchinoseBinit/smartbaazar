// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_story_wow_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$postStoryWowHash() => r'252d49410280ed22f042b4b166bdcbfdfdbae10c';

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

/// See also [postStoryWow].
@ProviderFor(postStoryWow)
const postStoryWowProvider = PostStoryWowFamily();

/// See also [postStoryWow].
class PostStoryWowFamily extends Family<AsyncValue<String>> {
  /// See also [postStoryWow].
  const PostStoryWowFamily();

  /// See also [postStoryWow].
  PostStoryWowProvider call(
    String storyId,
  ) {
    return PostStoryWowProvider(
      storyId,
    );
  }

  @override
  PostStoryWowProvider getProviderOverride(
    covariant PostStoryWowProvider provider,
  ) {
    return call(
      provider.storyId,
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
  String? get name => r'postStoryWowProvider';
}

/// See also [postStoryWow].
class PostStoryWowProvider extends AutoDisposeFutureProvider<String> {
  /// See also [postStoryWow].
  PostStoryWowProvider(
    String storyId,
  ) : this._internal(
          (ref) => postStoryWow(
            ref as PostStoryWowRef,
            storyId,
          ),
          from: postStoryWowProvider,
          name: r'postStoryWowProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$postStoryWowHash,
          dependencies: PostStoryWowFamily._dependencies,
          allTransitiveDependencies:
              PostStoryWowFamily._allTransitiveDependencies,
          storyId: storyId,
        );

  PostStoryWowProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.storyId,
  }) : super.internal();

  final String storyId;

  @override
  Override overrideWith(
    FutureOr<String> Function(PostStoryWowRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PostStoryWowProvider._internal(
        (ref) => create(ref as PostStoryWowRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        storyId: storyId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<String> createElement() {
    return _PostStoryWowProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PostStoryWowProvider && other.storyId == storyId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, storyId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin PostStoryWowRef on AutoDisposeFutureProviderRef<String> {
  /// The parameter `storyId` of this provider.
  String get storyId;
}

class _PostStoryWowProviderElement
    extends AutoDisposeFutureProviderElement<String> with PostStoryWowRef {
  _PostStoryWowProviderElement(super.provider);

  @override
  String get storyId => (origin as PostStoryWowProvider).storyId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
