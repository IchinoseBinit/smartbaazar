// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'thread_is_read_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$makethreadreadHash() => r'fa1a0b0838a36a7a8d1510ee57179d72d9918d4b';

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

/// See also [makethreadread].
@ProviderFor(makethreadread)
const makethreadreadProvider = MakethreadreadFamily();

/// See also [makethreadread].
class MakethreadreadFamily extends Family<AsyncValue<String>> {
  /// See also [makethreadread].
  const MakethreadreadFamily();

  /// See also [makethreadread].
  MakethreadreadProvider call({
    required String id,
  }) {
    return MakethreadreadProvider(
      id: id,
    );
  }

  @override
  MakethreadreadProvider getProviderOverride(
    covariant MakethreadreadProvider provider,
  ) {
    return call(
      id: provider.id,
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
  String? get name => r'makethreadreadProvider';
}

/// See also [makethreadread].
class MakethreadreadProvider extends AutoDisposeFutureProvider<String> {
  /// See also [makethreadread].
  MakethreadreadProvider({
    required String id,
  }) : this._internal(
          (ref) => makethreadread(
            ref as MakethreadreadRef,
            id: id,
          ),
          from: makethreadreadProvider,
          name: r'makethreadreadProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$makethreadreadHash,
          dependencies: MakethreadreadFamily._dependencies,
          allTransitiveDependencies:
              MakethreadreadFamily._allTransitiveDependencies,
          id: id,
        );

  MakethreadreadProvider._internal(
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
    FutureOr<String> Function(MakethreadreadRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MakethreadreadProvider._internal(
        (ref) => create(ref as MakethreadreadRef),
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
    return _MakethreadreadProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MakethreadreadProvider && other.id == id;
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
mixin MakethreadreadRef on AutoDisposeFutureProviderRef<String> {
  /// The parameter `id` of this provider.
  String get id;
}

class _MakethreadreadProviderElement
    extends AutoDisposeFutureProviderElement<String> with MakethreadreadRef {
  _MakethreadreadProviderElement(super.provider);

  @override
  String get id => (origin as MakethreadreadProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
