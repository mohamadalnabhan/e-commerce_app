import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constant/app_color.dart';
import 'package:flutter_application_1/routes.dart';
import 'package:flutter_application_1/view/screen/onboarding.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme:  ThemeData(
        textTheme: const TextTheme(
         displayLarge : TextStyle(        // old name is headLine1 /// headline2 is meduim
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color : AppColor.black,

                        ),
        bodyLarge :TextStyle(                  // old name is bodyText1
                            height: 2,
                            color: AppColor.grey,
                            fontWeight: FontWeight.bold,
                          ),
        ),
      
      ),
      home: Onboarding(),
      routes:routes ,
    );
  }
}
