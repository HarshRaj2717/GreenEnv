// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userProfileHash() => r'a447155b28ca4319831497db63c043d6ff32af03';

/// See also [userProfile].
@ProviderFor(userProfile)
final userProfileProvider =
    AutoDisposeFutureProvider<UserProfileResponse>.internal(
  userProfile,
  name: r'userProfileProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$userProfileHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef UserProfileRef = AutoDisposeFutureProviderRef<UserProfileResponse>;
String _$getTreesHash() => r'0e0bb5a80f0e5b3077adedc6f1ccb8a5fe917052';

/// See also [getTrees].
@ProviderFor(getTrees)
final getTreesProvider = AutoDisposeFutureProvider<GetTreesResponse>.internal(
  getTrees,
  name: r'getTreesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getTreesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetTreesRef = AutoDisposeFutureProviderRef<GetTreesResponse>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
