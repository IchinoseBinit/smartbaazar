// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_device_token.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$storeDeviceTokenHash() => r'a008419bc507690e16b11a8a9893d85992fe13ce';

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

/// See also [storeDeviceToken].
@ProviderFor(storeDeviceToken)
const storeDeviceTokenProvider = StoreDeviceTokenFamily();

/// See also [storeDeviceToken].
class StoreDeviceTokenFamily extends Family<AsyncValue<String>> {
  /// See also [storeDeviceToken].
  const StoreDeviceTokenFamily();

  /// See also [storeDeviceToken].
  StoreDeviceTokenProvider call({
    required String token,
  }) {
    return StoreDeviceTokenProvider(
      token: token,
    );
  }

  @override
  StoreDeviceTokenProvider getProviderOverride(
    covariant StoreDeviceTokenProvider provider,
  ) {
    return call(
      token: provider.token,
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
  String? get name => r'storeDeviceTokenProvider';
}

/// See also [storeDeviceToken].
class StoreDeviceTokenProvider extends AutoDisposeFutureProvider<String> {
  /// See also [storeDeviceToken].
  StoreDeviceTokenProvider({
    required String token,
  }) : this._internal(
          (ref) => storeDeviceToken(
            ref as StoreDeviceTokenRef,
            token: token,
          ),
          from: storeDeviceTokenProvider,
          name: r'storeDeviceTokenProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$storeDeviceTokenHash,
          dependencies: StoreDeviceTokenFamily._dependencies,
          allTransitiveDependencies:
              StoreDeviceTokenFamily._allTransitiveDependencies,
          token: token,
        );

  StoreDeviceTokenProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.token,
  }) : super.internal();

  final String token;

  @override
  Override overrideWith(
    FutureOr<String> Function(StoreDeviceTokenRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: StoreDeviceTokenProvider._internal(
        (ref) => create(ref as StoreDeviceTokenRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        token: token,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<String> createElement() {
    return _StoreDeviceTokenProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is StoreDeviceTokenProvider && other.token == token;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, token.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin StoreDeviceTokenRef on AutoDisposeFutureProviderRef<String> {
  /// The parameter `token` of this provider.
  String get token;
}

class _StoreDeviceTokenProviderElement
    extends AutoDisposeFutureProviderElement<String> with StoreDeviceTokenRef {
  _StoreDeviceTokenProviderElement(super.provider);

  @override
  String get token => (origin as StoreDeviceTokenProvider).token;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
