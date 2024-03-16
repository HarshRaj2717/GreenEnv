import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tree_coin/app/core/local_storage/app_storage.dart';
import 'package:tree_coin/app/core/theme/app_theme.dart';
import 'package:tree_coin/app/helper/assets.dart';
import 'package:tree_coin/app/helper/base_color.dart';
import 'package:tree_coin/app/helper/primary_button.dart';
import 'package:tree_coin/app/helper/text_style.dart';
import 'package:tree_coin/app/modules/auth/login/view/login_view.dart';
import 'package:tree_coin/app/modules/dashboard/providers/dashboard_providers.dart';

class SettingsView extends ConsumerWidget {
  /// TODO add your comment here
  const SettingsView({Key? key}) : super(key: key);

  static const routeName = '/settings';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = ref.watch(appThemeProvider);
    final asyncUserProvider = ref.watch(userProfileProvider);
    return SafeArea(
      child: Scaffold(
        backgroundColor: BaseColor.pageBackground,
        appBar: AppBar(
          toolbarHeight: MediaQuery.of(context).size.height * 0.1,
          backgroundColor: appTheme.lightTheme.primaryColor,
          title: Text(
            "My Account",
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
        body: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05,
                  vertical: MediaQuery.of(context).size.height * 0.02),
              child: asyncUserProvider.when(
                  data: (data) {
                    return Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * 0.05,
                              vertical:
                                  MediaQuery.of(context).size.height * 0.02),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6)),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(color: Colors.blueGrey, blurRadius: 6)
                              ]),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Image.asset(
                                  BaseAssets.man,
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.05,
                              ),
                              Expanded(
                                flex: 7,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      data.data?.name ?? "N/A",
                                      style: BaseTextStyle.listItemTitle,
                                    ),
                                    Text(
                                      data.data?.address ?? "N/A",
                                    ),
                                    Text(
                                      "City : ${data.data?.city ?? "N/A"}",
                                    ),
                                    Text(
                                      "State : ${data.data?.state ?? "N/A"}",
                                    ),
                                    Text(
                                      "Zip Code : ${data.data?.zipCode ?? "N/A"}",
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * 0.05,
                              vertical:
                                  MediaQuery.of(context).size.height * 0.02),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6)),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(color: Colors.blueGrey, blurRadius: 6)
                              ]),
                          child: Row(
                            children: [
                              Text(
                                "Edit Address",
                                style: BaseTextStyle.listItemTitle,
                              ),
                              Spacer(),
                              Icon(Icons.arrow_forward_ios)
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * 0.05,
                              vertical:
                                  MediaQuery.of(context).size.height * 0.02),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6)),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(color: Colors.blueGrey, blurRadius: 6)
                              ]),
                          child: Row(
                            children: [
                              Text(
                                "My Cart",
                                style: BaseTextStyle.listItemTitle,
                              ),
                              Spacer(),
                              Icon(Icons.arrow_forward_ios)
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * 0.05,
                              vertical:
                                  MediaQuery.of(context).size.height * 0.02),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6)),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(color: Colors.blueGrey, blurRadius: 6)
                              ]),
                          child: Row(
                            children: [
                              Text(
                                "Transaction History",
                                style: BaseTextStyle.listItemTitle,
                              ),
                              Spacer(),
                              Icon(Icons.arrow_forward_ios)
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * 0.05,
                              vertical:
                                  MediaQuery.of(context).size.height * 0.02),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6)),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(color: Colors.blueGrey, blurRadius: 6)
                              ]),
                          child: Row(
                            children: [
                              Text(
                                "Terms & Conditions",
                                style: BaseTextStyle.listItemTitle,
                              ),
                              Spacer(),
                              Icon(Icons.arrow_forward_ios)
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * 0.05,
                              vertical:
                                  MediaQuery.of(context).size.height * 0.02),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6)),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(color: Colors.blueGrey, blurRadius: 6)
                              ]),
                          child: Row(
                            children: [
                              Text(
                                "Privacy Policy",
                                style: BaseTextStyle.listItemTitle,
                              ),
                              Spacer(),
                              Icon(Icons.arrow_forward_ios)
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        InkWell(
                          onTap: () {
                            logoutDialoge(context);
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal:
                                    MediaQuery.of(context).size.width * 0.05,
                                vertical:
                                    MediaQuery.of(context).size.height * 0.02),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.blueGrey, blurRadius: 6)
                                ]),
                            child: Row(
                              children: [
                                Text(
                                  "Logout",
                                  style: BaseTextStyle.listItemTitle,
                                ),
                                Spacer(),
                                Icon(Icons.logout)
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * 0.05,
                              vertical:
                                  MediaQuery.of(context).size.height * 0.02),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6)),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(color: Colors.blueGrey, blurRadius: 6)
                              ]),
                          child: Row(
                            children: [
                              Text(
                                "Delete Account",
                                style: BaseTextStyle.listItemTitle,
                              ),
                              Spacer(),
                              Icon(Icons.delete_outline)
                            ],
                          ),
                        )
                      ],
                    );
                  },
                  error: (error, stackTrace) => Center(
                        child: Text(error.toString()),
                      ),
                  loading: () => Center(
                        child: CircularProgressIndicator(),
                      ))),
        ),
      ),
    );
  }

  void logoutDialoge(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0), // Adjust the value here
          ),
          title: Text(
            'Logout',
            style: BaseTextStyle.listItemTitle,
          ),
          content: Text(
            'Are you sure you want to logout',
            style: BaseTextStyle.listItemDescription,
          ),
          actions: [
            Row(
              children: [
                buttonPrimary(
                    "No",
                    BaseTextStyle.buttonPrimary.copyWith(color: Colors.black),
                    context,
                    MediaQuery.of(context).size.width * 0.2,
                    BaseColor.primary, () {
                  context.pop();
                }),
                Spacer(),
                buttonPrimary(
                    "Yes",
                    BaseTextStyle.buttonPrimary.copyWith(color: Colors.black),
                    context,
                    MediaQuery.of(context).size.width * 0.2,
                    BaseColor.primary, () {
                  AppStorage().clearAllData().then((value) {});

                  context.replace(LoginView.routeName);
                }),
              ],
            )
          ],
        );
      },
    );
  }
}
