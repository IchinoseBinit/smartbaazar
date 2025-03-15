// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_comment_story_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getStorycommentHash() => r'2257f8e15065af457429c5a8fe995788e8e435c1';

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

/// See also [getStorycomment].
@ProviderFor(getStorycomment)
const getStorycommentProvider = GetStorycommentFamily();

/// See also [getStorycomment].
class GetStorycommentFamily extends Family<AsyncValue<List<FeedCommentModel>>> {
  /// See also [getStorycomment].
  const GetStorycommentFamily();

  /// See also [getStorycomment].
  GetStorycommentProvider call(
    String postid,
  ) {
    return GetStorycommentProvider(
      postid,
    );
  }

  @override
  GetStorycommentProvider getProviderOverride(
    covariant GetStorycommentProvider provider,
  ) {
    return call(
      provider.postid,
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
  String? get name => r'getStorycommentProvider';
}

/// See also [getStorycomment].
class GetStorycommentProvider
    extends AutoDisposeFutureProvider<List<FeedCommentModel>> {
  /// See also [getStorycomment].
  GetStorycommentProvider(
    String postid,
  ) : this._internal(
          (ref) => getStorycomment(
            ref as GetStorycommentRef,
            postid,
          ),
          from: getStorycommentProvider,
          name: r'getStorycommentProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getStorycommentHash,
          dependencies: GetStorycommentFamily._dependencies,
          allTransitiveDependencies:
              GetStorycommentFamily._allTransitiveDependencies,
          postid: postid,
        );

  GetStorycommentProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.postid,
  }) : super.internal();

  final String postid;

  @override
  Override overrideWith(
    FutureOr<List<FeedCommentModel>> Function(GetStorycommentRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetStorycommentProvider._internal(
        (ref) => create(ref as GetStorycommentRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        postid: postid,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<FeedCommentModel>> createElement() {
    return _GetStorycommentProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetStorycommentProvider && other.postid == postid;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, postid.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetStorycommentRef
    on AutoDisposeFutureProviderRef<List<FeedCommentModel>> {
  /// The parameter `postid` of this provider.
  String get postid;
}

class _GetStorycommentProviderElement
    extends AutoDisposeFutureProviderElement<List<FeedCommentModel>>
    with GetStorycommentRef {
  _GetStorycommentProviderElement(super.provider);

  @override
  String get postid => (origin as GetStorycommentProvider).postid;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
