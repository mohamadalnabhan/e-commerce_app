import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/onboarding_controller.dart';
import 'package:flutter_application_1/core/constant/app_color.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart';

class CustomButtonOnboard extends GetView<OnboardingControllerImp> {
  const CustomButtonOnboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialButton(
        color: AppColor.primaryColor,
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 0),
        textColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        onPressed: () {
          controller.next();
        },
        child: Text('continue '),
      ),
    );
  }
}