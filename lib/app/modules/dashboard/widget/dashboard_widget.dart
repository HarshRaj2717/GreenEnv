import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tree_coin/app/core/theme/app_theme.dart';
import 'package:tree_coin/app/helper/assets.dart';
import 'package:tree_coin/app/helper/base_color.dart';
import 'package:tree_coin/app/helper/text_style.dart';
import 'package:tree_coin/app/modules/cart/repository/cart_repository_impl.dart';
import 'package:tree_coin/app/modules/cart/view/cart_view.dart';
import 'package:tree_coin/app/modules/dashboard/model/get_trees_response/datum.dart';
import 'package:tree_coin/app/modules/dashboard/providers/dashboard_providers.dart';

class TreeDecriptionView extends ConsumerWidget {
  TreeDecriptionView({Key? key, required this.treeData}) : super(key: key);
  final TreeData treeData;
  static const routeName = '/treeDescription';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = ref.read(appThemeProvider);
    final load = ref.watch(loadCartProvider);
    return SafeArea(
      child: Scaffold(
        backgroundColor: BaseColor.pageBackground,
        appBar: AppBar(
          toolbarHeight: MediaQuery.of(context).size.height * 0.1,
          backgroundColor: appTheme.lightTheme.primaryColor,
          title: Text(
            treeData.name ?? "N/A",
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
        body: Padding(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.01),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05,
                ),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.35,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.blueGrey, blurRadius: 6)
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (int i = 0; i < 8; i++)
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.025,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal:
                                    MediaQuery.of(context).size.width * 0.05,
                                vertical:
                                    MediaQuery.of(context).size.height * 0.01),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Center(
                                  child: Image.asset(
                                    BaseAssets.logo,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.025,
                          ),
                        ],
                      ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05,
                ),
                child: Column(
                  children: [
                    Text(
                      treeData.description ?? "N/A",
                      style: BaseTextStyle.pageDescriptionDark,
                    ),
                  ],
                ),
              ),
              Spacer(),
              load
                  ? PhysicalModel(
                      color: Colors.blueGrey,
                      shape: BoxShape.circle,
                      elevation: 3,
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircularProgressIndicator(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    )
                  : Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.05,
                      ),
                      child: InkWell(
                        onTap: () {
                          ref.read(loadCartProvider.notifier).state = true;
                          ref
                              .read(cartRepositoryProvider)
                              .addToCart(treeData.name ?? "N/A")
                              .then((value) {
                            log(value.toString());
                            if (value) {
                              context.push(CartView.routeName);
                            } else {
                              ref.read(loadCartProvider.notifier).state = false;
                            }
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width * 0.05,
                          ),
                          height: MediaQuery.of(context).size.height * 0.08,
                          width: MediaQuery.of(context).size.width * 1,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(color: Colors.blueGrey, blurRadius: 5)
                              ]),
                          child: Row(
                            children: [
                              Text(
                                "Price : ₹${treeData.price}",
                                style: BaseTextStyle.blacks16w500,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              VerticalDivider(
                                endIndent: 10,
                                indent: 10,
                                color: Colors.black,
                              ),
                              Spacer(),
                              Text(
                                "Add to cart",
                                style: BaseTextStyle.blacks16w500,
                              ),
                              Spacer(),
                              Icon(Icons.shopping_bag)
                            ],
                          ),
                        ),
                      ),
                    )
            ],
          ),
        ),
      ),
    );
  }
}
