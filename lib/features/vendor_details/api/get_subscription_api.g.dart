// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_subscription_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getSubscriptionHash() => r'be2d889327f5384bf95be2d22fe96089c7d7615d';

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

/// See also [getSubscription].
@ProviderFor(getSubscription)
const getSubscriptionProvider = GetSubscriptionFamily();

/// See also [getSubscription].
class GetSubscriptionFamily extends Family<AsyncValue<SubscriptionResponse>> {
  /// See also [getSubscription].
  const GetSubscriptionFamily();

  /// See also [getSubscription].
  GetSubscriptionProvider call({
    int pageval = 1,
  }) {
    return GetSubscriptionProvider(
      pageval: pageval,
    );
  }

  @override
  GetSubscriptionProvider getProviderOverride(
    covariant GetSubscriptionProvider provider,
  ) {
    return call(
      pageval: provider.pageval,
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
  String? get name => r'getSubscriptionProvider';
}

/// See also [getSubscription].
class GetSubscriptionProvider
    extends AutoDisposeFutureProvider<SubscriptionResponse> {
  /// See also [getSubscription].
  GetSubscriptionProvider({
    int pageval = 1,
  }) : this._internal(
          (ref) => getSubscription(
            ref as GetSubscriptionRef,
            pageval: pageval,
          ),
          from: getSubscriptionProvider,
          name: r'getSubscriptionProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getSubscriptionHash,
          dependencies: GetSubscriptionFamily._dependencies,
          allTransitiveDependencies:
              GetSubscriptionFamily._allTransitiveDependencies,
          pageval: pageval,
        );

  GetSubscriptionProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.pageval,
  }) : super.internal();

  final int pageval;

  @override
  Override overrideWith(
    FutureOr<SubscriptionResponse> Function(GetSubscriptionRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetSubscriptionProvider._internal(
        (ref) => create(ref as GetSubscriptionRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        pageval: pageval,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<SubscriptionResponse> createElement() {
    return _GetSubscriptionProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetSubscriptionProvider && other.pageval == pageval;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, pageval.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetSubscriptionRef on AutoDisposeFutureProviderRef<SubscriptionResponse> {
  /// The parameter `pageval` of this provider.
  int get pageval;
}

class _GetSubscriptionProviderElement
    extends AutoDisposeFutureProviderElement<SubscriptionResponse>
    with GetSubscriptionRef {
  _GetSubscriptionProviderElement(super.provider);

  @override
  int get pageval => (origin as GetSubscriptionProvider).pageval;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
