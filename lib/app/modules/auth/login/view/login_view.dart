// ignore_for_file: must_be_immutable

import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tree_coin/app/core/theme/app_theme.dart';
import 'package:tree_coin/app/helper/assets.dart';
import 'package:tree_coin/app/helper/base_color.dart';
import 'package:tree_coin/app/helper/primary_button.dart';
import 'package:tree_coin/app/helper/text_style.dart';
import 'package:tree_coin/app/modules/auth/login/providers/login_providers.dart';
import 'package:tree_coin/app/modules/auth/login/repository/login_repository_impl.dart';
import 'package:tree_coin/app/modules/auth/registration/view/registration_view.dart';
import 'package:tree_coin/app/modules/dashboard/view/dashboard_view.dart';

class LoginView extends ConsumerWidget {
  /// TODO add your comment here
  LoginView({Key? key}) : super(key: key);

  static const routeName = '/login';

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  final loginKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final show = ref.watch(showPassowrd);
    final appTheme = ref.read(appThemeProvider);
    final loading = ref.watch(loadingProvider);
    return SafeArea(
      child: Scaffold(
        backgroundColor: BaseColor.pageBackground,
        appBar: AppBar(
          toolbarHeight: MediaQuery.of(context).size.height * 0.1,
          backgroundColor: appTheme.lightTheme.primaryColor,
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Image.asset(BaseAssets.logo)],
          ),
          centerTitle: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(
                  30), // Adjust this value for rounded corners as per your needs
            ),
          ),
        ),
        body: Form(
          key: loginKey,
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.01,
                    horizontal: MediaQuery.of(context).size.width * 0.05),
                child: Container(
                  width: MediaQuery.of(context).size.width * 1,
                  padding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * 0.006,
                      horizontal: MediaQuery.of(context).size.width * 0.02),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.blueGrey, blurRadius: 6)
                      ]),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(flex: 1, child: Icon(Icons.email)),
                          Expanded(
                            flex: 9,
                            child: TextFormField(
                              controller: email,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your email address';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Please enter your email',
                                isDense: true,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.01,
                    horizontal: MediaQuery.of(context).size.width * 0.05),
                child: Container(
                  width: MediaQuery.of(context).size.width * 1,
                  padding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * 0.006,
                      horizontal: MediaQuery.of(context).size.width * 0.02),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.blueGrey, blurRadius: 6)
                      ]),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 9,
                            child: TextFormField(
                              obscureText: !show,
                              controller: password,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your email password';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Please enter your password',
                                isDense: true,
                              ),
                            ),
                          ),
                          Expanded(
                              flex: 1,
                              child: show
                                  ? InkWell(
                                      onTap: () {
                                        ref.read(showPassowrd.notifier).state =
                                            !ref.read(showPassowrd);
                                      },
                                      child: Icon(Icons.visibility_off))
                                  : InkWell(
                                      onTap: () {
                                        ref.read(showPassowrd.notifier).state =
                                            !ref.read(showPassowrd);
                                      },
                                      child: Icon(Icons.visibility))),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.05),
                  child: Text(
                    "Forgot Password?",
                    style: BaseTextStyle.blacks14w500,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              loading
                  ? CircleAvatar(
                      radius: 30,
                      backgroundColor: appTheme.lightTheme.primaryColorDark,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircularProgressIndicator(
                          color: Colors.white,
                        ),
                      ),
                    )
                  : Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.05),
                      child: buttonPrimary(
                          "Login",
                          BaseTextStyle.buttonPrimary,
                          context,
                          MediaQuery.of(context).size.width * 1,
                          appTheme.lightTheme.primaryColorDark, () {
                        if (loginKey.currentState!.validate()) {
                          ref.read(loadingProvider.notifier).state = true;
                          ref
                              .read(loginRepositoryProvider)
                              .loginUser(email.text, password.text)
                              .then((value) {
                            if (value) {
                              context.go(DashboardView.routeName);
                            } else {
                              log(value.toString());
                              ref.read(loadingProvider.notifier).state = false;
                            }
                          });
                        }
                      }),
                    ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.05),
                child: InkWell(
                  onTap: () {
                    context.go(RegistrationView.routeName);
                  },
                  child: RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: "Not an user ? ",
                        style: BaseTextStyle.blacks16w500),
                    TextSpan(
                        text: "Register Here",
                        style: BaseTextStyle.blacks16w500.copyWith())
                  ])),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
