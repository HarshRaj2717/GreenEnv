import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'dashboard_repository.dart';

part 'dashboard_repository_impl.g.dart';

class DashboardRepositoryImpl extends DashboardRepository {
  // TODO add your methods here
}

@riverpod
 DashboardRepository dashboardRepository(DashboardRepositoryRef ref) =>
    DashboardRepositoryImpl();

