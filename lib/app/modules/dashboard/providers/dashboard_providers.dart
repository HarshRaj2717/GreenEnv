import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tree_coin/app/modules/dashboard/model/user_profile_response/user_profile_response.dart';
import 'package:tree_coin/app/modules/dashboard/repository/dashboard_repository_impl.dart';
part 'dashboard_providers.g.dart';

final showBalanceProvider = StateProvider<bool>((ref) => false);

@riverpod
Future<UserProfileResponse> userProfile(
  UserProfileRef ref,
) =>
    ref.watch(dashboardRepositoryProvider).userProfile();
