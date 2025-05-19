import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/core/constant/app_routes.dart';
import 'package:flutter_application_1/view/screen/auth/forgetpassword.dart';
import 'package:get/get.dart';

abstract class ForgetpasswordController extends GetxController {
  checkEmail();
  goToVerifyCode();
}

class ForgetpasswordControllerImp extends ForgetpasswordController {
  late TextEditingController email;

  @override
  checkEmail() {}

  @override
  goToVerifyCode() {
    Get.offNamed(AppRoutes.verifyCode);
  }

  @override
  void onInit() {
    email = TextEditingController();

    super.onInit();
  }

  void dispoe() {
    email.dispose();

    super.dispose();
  }
}
