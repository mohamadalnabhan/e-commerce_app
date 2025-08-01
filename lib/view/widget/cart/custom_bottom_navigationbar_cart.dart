import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/core/constant/app_color.dart';
import 'package:flutter_application_1/view/widget/cart/cart_button_order.dart';

class CustomBottomNavigationbarCart extends StatelessWidget {
 final String price ; 
  final String shipping ;
  final double totalPrice ; 
  const CustomBottomNavigationbarCart({super.key, required this.price, required this.shipping, required this.totalPrice});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text("price", style: TextStyle(fontSize: 18)),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text("${price}", style: TextStyle(fontSize: 18)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text("shipping", style: TextStyle(fontSize: 18)),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text("${shipping}", style: TextStyle(fontSize: 18)),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Divider(color: AppColor.black),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text("total price", style: TextStyle(fontSize: 18)),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text("${totalPrice}", style: TextStyle(fontSize: 18)),
                ),
              ],
            ),
            const SizedBox(height: 10),
            CartButtonOrder(textButton: "order now", onPressed: () {}),
          ],
        ),
      );
  }
}