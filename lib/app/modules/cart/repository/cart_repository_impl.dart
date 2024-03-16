import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'cart_repository.dart';

part 'cart_repository_impl.g.dart';

class CartRepositoryImpl extends CartRepository {
  // TODO add your methods here
}

@riverpod
 CartRepository cartRepository(CartRepositoryRef ref) =>
    CartRepositoryImpl();

