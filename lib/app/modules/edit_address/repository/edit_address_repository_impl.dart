import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'edit_address_repository.dart';

part 'edit_address_repository_impl.g.dart';

class EditAddressRepositoryImpl extends EditAddressRepository {
  // TODO add your methods here
}

@riverpod
 EditAddressRepository editAddressRepository(EditAddressRepositoryRef ref) =>
    EditAddressRepositoryImpl();

