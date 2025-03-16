// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resend_sms_otp_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$resendotpsmsHash() => r'42c06806c4720ed569d3279effc55c4baf969ab4';

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

/// See also [resendotpsms].
@ProviderFor(resendotpsms)
const resendotpsmsProvider = ResendotpsmsFamily();

/// See also [resendotpsms].
class ResendotpsmsFamily extends Family<AsyncValue<String>> {
  /// See also [resendotpsms].
  const ResendotpsmsFamily();

  /// See also [resendotpsms].
  ResendotpsmsProvider call(
    int id,
  ) {
    return ResendotpsmsProvider(
      id,
    );
  }

  @override
  ResendotpsmsProvider getProviderOverride(
    covariant ResendotpsmsProvider provider,
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
  String? get name => r'resendotpsmsProvider';
}

/// See also [resendotpsms].
class ResendotpsmsProvider extends AutoDisposeFutureProvider<String> {
  /// See also [resendotpsms].
  ResendotpsmsProvider(
    int id,
  ) : this._internal(
          (ref) => resendotpsms(
            ref as ResendotpsmsRef,
            id,
          ),
          from: resendotpsmsProvider,
          name: r'resendotpsmsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$resendotpsmsHash,
          dependencies: ResendotpsmsFamily._dependencies,
          allTransitiveDependencies:
              ResendotpsmsFamily._allTransitiveDependencies,
          id: id,
        );

  ResendotpsmsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  Override overrideWith(
    FutureOr<String> Function(ResendotpsmsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ResendotpsmsProvider._internal(
        (ref) => create(ref as ResendotpsmsRef),
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
    return _ResendotpsmsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ResendotpsmsProvider && other.id == id;
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
mixin ResendotpsmsRef on AutoDisposeFutureProviderRef<String> {
  /// The parameter `id` of this provider.
  int get id;
}

class _ResendotpsmsProviderElement
    extends AutoDisposeFutureProviderElement<String> with ResendotpsmsRef {
  _ResendotpsmsProviderElement(super.provider);

  @override
  int get id => (origin as ResendotpsmsProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
