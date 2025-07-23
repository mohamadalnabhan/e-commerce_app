// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/core/constant/app_color.dart';

class CustomButtonAppbar extends StatelessWidget {
  final void Function() onPressed;
  final IconData iconData;

final  bool? active ;
   CustomButtonAppbar({
    Key? key,
    required this.onPressed,
    required this.iconData,
 
    required this.active,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(iconData, color: active == true ? AppColor.primaryColor : AppColor.black),
          // Text(buttonTitle, style: TextStyle(color: active == true ? AppColor.primaryColor : AppColor.black)),
        ],
      ),
    );
  }
}
