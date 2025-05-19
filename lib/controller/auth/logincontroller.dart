import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/core/constant/app_routes.dart';
import 'package:get/get.dart';

abstract class loginController extends GetxController {
  login();
  goToSignUp();
  goToForgetPassword();
}

class logincontrollerImp extends loginController {
  late TextEditingController email;
  late TextEditingController password;
  @override
  goToForgetPassword() {
    // TODO: implement goToForgetPassword
    Get.offNamed(AppRoutes.forgetPassword);
  }

  goToSignUp() {
    Get.toNamed(AppRoutes.signup);
  }

  @override
  login() {}
  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  void dispoe() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
}
