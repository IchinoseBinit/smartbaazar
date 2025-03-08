// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_profile_bg_and_desc.api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$postProfileBGAndDescHash() =>
    r'401a4ad54983aa3ac27b758634c0c3c0b3c19303';

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

/// See also [postProfileBGAndDesc].
@ProviderFor(postProfileBGAndDesc)
const postProfileBGAndDescProvider = PostProfileBGAndDescFamily();

/// See also [postProfileBGAndDesc].
class PostProfileBGAndDescFamily extends Family<AsyncValue<bool>> {
  /// See also [postProfileBGAndDesc].
  const PostProfileBGAndDescFamily();

  /// See also [postProfileBGAndDesc].
  PostProfileBGAndDescProvider call(
    File? imageFile,
    String? desc,
    File? profileImageFile,
  ) {
    return PostProfileBGAndDescProvider(
      imageFile,
      desc,
      profileImageFile,
    );
  }

  @override
  PostProfileBGAndDescProvider getProviderOverride(
    covariant PostProfileBGAndDescProvider provider,
  ) {
    return call(
      provider.imageFile,
      provider.desc,
      provider.profileImageFile,
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
  String? get name => r'postProfileBGAndDescProvider';
}

/// See also [postProfileBGAndDesc].
class PostProfileBGAndDescProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [postProfileBGAndDesc].
  PostProfileBGAndDescProvider(
    File? imageFile,
    String? desc,
    File? profileImageFile,
  ) : this._internal(
          (ref) => postProfileBGAndDesc(
            ref as PostProfileBGAndDescRef,
            imageFile,
            desc,
            profileImageFile,
          ),
          from: postProfileBGAndDescProvider,
          name: r'postProfileBGAndDescProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$postProfileBGAndDescHash,
          dependencies: PostProfileBGAndDescFamily._dependencies,
          allTransitiveDependencies:
              PostProfileBGAndDescFamily._allTransitiveDependencies,
          imageFile: imageFile,
          desc: desc,
          profileImageFile: profileImageFile,
        );

  PostProfileBGAndDescProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.imageFile,
    required this.desc,
    required this.profileImageFile,
  }) : super.internal();

  final File? imageFile;
  final String? desc;
  final File? profileImageFile;

  @override
  Override overrideWith(
    FutureOr<bool> Function(PostProfileBGAndDescRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PostProfileBGAndDescProvider._internal(
        (ref) => create(ref as PostProfileBGAndDescRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        imageFile: imageFile,
        desc: desc,
        profileImageFile: profileImageFile,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<bool> createElement() {
    return _PostProfileBGAndDescProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PostProfileBGAndDescProvider &&
        other.imageFile == imageFile &&
        other.desc == desc &&
        other.profileImageFile == profileImageFile;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, imageFile.hashCode);
    hash = _SystemHash.combine(hash, desc.hashCode);
    hash = _SystemHash.combine(hash, profileImageFile.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PostProfileBGAndDescRef on AutoDisposeFutureProviderRef<bool> {
  /// The parameter `imageFile` of this provider.
  File? get imageFile;

  /// The parameter `desc` of this provider.
  String? get desc;

  /// The parameter `profileImageFile` of this provider.
  File? get profileImageFile;
}

class _PostProfileBGAndDescProviderElement
    extends AutoDisposeFutureProviderElement<bool>
    with PostProfileBGAndDescRef {
  _PostProfileBGAndDescProviderElement(super.provider);

  @override
  File? get imageFile => (origin as PostProfileBGAndDescProvider).imageFile;
  @override
  String? get desc => (origin as PostProfileBGAndDescProvider).desc;
  @override
  File? get profileImageFile =>
      (origin as PostProfileBGAndDescProvider).profileImageFile;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
