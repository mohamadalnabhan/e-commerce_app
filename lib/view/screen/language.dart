import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constant/app_color.dart';
import 'package:flutter_application_1/core/constant/app_font_size.dart';
import 'package:flutter_application_1/core/constant/app_routes.dart';
import 'package:flutter_application_1/core/localization/change_local.dart';
import 'package:flutter_application_1/view/widget/language/custombuttonlang.dart';

import 'package:get/get.dart';

class MyLanguage extends GetView<ChangeLocal> {
  const MyLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("1".tr ,style: AppFontSize.headline1),
            SizedBox(height: 20,),
            Custombuttonlang(textButton: "ar" ,onPressed: (){
              print("hey") ;
              controller.changeLang("ar");
              Get.offNamed(AppRoutes.onboarding);
            },),
            
             Custombuttonlang(textButton: "en" ,onPressed: (){
                  Get.offNamed(AppRoutes.onboarding);
             },)
          ],
        ),
        )
    );
  }
}
