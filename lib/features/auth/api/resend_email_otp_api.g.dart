// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resend_email_otp_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$resendotpemailHash() => r'15d9259daf7298cebe39dcc24f93bc1ecb259c33';

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

/// See also [resendotpemail].
@ProviderFor(resendotpemail)
const resendotpemailProvider = ResendotpemailFamily();

/// See also [resendotpemail].
class ResendotpemailFamily extends Family<AsyncValue<String>> {
  /// See also [resendotpemail].
  const ResendotpemailFamily();

  /// See also [resendotpemail].
  ResendotpemailProvider call(
    String id,
  ) {
    return ResendotpemailProvider(
      id,
    );
  }

  @override
  ResendotpemailProvider getProviderOverride(
    covariant ResendotpemailProvider provider,
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
  String? get name => r'resendotpemailProvider';
}

/// See also [resendotpemail].
class ResendotpemailProvider extends AutoDisposeFutureProvider<String> {
  /// See also [resendotpemail].
  ResendotpemailProvider(
    String id,
  ) : this._internal(
          (ref) => resendotpemail(
            ref as ResendotpemailRef,
            id,
          ),
          from: resendotpemailProvider,
          name: r'resendotpemailProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$resendotpemailHash,
          dependencies: ResendotpemailFamily._dependencies,
          allTransitiveDependencies:
              ResendotpemailFamily._allTransitiveDependencies,
          id: id,
        );

  ResendotpemailProvider._internal(
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
    FutureOr<String> Function(ResendotpemailRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ResendotpemailProvider._internal(
        (ref) => create(ref as ResendotpemailRef),
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
    return _ResendotpemailProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ResendotpemailProvider && other.id == id;
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
mixin ResendotpemailRef on AutoDisposeFutureProviderRef<String> {
  /// The parameter `id` of this provider.
  String get id;
}

class _ResendotpemailProviderElement
    extends AutoDisposeFutureProviderElement<String> with ResendotpemailRef {
  _ResendotpemailProviderElement(super.provider);

  @override
  String get id => (origin as ResendotpemailProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
