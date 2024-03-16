import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tree_coin/app/core/theme/app_theme.dart';
import 'package:tree_coin/app/helper/assets.dart';
import 'package:tree_coin/app/helper/base_color.dart';
import 'package:tree_coin/app/helper/text_style.dart';

class TreeDecriptionView extends ConsumerWidget {
  TreeDecriptionView({Key? key, required this.title}) : super(key: key);
  final String title;
  static const routeName = '/treeDescription';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = ref.read(appThemeProvider);
    return SafeArea(
      child: Scaffold(
        backgroundColor: BaseColor.pageBackground,
        appBar: AppBar(
          toolbarHeight: MediaQuery.of(context).size.height * 0.1,
          backgroundColor: appTheme.lightTheme.primaryColor,
          title: Text(
            title,
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
                      "iller text is text that shares some characteristics of a real written text, but is random or otherwise generated. It may be used to display a sample of fonts, generate text for testing, or to spoof an e-mail spam filte",
                      style: BaseTextStyle.pageDescriptionDark,
                    ),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05,
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.05,
                  ),
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: MediaQuery.of(context).size.width * 1,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.blueGrey, blurRadius: 5)
                      ]),
                  child: Row(
                    children: [
                      Text(
                        "Price : 250",
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
