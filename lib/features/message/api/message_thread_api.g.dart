// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_thread_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getMessageThreadHash() => r'8e0308531ff11a9ee7cd8f2d7181932f0d1a2ba9';

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

/// See also [getMessageThread].
@ProviderFor(getMessageThread)
const getMessageThreadProvider = GetMessageThreadFamily();

/// See also [getMessageThread].
class GetMessageThreadFamily extends Family<AsyncValue<MessageThreadModel>> {
  /// See also [getMessageThread].
  const GetMessageThreadFamily();

  /// See also [getMessageThread].
  GetMessageThreadProvider call({
    required String? filter,
  }) {
    return GetMessageThreadProvider(
      filter: filter,
    );
  }

  @override
  GetMessageThreadProvider getProviderOverride(
    covariant GetMessageThreadProvider provider,
  ) {
    return call(
      filter: provider.filter,
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
  String? get name => r'getMessageThreadProvider';
}

/// See also [getMessageThread].
class GetMessageThreadProvider
    extends AutoDisposeFutureProvider<MessageThreadModel> {
  /// See also [getMessageThread].
  GetMessageThreadProvider({
    required String? filter,
  }) : this._internal(
          (ref) => getMessageThread(
            ref as GetMessageThreadRef,
            filter: filter,
          ),
          from: getMessageThreadProvider,
          name: r'getMessageThreadProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getMessageThreadHash,
          dependencies: GetMessageThreadFamily._dependencies,
          allTransitiveDependencies:
              GetMessageThreadFamily._allTransitiveDependencies,
          filter: filter,
        );

  GetMessageThreadProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.filter,
  }) : super.internal();

  final String? filter;

  @override
  Override overrideWith(
    FutureOr<MessageThreadModel> Function(GetMessageThreadRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetMessageThreadProvider._internal(
        (ref) => create(ref as GetMessageThreadRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        filter: filter,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<MessageThreadModel> createElement() {
    return _GetMessageThreadProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetMessageThreadProvider && other.filter == filter;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, filter.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetMessageThreadRef on AutoDisposeFutureProviderRef<MessageThreadModel> {
  /// The parameter `filter` of this provider.
  String? get filter;
}

class _GetMessageThreadProviderElement
    extends AutoDisposeFutureProviderElement<MessageThreadModel>
    with GetMessageThreadRef {
  _GetMessageThreadProviderElement(super.provider);

  @override
  String? get filter => (origin as GetMessageThreadProvider).filter;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
