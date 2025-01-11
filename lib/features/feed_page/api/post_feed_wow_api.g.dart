// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_feed_wow_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$postFeedWowHash() => r'cb57b44e21dbbeca31e751c4800a7d02ce750fea';

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

/// See also [postFeedWow].
@ProviderFor(postFeedWow)
const postFeedWowProvider = PostFeedWowFamily();

/// See also [postFeedWow].
class PostFeedWowFamily extends Family<AsyncValue<String>> {
  /// See also [postFeedWow].
  const PostFeedWowFamily();

  /// See also [postFeedWow].
  PostFeedWowProvider call(
    String feedId,
  ) {
    return PostFeedWowProvider(
      feedId,
    );
  }

  @override
  PostFeedWowProvider getProviderOverride(
    covariant PostFeedWowProvider provider,
  ) {
    return call(
      provider.feedId,
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
  String? get name => r'postFeedWowProvider';
}

/// See also [postFeedWow].
class PostFeedWowProvider extends AutoDisposeFutureProvider<String> {
  /// See also [postFeedWow].
  PostFeedWowProvider(
    String feedId,
  ) : this._internal(
          (ref) => postFeedWow(
            ref as PostFeedWowRef,
            feedId,
          ),
          from: postFeedWowProvider,
          name: r'postFeedWowProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$postFeedWowHash,
          dependencies: PostFeedWowFamily._dependencies,
          allTransitiveDependencies:
              PostFeedWowFamily._allTransitiveDependencies,
          feedId: feedId,
        );

  PostFeedWowProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.feedId,
  }) : super.internal();

  final String feedId;

  @override
  Override overrideWith(
    FutureOr<String> Function(PostFeedWowRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PostFeedWowProvider._internal(
        (ref) => create(ref as PostFeedWowRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        feedId: feedId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<String> createElement() {
    return _PostFeedWowProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PostFeedWowProvider && other.feedId == feedId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, feedId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PostFeedWowRef on AutoDisposeFutureProviderRef<String> {
  /// The parameter `feedId` of this provider.
  String get feedId;
}

class _PostFeedWowProviderElement
    extends AutoDisposeFutureProviderElement<String> with PostFeedWowRef {
  _PostFeedWowProviderElement(super.provider);

  @override
  String get feedId => (origin as PostFeedWowProvider).feedId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
