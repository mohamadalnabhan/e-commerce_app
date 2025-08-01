import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constant/app_color.dart';

class CartButtonOrder extends StatelessWidget {
  final String textButton;
  final void Function()? onPressed;
  const CartButtonOrder({super.key, required this.textButton, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40),
      width: double.infinity,
      child: MaterialButton(
        onPressed: onPressed,
        textColor: Colors.white,
        color: AppColor.primaryColor,
        child: Text(
          textButton,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
