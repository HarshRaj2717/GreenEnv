import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tree_coin/app/core/local_storage/app_storage.dart';
import 'package:tree_coin/app/helper/assets.dart';
import 'package:tree_coin/app/modules/auth/login/view/login_view.dart';
import 'package:tree_coin/app/modules/dashboard/view/dashboard_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  static String routeName = '/';

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with TickerProviderStateMixin {
  final int splashDuration = 3;
  late final AnimationController controller;
  late final opacityTween = Tween(begin: 0, end: 1);
  @override
  void initState() {
    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    controller.forward();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {});
    Timer(Duration(seconds: splashDuration), checkLogin);
    super.initState();
  }

  void checkLogin() async {
    final token = await AppStorage().getToken();
    if (token?.isNotEmpty ?? false) {
      log(token ?? "");
      context.go(DashboardView.routeName);
    } else {
      context.go(LoginView.routeName);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: AnimatedBuilder(
          animation: controller,
          builder: (context, child) => AnimatedOpacity(
            opacity: controller.value,
            duration: Duration(milliseconds: 800),
            child: Image.asset(
              BaseAssets.logo,
              height: MediaQuery.of(context).size.height * 1,
              width: MediaQuery.of(context).size.width * 1,
            ),
          ),
        ),
      ),
    );
  }
}
