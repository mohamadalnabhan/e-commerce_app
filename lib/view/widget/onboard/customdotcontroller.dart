
import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/onboarding_controller.dart';
import 'package:flutter_application_1/core/constant/app_color.dart';
import 'package:flutter_application_1/data/datasource/static/static.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CustomDotControllerOnboarding extends StatelessWidget {
  const CustomDotControllerOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetBuilder<OnboardingControllerImp>(builder:(controller)=> Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...List.generate(
                      onboardingList.length,
                      (index) => AnimatedContainer(
                        duration: Duration(milliseconds: 900),
                        margin: EdgeInsets.only(right: 6),
                        width: controller.currentPage == index ?20 :6,
                        height: 6,
                        decoration: BoxDecoration(color: AppColor.primaryColor),
                      ),
                    ),
                  ],
                ));
  }
}