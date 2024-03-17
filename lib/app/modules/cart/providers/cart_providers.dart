import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tree_coin/app/modules/cart/model/get_cart_response/get_cart_response.dart';
import 'package:tree_coin/app/modules/cart/repository/cart_repository_impl.dart';

part 'cart_providers.g.dart';

final treeQuantityProvider = StateProvider<int>((ref) => 1);

@riverpod
Future<GetCartResponse> getCart(
  GetCartRef ref,
) =>
    ref.watch(cartRepositoryProvider).getCart();
