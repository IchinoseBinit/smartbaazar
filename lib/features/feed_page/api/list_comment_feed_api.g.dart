// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_comment_feed_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getfeedcommentHash() => r'4ed628958c71b7f99b83736c3d8d957b15854090';

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

/// See also [getfeedcomment].
@ProviderFor(getfeedcomment)
const getfeedcommentProvider = GetfeedcommentFamily();

/// See also [getfeedcomment].
class GetfeedcommentFamily extends Family<AsyncValue<List<FeedCommentModel>>> {
  /// See also [getfeedcomment].
  const GetfeedcommentFamily();

  /// See also [getfeedcomment].
  GetfeedcommentProvider call(
    String postid,
  ) {
    return GetfeedcommentProvider(
      postid,
    );
  }

  @override
  GetfeedcommentProvider getProviderOverride(
    covariant GetfeedcommentProvider provider,
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
  String? get name => r'getfeedcommentProvider';
}

/// See also [getfeedcomment].
class GetfeedcommentProvider
    extends AutoDisposeFutureProvider<List<FeedCommentModel>> {
  /// See also [getfeedcomment].
  GetfeedcommentProvider(
    String postid,
  ) : this._internal(
          (ref) => getfeedcomment(
            ref as GetfeedcommentRef,
            postid,
          ),
          from: getfeedcommentProvider,
          name: r'getfeedcommentProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getfeedcommentHash,
          dependencies: GetfeedcommentFamily._dependencies,
          allTransitiveDependencies:
              GetfeedcommentFamily._allTransitiveDependencies,
          postid: postid,
        );

  GetfeedcommentProvider._internal(
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
    FutureOr<List<FeedCommentModel>> Function(GetfeedcommentRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetfeedcommentProvider._internal(
        (ref) => create(ref as GetfeedcommentRef),
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
    return _GetfeedcommentProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetfeedcommentProvider && other.postid == postid;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, postid.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetfeedcommentRef
    on AutoDisposeFutureProviderRef<List<FeedCommentModel>> {
  /// The parameter `postid` of this provider.
  String get postid;
}

class _GetfeedcommentProviderElement
    extends AutoDisposeFutureProviderElement<List<FeedCommentModel>>
    with GetfeedcommentRef {
  _GetfeedcommentProviderElement(super.provider);

  @override
  String get postid => (origin as GetfeedcommentProvider).postid;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
