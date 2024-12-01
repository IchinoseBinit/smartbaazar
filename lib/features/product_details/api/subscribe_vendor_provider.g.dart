// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscribe_vendor_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$subscribevendorHash() => r'57c89fb0d55b765268874a1e96e0643ed3a80dfe';

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

/// See also [subscribevendor].
@ProviderFor(subscribevendor)
const subscribevendorProvider = SubscribevendorFamily();

/// See also [subscribevendor].
class SubscribevendorFamily extends Family<AsyncValue<String>> {
  /// See also [subscribevendor].
  const SubscribevendorFamily();

  /// See also [subscribevendor].
  SubscribevendorProvider call({
    required String vendorid,
  }) {
    return SubscribevendorProvider(
      vendorid: vendorid,
    );
  }

  @override
  SubscribevendorProvider getProviderOverride(
    covariant SubscribevendorProvider provider,
  ) {
    return call(
      vendorid: provider.vendorid,
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
  String? get name => r'subscribevendorProvider';
}

/// See also [subscribevendor].
class SubscribevendorProvider extends AutoDisposeFutureProvider<String> {
  /// See also [subscribevendor].
  SubscribevendorProvider({
    required String vendorid,
  }) : this._internal(
          (ref) => subscribevendor(
            ref as SubscribevendorRef,
            vendorid: vendorid,
          ),
          from: subscribevendorProvider,
          name: r'subscribevendorProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$subscribevendorHash,
          dependencies: SubscribevendorFamily._dependencies,
          allTransitiveDependencies:
              SubscribevendorFamily._allTransitiveDependencies,
          vendorid: vendorid,
        );

  SubscribevendorProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.vendorid,
  }) : super.internal();

  final String vendorid;

  @override
  Override overrideWith(
    FutureOr<String> Function(SubscribevendorRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SubscribevendorProvider._internal(
        (ref) => create(ref as SubscribevendorRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        vendorid: vendorid,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<String> createElement() {
    return _SubscribevendorProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SubscribevendorProvider && other.vendorid == vendorid;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, vendorid.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SubscribevendorRef on AutoDisposeFutureProviderRef<String> {
  /// The parameter `vendorid` of this provider.
  String get vendorid;
}

class _SubscribevendorProviderElement
    extends AutoDisposeFutureProviderElement<String> with SubscribevendorRef {
  _SubscribevendorProviderElement(super.provider);

  @override
  String get vendorid => (origin as SubscribevendorProvider).vendorid;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
