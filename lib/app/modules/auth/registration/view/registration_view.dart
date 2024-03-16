// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tree_coin/app/core/theme/app_theme.dart';
import 'package:tree_coin/app/helper/assets.dart';
import 'package:tree_coin/app/helper/base_color.dart';
import 'package:tree_coin/app/helper/primary_button.dart';
import 'package:tree_coin/app/helper/text_style.dart';
import 'package:tree_coin/app/modules/auth/login/view/login_view.dart';
import 'package:tree_coin/app/modules/auth/registration/repository/registration_repository_impl.dart';
import 'package:tree_coin/app/modules/auth/verify_otp/view/verify_otp_view.dart';

class RegistrationView extends ConsumerWidget {
  /// TODO add your comment here
  RegistrationView({Key? key}) : super(key: key);

  static const routeName = '/registration';
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController zipcode = TextEditingController();
  TextEditingController state = TextEditingController();
  TextEditingController city = TextEditingController();

  final registerKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = ref.read(appThemeProvider);
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
        body: SingleChildScrollView(
          child: Form(
            key: registerKey,
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
                            Expanded(flex: 1, child: Icon(Icons.person)),
                            Expanded(
                              flex: 9,
                              child: TextFormField(
                                controller: firstName,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter your first name';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Please enter your first name',
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
                            Expanded(flex: 1, child: Icon(Icons.person)),
                            Expanded(
                              flex: 9,
                              child: TextFormField(
                                controller: lastName,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter your last name';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Please enter your last name',
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
                            Expanded(flex: 1, child: Icon(Icons.home)),
                            Expanded(
                              flex: 9,
                              child: TextFormField(
                                controller: address,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter your address';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Please enter your address',
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
                            Expanded(flex: 1, child: Icon(Icons.home)),
                            Expanded(
                              flex: 9,
                              child: TextFormField(
                                controller: city,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter your city';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Please enter your city',
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
                            Expanded(flex: 1, child: Icon(Icons.home)),
                            Expanded(
                              flex: 9,
                              child: TextFormField(
                                controller: state,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter your state';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Please enter your state',
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
                            Expanded(flex: 1, child: Icon(Icons.home)),
                            Expanded(
                              flex: 9,
                              child: TextFormField(
                                controller: zipcode,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter your zip code';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Please enter your zip code',
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
                                controller: password,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter your password';
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
                            Expanded(flex: 1, child: Icon(Icons.visibility)),
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
                                controller: confirmPassword,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter your password again!';
                                  } else if (value != password.text) {
                                    return 'Password missmatched!';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Please confirm your password',
                                  isDense: true,
                                ),
                              ),
                            ),
                            Expanded(flex: 1, child: Icon(Icons.visibility)),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.05),
                  child: buttonPrimary(
                      "Register",
                      BaseTextStyle.buttonPrimary,
                      context,
                      MediaQuery.of(context).size.width * 1,
                      appTheme.lightTheme.primaryColorDark, () {
                    if (registerKey.currentState!.validate()) {
                      ref
                          .read(registrationRepositoryProvider)
                          .registerUser(
                              email.text,
                              password.text,
                              "${firstName.text} ${lastName.text}",
                              address.text,
                              state.text,
                              zipcode.text,
                              city.text)
                          .then((value) {
                        if (value) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => VerifyOtpView(
                                    email: email.text,
                                    password: password.text,
                                    name: "${firstName.text} ${lastName.text}",
                                    address: address.text,
                                    zipCode: zipcode.text,
                                    city: city.text,
                                    state: state.text),
                              ));
                        } else {}
                      });
                    }
                  }),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.05),
                  child: InkWell(
                    onTap: () {
                      context.go(LoginView.routeName);
                    },
                    child: RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "Already an user ? ",
                          style: BaseTextStyle.blacks16w500),
                      TextSpan(
                          text: "Login Here",
                          style: BaseTextStyle.blacks16w500.copyWith())
                    ])),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
