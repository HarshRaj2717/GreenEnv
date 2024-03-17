// ignore_for_file: unused_result

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
import 'package:tree_coin/app/modules/cart/providers/cart_providers.dart';
import 'package:tree_coin/app/modules/cart/repository/cart_repository_impl.dart';
import 'package:tree_coin/app/modules/dashboard/providers/dashboard_providers.dart';

class CartView extends ConsumerWidget {
  /// TODO add your comment here
  const CartView({Key? key}) : super(key: key);

  static const routeName = '/cart';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = ref.watch(appThemeProvider);
    final asyncCart = ref.watch(getCartProvider);
    final asyncAddress = ref.watch(userProfileProvider);
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
          child: asyncCart.when(
              data: (data) {
                return Column(
                  children: [
                    data.data?.length == 0
                        ? Center(
                            child: Column(
                              children: [
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.30,
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal:
                                          MediaQuery.of(context).size.width *
                                              0.05,
                                      vertical:
                                          MediaQuery.of(context).size.height *
                                              0.01),
                                  width: MediaQuery.of(context).size.width * 1,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.blueGrey,
                                            blurRadius: 5)
                                      ]),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Your Cart is empty currently",
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        : Expanded(
                            flex: 9,
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  ListView.builder(
                                    shrinkWrap: true,
                                    physics: NeverScrollableScrollPhysics(),
                                    itemCount: data.data?.length ?? 0,
                                    itemBuilder: (context, i) {
                                      return Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.01),
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.05,
                                              vertical: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.03),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              1,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5)),
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.blueGrey,
                                                    blurRadius: 5)
                                              ]),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.1,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.2,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          BaseAssets.logo),
                                                      fit: BoxFit.fill),
                                                ),
                                              ),
                                              SizedBox(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.020,
                                              ),
                                              Expanded(
                                                flex: 7,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      data.data?[i].tree ??
                                                          "N/A",
                                                      style: BaseTextStyle
                                                          .blacks15w700,
                                                    ),
                                                    Text(
                                                      "Quantity",
                                                      style: BaseTextStyle
                                                          .blacks15w700,
                                                    ),
                                                    SizedBox(
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              0.010,
                                                    ),
                                                    Row(
                                                      children: [
                                                        InkWell(
                                                          onTap: () {
                                                            ref
                                                                .read(
                                                                    cartRepositoryProvider)
                                                                .removeFromCart(data
                                                                        .data?[
                                                                            i]
                                                                        .tree ??
                                                                    "N/A")
                                                                .then((value) {
                                                              if (value) {
                                                                ref.refresh(
                                                                    getCartProvider);
                                                              } else {}
                                                            });
                                                          },
                                                          child: PhysicalModel(
                                                            shape:
                                                                BoxShape.circle,
                                                            color:
                                                                Colors.blueGrey,
                                                            elevation: 6,
                                                            child: CircleAvatar(
                                                              backgroundColor:
                                                                  Colors.white,
                                                              radius: 16,
                                                              child: Icon(
                                                                  Icons.remove),
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 8,
                                                        ),
                                                        Text(
                                                            "${data.data?[i].numberOfTrees ?? 1}"),
                                                        SizedBox(
                                                          width: 8,
                                                        ),
                                                        InkWell(
                                                          onTap: () {
                                                            ref
                                                                .read(
                                                                    cartRepositoryProvider)
                                                                .addToCart(data
                                                                        .data?[
                                                                            i]
                                                                        .tree ??
                                                                    "N/A")
                                                                .then((value) {
                                                              if (value) {
                                                                ref.refresh(
                                                                    getCartProvider);
                                                              } else {}
                                                            });
                                                          },
                                                          child: PhysicalModel(
                                                            shape:
                                                                BoxShape.circle,
                                                            color:
                                                                Colors.blueGrey,
                                                            elevation: 6,
                                                            child: CircleAvatar(
                                                              backgroundColor:
                                                                  appTheme
                                                                      .lightTheme
                                                                      .primaryColor,
                                                              radius: 16,
                                                              child: Icon(
                                                                Icons.add,
                                                                color: Colors
                                                                    .white,
                                                              ),
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
                                      );
                                    },
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.010,
                                  ),
                                  Text(
                                    "Address",
                                    style: BaseTextStyle.listItemTitle,
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.010,
                                  ),
                                  asyncAddress.when(
                                      data: (data) {
                                        return Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.05,
                                              vertical: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.01),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              1,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5)),
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.blueGrey,
                                                    blurRadius: 5)
                                              ]),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Text(
                                                    "Edit",
                                                    style: BaseTextStyle
                                                        .listItemTitle,
                                                  ),
                                                  Spacer(),
                                                  Icon(Icons.edit)
                                                ],
                                              ),
                                              SizedBox(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.010,
                                              ),
                                              Text(
                                                data.data?.address ?? "N/A",
                                              )
                                            ],
                                          ),
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
                    Spacer(),
                    data.data?.length == 0
                        ? SizedBox()
                        : buttonPrimary(
                            "Buy Now",
                            BaseTextStyle.buttonPrimary
                                .copyWith(color: Colors.black),
                            context,
                            MediaQuery.of(context).size.width * 1,
                            appTheme.lightTheme.primaryColor, () {
                            final finalAmount =
                                ((1 / 83.34) * (data.cartAmount ?? 1))
                                    .toStringAsFixed(2);
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
                                          "total": '$finalAmount',
                                          "currency": "USD",
                                          "details": {
                                            "subtotal": '$finalAmount',
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
                                              "quantity": data.data?.length,
                                              "price": '$finalAmount',
                                              "currency": "USD"
                                            }
                                          ],
                                        }
                                      }
                                    ],
                                    note:
                                        "Contact us for any questions on your order.",
                                    onSuccess: (Map params) async {
                                      log("message success ${params.toString()}");
                                      ref
                                          .read(cartRepositoryProvider)
                                          .checkoutCart()
                                          .then((value) {
                                        if (value) {
                                          ref
                                              .refresh(cartRepositoryProvider)
                                              .getCart();
                                        } else {}
                                      });
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
                );
              },
              error: (error, stackTrace) => Center(
                    child: Text(error.toString()),
                  ),
              loading: () => Center(
                    child: CircularProgressIndicator(),
                  ))),
    ));
  }

  void successPayment(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0), // Adjust the value here
          ),
          title: Text(
            'Payment Successful',
            style: BaseTextStyle.listItemTitle,
          ),
          content: Text(
            'Your payment has been successful please go back to home',
            style: BaseTextStyle.listItemDescription,
          ),
          actions: [
            buttonPrimary(
                "Yes",
                BaseTextStyle.buttonPrimary.copyWith(color: Colors.black),
                context,
                MediaQuery.of(context).size.width * 0.8,
                BaseColor.primary,
                () {})
          ],
        );
      },
    );
  }
}
