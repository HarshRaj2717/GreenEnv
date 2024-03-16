import 'package:tree_coin/app/modules/dashboard/model/user_profile_response/user_profile_response.dart';

abstract class DashboardRepository {
  Future<UserProfileResponse> userProfile();
}
