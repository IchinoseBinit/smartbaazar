// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_photo_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getmessagePhotoHash() => r'25f0ff7be122bce14955af2129feeed63ccc0919';

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

/// See also [getmessagePhoto].
@ProviderFor(getmessagePhoto)
const getmessagePhotoProvider = GetmessagePhotoFamily();

/// See also [getmessagePhoto].
class GetmessagePhotoFamily extends Family<AsyncValue<MessagePhotoModel>> {
  /// See also [getmessagePhoto].
  const GetmessagePhotoFamily();

  /// See also [getmessagePhoto].
  GetmessagePhotoProvider call(
    String id,
  ) {
    return GetmessagePhotoProvider(
      id,
    );
  }

  @override
  GetmessagePhotoProvider getProviderOverride(
    covariant GetmessagePhotoProvider provider,
  ) {
    return call(
      provider.id,
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
  String? get name => r'getmessagePhotoProvider';
}

/// See also [getmessagePhoto].
class GetmessagePhotoProvider
    extends AutoDisposeFutureProvider<MessagePhotoModel> {
  /// See also [getmessagePhoto].
  GetmessagePhotoProvider(
    String id,
  ) : this._internal(
          (ref) => getmessagePhoto(
            ref as GetmessagePhotoRef,
            id,
          ),
          from: getmessagePhotoProvider,
          name: r'getmessagePhotoProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getmessagePhotoHash,
          dependencies: GetmessagePhotoFamily._dependencies,
          allTransitiveDependencies:
              GetmessagePhotoFamily._allTransitiveDependencies,
          id: id,
        );

  GetmessagePhotoProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  Override overrideWith(
    FutureOr<MessagePhotoModel> Function(GetmessagePhotoRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetmessagePhotoProvider._internal(
        (ref) => create(ref as GetmessagePhotoRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<MessagePhotoModel> createElement() {
    return _GetmessagePhotoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetmessagePhotoProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetmessagePhotoRef on AutoDisposeFutureProviderRef<MessagePhotoModel> {
  /// The parameter `id` of this provider.
  String get id;
}

class _GetmessagePhotoProviderElement
    extends AutoDisposeFutureProviderElement<MessagePhotoModel>
    with GetmessagePhotoRef {
  _GetmessagePhotoProviderElement(super.provider);

  @override
  String get id => (origin as GetmessagePhotoProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
