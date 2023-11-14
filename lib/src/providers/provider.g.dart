// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$activityModelHash() => r'35a979fb4d2ae6dc84dd22833bd9eabbf6b1aae6';

/// Return Type 에 알맞는 Provider 가 생성됨. ( 예: FutureProvider type 이 생성됨. )
/// This will create a provider named `activityProvider`
/// which will cache the result of this function.
/// - If the UI stops using this provider, the cache will be destroyed. Then,
///   if the UI ever uses the provider again, that a new network request will be made.
///
/// Copied from [activityModel].
@ProviderFor(activityModel)
final activityModelProvider = AutoDisposeFutureProvider<ActivityModel>.internal(
  activityModel,
  name: r'activityModelProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$activityModelHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ActivityModelRef = AutoDisposeFutureProviderRef<ActivityModel>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
