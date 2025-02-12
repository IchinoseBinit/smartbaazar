// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_to_cart_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$addtocartHash() => r'fe0d99a967b7700829eba9ff637664e2bb63d58f';

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

/// See also [addtocart].
@ProviderFor(addtocart)
const addtocartProvider = AddtocartFamily();

/// See also [addtocart].
class AddtocartFamily extends Family<AsyncValue<String>> {
  /// See also [addtocart].
  const AddtocartFamily();

  /// See also [addtocart].
  AddtocartProvider call(
    String id,
  ) {
    return AddtocartProvider(
      id,
    );
  }

  @override
  AddtocartProvider getProviderOverride(
    covariant AddtocartProvider provider,
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
  String? get name => r'addtocartProvider';
}

/// See also [addtocart].
class AddtocartProvider extends AutoDisposeFutureProvider<String> {
  /// See also [addtocart].
  AddtocartProvider(
    String id,
  ) : this._internal(
          (ref) => addtocart(
            ref as AddtocartRef,
            id,
          ),
          from: addtocartProvider,
          name: r'addtocartProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$addtocartHash,
          dependencies: AddtocartFamily._dependencies,
          allTransitiveDependencies: AddtocartFamily._allTransitiveDependencies,
          id: id,
        );

  AddtocartProvider._internal(
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
    FutureOr<String> Function(AddtocartRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AddtocartProvider._internal(
        (ref) => create(ref as AddtocartRef),
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
    return _AddtocartProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AddtocartProvider && other.id == id;
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
mixin AddtocartRef on AutoDisposeFutureProviderRef<String> {
  /// The parameter `id` of this provider.
  String get id;
}

class _AddtocartProviderElement extends AutoDisposeFutureProviderElement<String>
    with AddtocartRef {
  _AddtocartProviderElement(super.provider);

  @override
  String get id => (origin as AddtocartProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
