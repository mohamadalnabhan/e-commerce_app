
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
                    SizedBox(height: 40,),
                      Image.asset(
                        onboardingList[index].img!,
                        width: 200,
                        height: 230,
                        fit: BoxFit.fill,
                      ),
                       const SizedBox(height: 70),
                      Text(
                        onboardingList[index].title!,
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                     
                      const SizedBox(height: 70),
                      Container(
                        width: double.infinity,
                        alignment: Alignment.center,
                        child: Text(
                          onboardingList[index].body!,
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.bodyLarge
                        ),
                      ),
                    ],
                  );
                },
              );
  }
}