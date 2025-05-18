

import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constant/app_color.dart';
import 'package:get/get.dart';

class Customtextsignuporin extends StatelessWidget {
  final String textOne ; 
  final String textTwo ;
  final void Function()? onTap ; 
  const Customtextsignuporin({super.key, required this.textOne, required this.textTwo, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(textOne),
              InkWell(
                onTap:onTap,
                child: Text(textTwo,style: TextStyle(color: AppColor.primaryColor ,fontWeight: FontWeight.bold),),
              )
            ],
           );
  }
}