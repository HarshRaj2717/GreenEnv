import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tree_coin/app/core/local_storage/app_storage.dart';
import 'package:tree_coin/app/core/network/api_client.dart';
import 'package:tree_coin/app/core/network/endpoints.dart';
import 'registration_repository.dart';

part 'registration_repository_impl.g.dart';

class RegistrationRepositoryImpl extends RegistrationRepository {
  @override
  Future<bool> registerUser(String email, String password, String name,
      String address, String state, String zipCode, String city) async {
    final data = {
      "email": email,
      "password": password,
      "name": name,
      "zip_code": zipCode,
      "city": city,
      "state": state,
      "address": address
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

  @override
  Future<bool> verifyOTP(
      String email,
      String password,
      String name,
      String address,
      String state,
      String zipCode,
      String city,
      String code) async {
    final data = {
      "email": email,
      "password": password,
      "name": name,
      "code": code,
      "zip_code": zipCode,
      "city": city,
      "state": state,
      "address": address
    };
    try {
      final apiClient = ApiClient().init();
      final response = await apiClient.post(Endpoints.register.url, data: data);
      if (response.statusCode == 200) {
        await AppStorage().putToken(response.data['api_token']);
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
