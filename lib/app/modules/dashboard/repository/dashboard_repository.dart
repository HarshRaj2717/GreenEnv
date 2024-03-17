import 'package:tree_coin/app/modules/dashboard/model/get_trees_response/get_trees_response.dart';
import 'package:tree_coin/app/modules/dashboard/model/user_profile_response/user_profile_response.dart';

abstract class DashboardRepository {
  Future<UserProfileResponse> userProfile();
  Future<GetTreesResponse> getTrees();
}
