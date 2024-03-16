import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'settings_repository.dart';

part 'settings_repository_impl.g.dart';

class SettingsRepositoryImpl extends SettingsRepository {
  // TODO add your methods here
}

@riverpod
 SettingsRepository settingsRepository(SettingsRepositoryRef ref) =>
    SettingsRepositoryImpl();

