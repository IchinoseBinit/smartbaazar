// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_is_important_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$markMessageIsImportantHash() =>
    r'62c98af9d6dc6ac218af9f66ed1324a6c9e2b565';

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

/// API function for marking the message as important
///
/// Copied from [markMessageIsImportant].
@ProviderFor(markMessageIsImportant)
const markMessageIsImportantProvider = MarkMessageIsImportantFamily();

/// API function for marking the message as important
///
/// Copied from [markMessageIsImportant].
class MarkMessageIsImportantFamily extends Family<AsyncValue<bool>> {
  /// API function for marking the message as important
  ///
  /// Copied from [markMessageIsImportant].
  const MarkMessageIsImportantFamily();

  /// API function for marking the message as important
  ///
  /// Copied from [markMessageIsImportant].
  MarkMessageIsImportantProvider call(
    String threadId,
  ) {
    return MarkMessageIsImportantProvider(
      threadId,
    );
  }

  @override
  MarkMessageIsImportantProvider getProviderOverride(
    covariant MarkMessageIsImportantProvider provider,
  ) {
    return call(
      provider.threadId,
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
  String? get name => r'markMessageIsImportantProvider';
}

/// API function for marking the message as important
///
/// Copied from [markMessageIsImportant].
class MarkMessageIsImportantProvider extends AutoDisposeFutureProvider<bool> {
  /// API function for marking the message as important
  ///
  /// Copied from [markMessageIsImportant].
  MarkMessageIsImportantProvider(
    String threadId,
  ) : this._internal(
          (ref) => markMessageIsImportant(
            ref as MarkMessageIsImportantRef,
            threadId,
          ),
          from: markMessageIsImportantProvider,
          name: r'markMessageIsImportantProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$markMessageIsImportantHash,
          dependencies: MarkMessageIsImportantFamily._dependencies,
          allTransitiveDependencies:
              MarkMessageIsImportantFamily._allTransitiveDependencies,
          threadId: threadId,
        );

  MarkMessageIsImportantProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.threadId,
  }) : super.internal();

  final String threadId;

  @override
  Override overrideWith(
    FutureOr<bool> Function(MarkMessageIsImportantRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MarkMessageIsImportantProvider._internal(
        (ref) => create(ref as MarkMessageIsImportantRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        threadId: threadId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<bool> createElement() {
    return _MarkMessageIsImportantProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MarkMessageIsImportantProvider &&
        other.threadId == threadId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, threadId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin MarkMessageIsImportantRef on AutoDisposeFutureProviderRef<bool> {
  /// The parameter `threadId` of this provider.
  String get threadId;
}

class _MarkMessageIsImportantProviderElement
    extends AutoDisposeFutureProviderElement<bool>
    with MarkMessageIsImportantRef {
  _MarkMessageIsImportantProviderElement(super.provider);

  @override
  String get threadId => (origin as MarkMessageIsImportantProvider).threadId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
