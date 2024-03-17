import 'package:tree_coin/app/modules/cart/model/get_cart_response/get_cart_response.dart';

abstract class CartRepository {
  Future<bool> addToCart(String name);
  Future<bool> removeFromCart(String name);
  Future<GetCartResponse> getCart();
  Future<bool> checkoutCart();
}
