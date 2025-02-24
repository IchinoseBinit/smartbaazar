// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_enquire_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$checkEnquireHash() => r'f105fb0cc9754cbc7f329a0ec36e0dc8a5f9affa';

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

/// See also [checkEnquire].
@ProviderFor(checkEnquire)
const checkEnquireProvider = CheckEnquireFamily();

/// See also [checkEnquire].
class CheckEnquireFamily extends Family<AsyncValue<EnquireResponse>> {
  /// See also [checkEnquire].
  const CheckEnquireFamily();

  /// See also [checkEnquire].
  CheckEnquireProvider call(
    String id,
  ) {
    return CheckEnquireProvider(
      id,
    );
  }

  @override
  CheckEnquireProvider getProviderOverride(
    covariant CheckEnquireProvider provider,
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
  String? get name => r'checkEnquireProvider';
}

/// See also [checkEnquire].
class CheckEnquireProvider extends AutoDisposeFutureProvider<EnquireResponse> {
  /// See also [checkEnquire].
  CheckEnquireProvider(
    String id,
  ) : this._internal(
          (ref) => checkEnquire(
            ref as CheckEnquireRef,
            id,
          ),
          from: checkEnquireProvider,
          name: r'checkEnquireProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$checkEnquireHash,
          dependencies: CheckEnquireFamily._dependencies,
          allTransitiveDependencies:
              CheckEnquireFamily._allTransitiveDependencies,
          id: id,
        );

  CheckEnquireProvider._internal(
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
    FutureOr<EnquireResponse> Function(CheckEnquireRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CheckEnquireProvider._internal(
        (ref) => create(ref as CheckEnquireRef),
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
  AutoDisposeFutureProviderElement<EnquireResponse> createElement() {
    return _CheckEnquireProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CheckEnquireProvider && other.id == id;
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
mixin CheckEnquireRef on AutoDisposeFutureProviderRef<EnquireResponse> {
  /// The parameter `id` of this provider.
  String get id;
}

class _CheckEnquireProviderElement
    extends AutoDisposeFutureProviderElement<EnquireResponse>
    with CheckEnquireRef {
  _CheckEnquireProviderElement(super.provider);

  @override
  String get id => (origin as CheckEnquireProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
