import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tree_coin/app/modules/auth/login/view/login_view.dart';
import 'package:tree_coin/app/modules/auth/registration/view/registration_view.dart';
import 'package:tree_coin/app/modules/cart/view/cart_view.dart';
import 'package:tree_coin/app/modules/dashboard/view/dashboard_view.dart';
import 'package:tree_coin/app/modules/dashboard/widget/dashboard_widget.dart';
import 'package:tree_coin/app/modules/splash/splash_screen.dart';

///
/// for getting routers that are present in the app
///
///
final globalNavigatorKey = GlobalKey<NavigatorState>();
final routerProvider = Provider<GoRouter>(
  (ref) {
    return GoRouter(
      initialLocation: SplashView.routeName,
      navigatorKey: globalNavigatorKey,
      routes: [
        /// for showing onboarding

        GoRoute(
          path: SplashView.routeName,
          builder: (context, state) => const SplashView(),
        ),

        GoRoute(
          path: DashboardView.routeName,
          builder: (context, state) => const DashboardView(),
        ),

        GoRoute(
          path: CartView.routeName,
          builder: (context, state) => const CartView(),
        ),

        GoRoute(
          path: TreeDecriptionView.routeName,
          name: TreeDecriptionView.routeName,
          pageBuilder: (context, state) {
            final String title = state.extra as String;

            return appTransiton(
                context, state, TreeDecriptionView(title: title));
          },
        ),

        GoRoute(
          path: RegistrationView.routeName,
          builder: (context, state) => RegistrationView(),
        ),

        GoRoute(
          path: LoginView.routeName,
          builder: (context, state) => LoginView(),
        ),
      ],
    );
  },
);

CustomTransitionPage appTransiton(
    BuildContext context, GoRouterState state, Widget child) {
  return CustomTransitionPage<void>(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        FadeTransition(opacity: animation, child: child),
  );
}
