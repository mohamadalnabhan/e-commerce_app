import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constant/app_color.dart';
import 'package:flutter_application_1/core/localization/change_local.dart';
import 'package:flutter_application_1/core/localization/transliation.dart';
import 'package:flutter_application_1/core/services/myservices.dart';
import 'package:flutter_application_1/routes.dart';
import 'package:flutter_application_1/view/screen/language.dart';
import 'package:flutter_application_1/view/screen/onboarding.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:image_pickers/image_pickers.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}
<<<<<<< HEAD

=======
>>>>>>> bf794f7b00292b5c2e1d0ef2feba4e44f9d8cdbb
Future<void> initialServices() async {
  await Get.putAsync(() => MyServices().init());
  Get.put(ChangeLocal());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ChangeLocal>(
      builder: (controller) {
        return GetMaterialApp(
<<<<<<< HEAD
          theme: ThemeData(fontFamily: "Cairo"),
          translations: Mytranslation(),
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          locale: controller.language,
          //routes: routes,
          getPages: getPages,
=======
          theme: ThemeData(
            fontFamily:"Cairo"
          ),
          translations: Mytranslation(),
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          locale: controller.language, // ✅ This now updates reactively
          home: MyLanguage(),
          routes: routes,
>>>>>>> bf794f7b00292b5c2e1d0ef2feba4e44f9d8cdbb
        );
      },
    );
  }
}
