import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_paypal/flutter_paypal.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tree_coin/app/core/theme/app_theme.dart';
import 'package:tree_coin/app/helper/assets.dart';
import 'package:tree_coin/app/helper/base_color.dart';
import 'package:tree_coin/app/helper/primary_button.dart';
import 'package:tree_coin/app/helper/text_style.dart';

class CartView extends ConsumerWidget {
  /// TODO add your comment here
  const CartView({Key? key}) : super(key: key);

  static const routeName = '/cart';

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
            "Cart",
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
              horizontal: MediaQuery.of(context).size.height * 0.03,
              vertical: MediaQuery.of(context).size.height * 0.01),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.05,
                    vertical: MediaQuery.of(context).size.height * 0.03),
                width: MediaQuery.of(context).size.width * 1,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Colors.blueGrey, blurRadius: 5)
                    ]),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.2,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(BaseAssets.logo),
                            fit: BoxFit.fill),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.020,
                    ),
                    Expanded(
                      flex: 7,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Name of tree and therir species ",
                            style: BaseTextStyle.blacks15w700,
                          ),
                          Text(
                            "Price : ₹250",
                            style: BaseTextStyle.blacks15w700,
                          ),
                          Text(
                            "Quantity",
                            style: BaseTextStyle.blacks15w700,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.010,
                          ),
                          Row(
                            children: [
                              PhysicalModel(
                                shape: BoxShape.circle,
                                color: Colors.blueGrey,
                                elevation: 6,
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 16,
                                  child: Icon(Icons.remove),
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text("1"),
                              SizedBox(
                                width: 8,
                              ),
                              PhysicalModel(
                                shape: BoxShape.circle,
                                color: Colors.blueGrey,
                                elevation: 6,
                                child: CircleAvatar(
                                  backgroundColor:
                                      appTheme.lightTheme.primaryColor,
                                  radius: 16,
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.020,
              ),
              Text(
                "Address",
                style: BaseTextStyle.listItemTitle,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.010,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.05,
                    vertical: MediaQuery.of(context).size.height * 0.01),
                width: MediaQuery.of(context).size.width * 1,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Colors.blueGrey, blurRadius: 5)
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Edit",
                          style: BaseTextStyle.listItemTitle,
                        ),
                        Spacer(),
                        Icon(Icons.edit)
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.010,
                    ),
                    Text(
                      "H-91, Old Seemapuri, Delhi - 110095",
                    )
                  ],
                ),
              ),
              Spacer(),
              buttonPrimary(
                  "Buy Now",
                  BaseTextStyle.buttonPrimary.copyWith(color: Colors.black),
                  context,
                  MediaQuery.of(context).size.width * 1,
                  appTheme.lightTheme.primaryColor, () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => UsePaypal(
                        sandboxMode: true,
                        clientId:
                            'ASmUHmAzxUWKdkI8h7lpFlk_S8XGamnbkq08mORc34eWHbRg1oO2C2XW443dMke6KmKT9Uum5ocGnchv',
                        secretKey:
                            'EEUOlyCcmN0xz-xWYHxYZPdnxXInt2ttPaFe6aGNY47IXzL4imdTtxJPY8JtZi_wAzqidNgdfKICh3Km',
                        returnURL: "https://samplesite.com/return",
                        cancelURL: "https://samplesite.com/cancel",
                        transactions: [
                          {
                            "amount": {
                              "total": '100',
                              "currency": "USD",
                              "details": {
                                "subtotal": '100',
                                "shipping": '0',
                                "shipping_discount": 0
                              }
                            },
                            "description":
                                "The payment transaction description.",
                            // "payment_options": {
                            //   "allowed_payment_method":
                            //       "INSTANT_FUNDING_SOURCE"
                            // },
                            "item_list": {
                              "items": [
                                {
                                  "name": "A demo product",
                                  "quantity": 1,
                                  "price": '100',
                                  "currency": "USD"
                                }
                              ],
                            }
                          }
                        ],
                        note: "Contact us for any questions on your order.",
                        onSuccess: (Map params) async {
                          log("message success ${params.toString()}");

                          // BottomSheetPrimary.error(context, errorMessages);
                        },
                        onError: (error) {
                          log("message success ${error.toString()}");
                        },
                        onCancel: (params) {
                          log('cancelled: $params');
                        }),
                  ),
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}
