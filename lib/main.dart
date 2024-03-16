import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tree_coin/app/app.dart';
import 'package:tree_coin/app/core/local_storage/app_storage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // for initializing local storage
  final appStorage = AppStorage();

  runApp(
    ProviderScope(
      overrides: [
        appStorageProvider.overrideWithValue(appStorage),
      ],
      child: const App(),
    ),
  );
}
