import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/core/constant/app_routes.dart';
import 'package:get/get.dart';

abstract class Signupcontroller extends GetxController {
  signup();
  goToSignin();
}

class signupcontrollerImp extends Signupcontroller {
  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController phoneNbr;
  late TextEditingController password;

  goToSignin() {
    Get.toNamed(AppRoutes.login);
  }

  @override
  signup() {}
  @override
  void onInit() {
    username = TextEditingController();
    email = TextEditingController();
    phoneNbr = TextEditingController();
    password = TextEditingController();

    super.onInit();
  }

  void dispoe() {
    username.dispose();
    email.dispose();
    phoneNbr.dispose();
    password.dispose();
    super.dispose();
  }
}
