// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'do_wow_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$dowowapiHash() => r'50a4a27e373d9df0f0ef743660d8d8b74df672b8';

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

/// See also [dowowapi].
@ProviderFor(dowowapi)
const dowowapiProvider = DowowapiFamily();

/// See also [dowowapi].
class DowowapiFamily extends Family<AsyncValue<String>> {
  /// See also [dowowapi].
  const DowowapiFamily();

  /// See also [dowowapi].
  DowowapiProvider call(
    String userId,
  ) {
    return DowowapiProvider(
      userId,
    );
  }

  @override
  DowowapiProvider getProviderOverride(
    covariant DowowapiProvider provider,
  ) {
    return call(
      provider.userId,
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
  String? get name => r'dowowapiProvider';
}

/// See also [dowowapi].
class DowowapiProvider extends AutoDisposeFutureProvider<String> {
  /// See also [dowowapi].
  DowowapiProvider(
    String userId,
  ) : this._internal(
          (ref) => dowowapi(
            ref as DowowapiRef,
            userId,
          ),
          from: dowowapiProvider,
          name: r'dowowapiProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$dowowapiHash,
          dependencies: DowowapiFamily._dependencies,
          allTransitiveDependencies: DowowapiFamily._allTransitiveDependencies,
          userId: userId,
        );

  DowowapiProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userId,
  }) : super.internal();

  final String userId;

  @override
  Override overrideWith(
    FutureOr<String> Function(DowowapiRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DowowapiProvider._internal(
        (ref) => create(ref as DowowapiRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userId: userId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<String> createElement() {
    return _DowowapiProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DowowapiProvider && other.userId == userId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin DowowapiRef on AutoDisposeFutureProviderRef<String> {
  /// The parameter `userId` of this provider.
  String get userId;
}

class _DowowapiProviderElement extends AutoDisposeFutureProviderElement<String>
    with DowowapiRef {
  _DowowapiProviderElement(super.provider);

  @override
  String get userId => (origin as DowowapiProvider).userId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
