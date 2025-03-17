// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'thread_is_important_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$makethreadimportantHash() =>
    r'f8aeee3b25ca1eed814724cc4116561f6b3751f7';

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

/// See also [makethreadimportant].
@ProviderFor(makethreadimportant)
const makethreadimportantProvider = MakethreadimportantFamily();

/// See also [makethreadimportant].
class MakethreadimportantFamily extends Family<AsyncValue<String>> {
  /// See also [makethreadimportant].
  const MakethreadimportantFamily();

  /// See also [makethreadimportant].
  MakethreadimportantProvider call({
    required String id,
  }) {
    return MakethreadimportantProvider(
      id: id,
    );
  }

  @override
  MakethreadimportantProvider getProviderOverride(
    covariant MakethreadimportantProvider provider,
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
  String? get name => r'makethreadimportantProvider';
}

/// See also [makethreadimportant].
class MakethreadimportantProvider extends AutoDisposeFutureProvider<String> {
  /// See also [makethreadimportant].
  MakethreadimportantProvider({
    required String id,
  }) : this._internal(
          (ref) => makethreadimportant(
            ref as MakethreadimportantRef,
            id: id,
          ),
          from: makethreadimportantProvider,
          name: r'makethreadimportantProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$makethreadimportantHash,
          dependencies: MakethreadimportantFamily._dependencies,
          allTransitiveDependencies:
              MakethreadimportantFamily._allTransitiveDependencies,
          id: id,
        );

  MakethreadimportantProvider._internal(
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
    FutureOr<String> Function(MakethreadimportantRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MakethreadimportantProvider._internal(
        (ref) => create(ref as MakethreadimportantRef),
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
    return _MakethreadimportantProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MakethreadimportantProvider && other.id == id;
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
mixin MakethreadimportantRef on AutoDisposeFutureProviderRef<String> {
  /// The parameter `id` of this provider.
  String get id;
}

class _MakethreadimportantProviderElement
    extends AutoDisposeFutureProviderElement<String>
    with MakethreadimportantRef {
  _MakethreadimportantProviderElement(super.provider);

  @override
  String get id => (origin as MakethreadimportantProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
