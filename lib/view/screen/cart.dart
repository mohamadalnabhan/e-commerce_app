import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/controller/cart/cart_controller.dart';
import 'package:flutter_application_1/core/class/handling_data_view.dart';
import 'package:flutter_application_1/core/constant/App_image_asset.dart';
import 'package:flutter_application_1/core/constant/app_color.dart';
import 'package:flutter_application_1/view/widget/cart/cart_button_order.dart';
import 'package:flutter_application_1/view/widget/cart/custom_bottom_navigationbar_cart.dart';
import 'package:flutter_application_1/view/widget/cart/custom_cart_app_bar.dart';
import 'package:flutter_application_1/view/widget/cart/custom_cart_items.dart';
import 'package:flutter_application_1/view/widget/language/custombuttonlang.dart';
import 'package:flutter_application_1/view/widget/onboard/custombuttomonboard.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    CartController cartController = Get.put(CartController());
    return Scaffold(
      bottomNavigationBar: GetBuilder<CartController>(
        builder:
            (controller) => CustomBottomNavigationbarCart(
              price: "${cartController.priceOrders}",
              shipping: "shipping",
              totalPrice: 344.0,
            ),
      ),
      body: GetBuilder<CartController>(
        builder:
            (controller) => HandlingDataView(
              statusRequest: cartController.statusRequest,
              widget: ListView(
                children: [
                  TopAppbarCart(title: "My Cart"),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 9),
                    child: Column(
                      children: [
                        ...List.generate(
                          cartController.data.length,
                          (index) => CustomCartItems(
                            onAdd: () async {
                              await cartController.addToCart(
                                cartController.data[index].itemsId!,
                              );
                              await cartController.refreshPage();
                            },
                            onDelete: () async {
                              await cartController.DeleteFromCart(
                                cartController.data[index].itemsId!,
                              );
                              await cartController.refreshPage();
                            },

                            price:
                                "${cartController.data[index].singleItemPrice}",
                            name: "${cartController.data[index].itemsNameEn}",
                            count: "${cartController.data[index].itemCount}",
                            imageName:
                                '${cartController.data[index].itemsImage}',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
      ),
    );
  }
}
