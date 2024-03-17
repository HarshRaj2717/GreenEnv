import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tree_coin/app/core/theme/app_theme.dart';
import 'package:tree_coin/app/helper/assets.dart';
import 'package:tree_coin/app/helper/base_color.dart';
import 'package:tree_coin/app/helper/text_style.dart';
import 'package:tree_coin/app/modules/cart/view/cart_view.dart';
import 'package:tree_coin/app/modules/dashboard/providers/dashboard_providers.dart';
import 'package:tree_coin/app/modules/dashboard/widget/dashboard_widget.dart';
import 'package:tree_coin/app/modules/settings/view/settings_view.dart';

class DashboardView extends ConsumerWidget {
  /// TODO add your comment here
  const DashboardView({Key? key}) : super(key: key);

  static const routeName = '/dashboard';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncUserProvider = ref.watch(userProfileProvider);
    final showBalance = ref.watch(showBalanceProvider);
    final asyncTress = ref.watch(getTreesProvider);
    final appTheme = ref.read(appThemeProvider);
    return SafeArea(
        child: asyncUserProvider.when(
            data: (data) {
              return Scaffold(
                backgroundColor: BaseColor.pageBackground,
                appBar: AppBar(
                  toolbarHeight: MediaQuery.of(context).size.height * 0.1,
                  backgroundColor: appTheme.lightTheme.primaryColor,
                  title: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          context.push(SettingsView.routeName);
                        },
                        child: Image.asset(
                          BaseAssets.man,
                          height: 40,
                          width: 40,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data.data?.name ?? "N/A",
                            style: BaseTextStyle.appBarHeader
                                .copyWith(color: Colors.black),
                          ),
                          Row(
                            children: [
                              showBalance
                                  ? Row(
                                      children: [
                                        Image.asset(
                                          BaseAssets.logo,
                                          height: 25,
                                          width: 25,
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.02,
                                        ),
                                        Text(
                                          "${double.parse('500.00').toStringAsFixed(2)}",
                                          style: BaseTextStyle.appBarHeader
                                              .copyWith(color: Colors.black),
                                        ),
                                      ],
                                    )
                                  : Row(
                                      children: [
                                        for (int i = 0;
                                            i <
                                                double.parse('500')
                                                    .toStringAsFixed(2)
                                                    .length;
                                            i++)
                                          Text(
                                            "*",
                                            style: BaseTextStyle.appBarHeader
                                                .copyWith(color: Colors.black),
                                          )
                                      ],
                                    ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.02,
                              ),
                              showBalance
                                  ? InkWell(
                                      onTap: () {
                                        ref
                                                .read(showBalanceProvider.notifier)
                                                .state =
                                            !ref.read(showBalanceProvider);
                                        log(ref
                                            .read(showBalanceProvider)
                                            .toString());
                                      },
                                      child:
                                          Icon(Icons.visibility_off_outlined))
                                  : InkWell(
                                      onTap: () {
                                        ref
                                                .read(showBalanceProvider.notifier)
                                                .state =
                                            !ref.read(showBalanceProvider);
                                        log(ref
                                            .read(showBalanceProvider)
                                            .toString());
                                      },
                                      child: Icon(Icons.visibility_outlined))
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  actions: [
                    InkWell(
                      onTap: () {
                        context.push(CartView.routeName);
                      },
                      child: Icon(
                        Icons.shopping_bag_outlined,
                        size: 35,
                      ),
                    )
                  ],
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
                        vertical: MediaQuery.of(context).size.height * 0.01),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        asyncTress.when(
                            data: (data) {
                              int len = data.data?.length ?? 0;
                              return Wrap(
                                alignment: WrapAlignment.start,
                                spacing: 55,
                                runSpacing: 30,
                                children: [
                                  for (int i = 0; i < len; i++)
                                    InkWell(
                                      onTap: () {
                                        context.push(
                                            TreeDecriptionView.routeName,
                                            extra: data.data?[i]);
                                      },
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.38,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.05,
                                            vertical: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.01),
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                                blurRadius: 5,
                                                color: Colors.blueGrey)
                                          ],
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(12),
                                          ),
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Center(
                                              child: Image.asset(
                                                BaseAssets.logo,
                                              ),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                RichText(
                                                    text: TextSpan(children: [
                                                  TextSpan(
                                                      text: "Species : ",
                                                      style: BaseTextStyle
                                                          .blacks15w500),
                                                  TextSpan(
                                                      text:
                                                          data.data?[i].name ??
                                                              "N/A",
                                                      style: BaseTextStyle
                                                          .blacks15w500
                                                          .copyWith(
                                                              color:
                                                                  Colors.green))
                                                ])),
                                              ],
                                            ),
                                            RichText(
                                                text: TextSpan(children: [
                                              TextSpan(
                                                  text: "Price : ",
                                                  style: BaseTextStyle
                                                      .blacks15w500),
                                              TextSpan(
                                                  text:
                                                      "₹${data.data?[i].price}",
                                                  style: BaseTextStyle
                                                      .blacks15w500
                                                      .copyWith(
                                                          color: Colors.green))
                                            ])),
                                          ],
                                        ),
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
                                ))
                      ],
                    ),
                  ),
                ),
              );
            },
            error: (error, stackTrace) => Scaffold(
                  body: Center(
                    child: Text(error.toString()),
                  ),
                ),
            loading: () => Scaffold(
                  body: Center(
                    child: CircularProgressIndicator(),
                  ),
                )));
  }
}
