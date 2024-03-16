import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tree_coin/app/core/network/api_client.dart';
import 'package:tree_coin/app/core/network/endpoints.dart';
import 'registration_repository.dart';

part 'registration_repository_impl.g.dart';

class RegistrationRepositoryImpl extends RegistrationRepository {
  @override
  Future<bool> registerUser(
      String email, String password, String name, String address) async {
    final data = {
      "email": "Satyamjha9911@gmail.com",
      "password": "Sushi@148",
      "name": "Satyam Jha",
      "address": "H-91, OLD SEEmapuri delhi -95"
    };
    try {
      final apiClient = ApiClient().init();
      final response = await apiClient.post(Endpoints.register.url, data: data);
      if (response.statusCode == 200) {
        return true;
      }
      return false;
    } catch (e) {
      return false;
    }
  }
}

@riverpod
RegistrationRepository registrationRepository(RegistrationRepositoryRef ref) =>
    RegistrationRepositoryImpl();
