import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tree_coin/app/core/local_storage/app_storage.dart';
import 'package:tree_coin/app/core/network/api_client.dart';
import 'package:tree_coin/app/core/network/endpoints.dart';
import 'package:tree_coin/app/modules/cart/model/get_cart_response/get_cart_response.dart';
import 'cart_repository.dart';

part 'cart_repository_impl.g.dart';

class CartRepositoryImpl extends CartRepository {
  @override
  Future<bool> addToCart(String name) async {
    final token = await AppStorage().getToken();
    var data = {"tree": name};
    try {
      final apiClient = ApiClient().init();
      final response =
          await apiClient.post("${Endpoints.base.url}/$token/add/", data: data);

      if (response.statusCode == 200) {
        return true;
      }
      return false;
    } catch (e) {
      Future.error(e.toString());
      return false;
    }
  }

  @override
  Future<bool> removeFromCart(String name) async {
    final token = await AppStorage().getToken();
    var data = {"tree": name};
    try {
      final apiClient = ApiClient().init();
      final response = await apiClient
          .post("${Endpoints.base.url}/$token/remove/", data: data);

      if (response.statusCode == 200) {
        return true;
      }
      return false;
    } catch (e) {
      Future.error(e.toString());
      return false;
    }
  }

  @override
  Future<GetCartResponse> getCart() async {
    final token = await AppStorage().getToken();
    try {
      final apiClient = ApiClient().init();
      final response = await apiClient.get(
        "${Endpoints.base.url}/$token/get-cart/",
      );
      return GetCartResponse.fromJson(response.data);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  @override
  Future<bool> checkoutCart() async {
    final token = await AppStorage().getToken();
    try {
      final apiClient = ApiClient().init();
      final response = await apiClient.post(
        "${Endpoints.base.url}/$token/buy/",
      );
      if (response.statusCode == 200) {
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
CartRepository cartRepository(CartRepositoryRef ref) => CartRepositoryImpl();
