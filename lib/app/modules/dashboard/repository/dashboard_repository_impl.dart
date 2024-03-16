import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tree_coin/app/core/local_storage/app_storage.dart';
import 'package:tree_coin/app/core/network/api_client.dart';
import 'package:tree_coin/app/core/network/endpoints.dart';
import 'package:tree_coin/app/modules/dashboard/model/user_profile_response/user_profile_response.dart';
import 'dashboard_repository.dart';

part 'dashboard_repository_impl.g.dart';

class DashboardRepositoryImpl extends DashboardRepository {
  @override
  Future<UserProfileResponse> userProfile() async {
    final token = await AppStorage().getToken();
    try {
      final apiClient = ApiClient().init();
      final response =
          await apiClient.get("${Endpoints.base.url}/$token/profile/");

      return UserProfileResponse.fromJson(response.data);
    } catch (e) {
      return Future.error(e.toString());
    }
  }
}

@riverpod
DashboardRepository dashboardRepository(DashboardRepositoryRef ref) =>
    DashboardRepositoryImpl();
