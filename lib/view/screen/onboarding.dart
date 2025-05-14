import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constant/app_color.dart';
import 'package:flutter_application_1/data/datasource/static/static.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        
        children: [
          Expanded(
            flex: 3,
            child: SafeArea(
              child: PageView.builder(
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
              ),
            ),
          ),
          Expanded(
            flex: 1, // 1/4 
            child: Column(
            children: [
              Row(
                children: [
                  ...List.generate(onboardingList.length,(index)=> AnimatedContainer(duration: Duration(milliseconds:900 ),))
                ],
              )
            ],
          )),
        ],
      ),
    );
  }
}
