
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constant/app_color.dart';

class Custombuttonauth extends StatelessWidget {
  final String text ;
  final void Function()? onPressed ; 
  const Custombuttonauth({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      padding: EdgeInsets.symmetric(vertical:13),
      color: AppColor.primaryColor,
      textColor: Colors.white,
      onPressed: onPressed,
    child: Text(text),
    );
  }
}