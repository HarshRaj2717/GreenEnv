import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tree_coin/app/core/local_storage/app_storage.dart';
import 'package:tree_coin/app/core/network/api_client.dart';
import 'package:tree_coin/app/core/network/endpoints.dart';
import 'login_repository.dart';

part 'login_repository_impl.g.dart';

class LoginRepositoryImpl extends LoginRepository {
  @override
  Future<bool> loginUser(String email, String password) async {
    final data = {"email": email, "password": password};
    try {
      final apiClient = ApiClient().init();
      final response = await apiClient.post(Endpoints.login.url, data: data);
      if (response.statusCode == 200) {
        await AppStorage().putToken(response.data['api_token']);
        return true;
      }
      return false;
    } catch (e) {
      Future.error(e.toString());
      return false;
    }
  }
}

@riverpod
LoginRepository loginRepository(LoginRepositoryRef ref) =>
    LoginRepositoryImpl();
