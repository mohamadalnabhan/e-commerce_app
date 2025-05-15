
import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/onboarding_controller.dart';
import 'package:flutter_application_1/core/constant/app_color.dart';
import 'package:flutter_application_1/data/datasource/static/static.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class CustomsliderOnboarding extends GetView<OnboardingControllerImp> {
  const CustomsliderOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return  PageView.builder(
      controller: controller.pagecontroller,
      onPageChanged:(val){
        controller.onPageChange(val);
      } ,
                itemCount: onboardingList.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Text(
                        onboardingList[index].title!,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(height: 80),
                      Image.asset(
                        onboardingList[index].img!,
                        width: 200,
                        height: 230,
                        fit: BoxFit.fill,
                      ),
                      const SizedBox(height: 80),
                      Container(
                        width: double.infinity,
                        alignment: Alignment.center,
                        child: Text(
                          onboardingList[index].body!,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            height: 2,
                            color: AppColor.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              );
  }
}