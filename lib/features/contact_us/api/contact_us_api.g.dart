// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_us_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$postContactUsHash() => r'4804902920387c3cc1168e0bbfc5d6127f313af7';

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

/// See also [postContactUs].
@ProviderFor(postContactUs)
const postContactUsProvider = PostContactUsFamily();

/// See also [postContactUs].
class PostContactUsFamily extends Family<AsyncValue<void>> {
  /// See also [postContactUs].
  const PostContactUsFamily();

  /// See also [postContactUs].
  PostContactUsProvider call(
    ContactUsModel contactUsModel,
  ) {
    return PostContactUsProvider(
      contactUsModel,
    );
  }

  @override
  PostContactUsProvider getProviderOverride(
    covariant PostContactUsProvider provider,
  ) {
    return call(
      provider.contactUsModel,
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
  String? get name => r'postContactUsProvider';
}

/// See also [postContactUs].
class PostContactUsProvider extends AutoDisposeFutureProvider<void> {
  /// See also [postContactUs].
  PostContactUsProvider(
    ContactUsModel contactUsModel,
  ) : this._internal(
          (ref) => postContactUs(
            ref as PostContactUsRef,
            contactUsModel,
          ),
          from: postContactUsProvider,
          name: r'postContactUsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$postContactUsHash,
          dependencies: PostContactUsFamily._dependencies,
          allTransitiveDependencies:
              PostContactUsFamily._allTransitiveDependencies,
          contactUsModel: contactUsModel,
        );

  PostContactUsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.contactUsModel,
  }) : super.internal();

  final ContactUsModel contactUsModel;

  @override
  Override overrideWith(
    FutureOr<void> Function(PostContactUsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PostContactUsProvider._internal(
        (ref) => create(ref as PostContactUsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        contactUsModel: contactUsModel,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _PostContactUsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PostContactUsProvider &&
        other.contactUsModel == contactUsModel;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, contactUsModel.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PostContactUsRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `contactUsModel` of this provider.
  ContactUsModel get contactUsModel;
}

class _PostContactUsProviderElement
    extends AutoDisposeFutureProviderElement<void> with PostContactUsRef {
  _PostContactUsProviderElement(super.provider);

  @override
  ContactUsModel get contactUsModel =>
      (origin as PostContactUsProvider).contactUsModel;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
