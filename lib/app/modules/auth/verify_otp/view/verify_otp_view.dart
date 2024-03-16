import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tree_coin/app/core/theme/app_theme.dart';
import 'package:tree_coin/app/helper/base_color.dart';
import 'package:tree_coin/app/helper/text_style.dart';
import 'package:pinput/pinput.dart';
import 'package:tree_coin/app/modules/auth/registration/repository/registration_repository_impl.dart';
import 'package:tree_coin/app/modules/dashboard/view/dashboard_view.dart';

class VerifyOtpView extends ConsumerWidget {
  /// TODO add your comment here
  VerifyOtpView({
    Key? key,
    required this.email,
    required this.password,
    required this.name,
    required this.address,
    required this.zipCode,
    required this.city,
    required this.state,
  }) : super(key: key);

  final String email;
  final String password;
  final String name;
  final String zipCode;
  final String city;
  final String state;
  final String address;
  static const routeName = '/verifyOtp';

  final pinController = TextEditingController();
  final focusNode = FocusNode();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = ref.watch(appThemeProvider);
    return SafeArea(
      child: Scaffold(
        backgroundColor: BaseColor.pageBackground,
        appBar: AppBar(
          toolbarHeight: MediaQuery.of(context).size.height * 0.1,
          backgroundColor: appTheme.lightTheme.primaryColor,
          title: Text(
            "Verify OTP",
            style: BaseTextStyle.appBarHeader.copyWith(color: Colors.black),
          ),
          centerTitle: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(
                  30), // Adjust this value for rounded corners as per your needs
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05),
              child: Pinput(
                controller: pinController,
                onCompleted: (value) {
                  ref
                      .read(registrationRepositoryProvider)
                      .verifyOTP(email, password, name, address, state, zipCode,
                          city, pinController.text)
                      .then((value) {
                    if (value) {
                      context.go(DashboardView.routeName);
                    } else {}
                  });
                },
                length: 6,
                defaultPinTheme: PinTheme(
                  width: 50,
                  height: 50,
                  textStyle: BaseTextStyle.pinInput,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromRGBO(234, 239, 243, 1),
                        width: 1.5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                focusedPinTheme: PinTheme(
                  width: 50,
                  height: 50,
                  textStyle: BaseTextStyle.pinInput,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1.5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                submittedPinTheme: PinTheme(
                  width: 50,
                  height: 50,
                  textStyle: BaseTextStyle.pinInput,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black.withOpacity(0.5), width: 1.5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                followingPinTheme: PinTheme(
                  width: 50,
                  height: 50,
                  textStyle: BaseTextStyle.pinInput,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black.withOpacity(0.4), width: 1.5),
                  ),
                ),
                disabledPinTheme: PinTheme(
                  width: 50,
                  height: 50,
                  textStyle: BaseTextStyle.pinInput,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black.withOpacity(0.2), width: 1.5),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.050,
            ),
            Text(
              "Please verify to activate your account",
              style: BaseTextStyle.pageTextPrimary,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
