import 'package:flutter/material.dart';
import 'package:flutter_application_1/binding/initialbinding.dart';
import 'package:flutter_application_1/controller/favorite_controller.dart';
import 'package:flutter_application_1/controller/home_page_controller.dart';
import 'package:flutter_application_1/core/class/crud.dart';
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
  Get.put(Crud()); // ⬅️ This must be before anything that uses it
  // In main.dart or when first initializing
Get.put(FavoriteControllerImp(), permanent: true);

  Get.put(HomePageControllerImp(), permanent: true);
  runApp(const MyApp());
}


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
          theme: ThemeData(
            fontFamily: "Cairo", // Single theme definition
            // Add other theme properties here if needed
          ),
          translations: Mytranslation(),
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          locale: controller.language,
          initialBinding:Initialbind() ,
          getPages: getPages,

          // routes: routes,
        );
      },
    );
  }
}