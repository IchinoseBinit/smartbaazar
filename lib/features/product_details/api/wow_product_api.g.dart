// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wow_product_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$wowThePostHash() => r'e7e17fc22713c5b7ffe7b54a448c5b61427d08d2';

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

/// See also [wowThePost].
@ProviderFor(wowThePost)
const wowThePostProvider = WowThePostFamily();

/// See also [wowThePost].
class WowThePostFamily extends Family<AsyncValue<String>> {
  /// See also [wowThePost].
  const WowThePostFamily();

  /// See also [wowThePost].
  WowThePostProvider call(
    String id,
  ) {
    return WowThePostProvider(
      id,
    );
  }

  @override
  WowThePostProvider getProviderOverride(
    covariant WowThePostProvider provider,
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
  String? get name => r'wowThePostProvider';
}

/// See also [wowThePost].
class WowThePostProvider extends AutoDisposeFutureProvider<String> {
  /// See also [wowThePost].
  WowThePostProvider(
    String id,
  ) : this._internal(
          (ref) => wowThePost(
            ref as WowThePostRef,
            id,
          ),
          from: wowThePostProvider,
          name: r'wowThePostProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$wowThePostHash,
          dependencies: WowThePostFamily._dependencies,
          allTransitiveDependencies:
              WowThePostFamily._allTransitiveDependencies,
          id: id,
        );

  WowThePostProvider._internal(
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
    FutureOr<String> Function(WowThePostRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: WowThePostProvider._internal(
        (ref) => create(ref as WowThePostRef),
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
  AutoDisposeFutureProviderElement<String> createElement() {
    return _WowThePostProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is WowThePostProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin WowThePostRef on AutoDisposeFutureProviderRef<String> {
  /// The parameter `id` of this provider.
  String get id;
}

class _WowThePostProviderElement
    extends AutoDisposeFutureProviderElement<String> with WowThePostRef {
  _WowThePostProviderElement(super.provider);

  @override
  String get id => (origin as WowThePostProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
