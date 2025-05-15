import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/onboarding_controller.dart';
import 'package:flutter_application_1/core/constant/app_color.dart';
import 'package:flutter_application_1/data/datasource/static/static.dart';
import 'package:flutter_application_1/view/widget/onboarding/custombutton.dart';
import 'package:flutter_application_1/view/widget/onboarding/customdotcontroller.dart';
import 'package:flutter_application_1/view/widget/onboarding/customslider.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnboardingControllerImp());
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: SafeArea(
              child:CustomsliderOnboarding(),
            ),
          ),
          Expanded(
            flex: 1, // 1/4
            child: Column(
              children: [
                CustomDotControllerOnboarding(),
                //Spacer(flex: 2),
                SizedBox(height: 70),
                CustomButtonOnboard(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
