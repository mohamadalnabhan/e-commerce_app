import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/core/constant/app_routes.dart';
import 'package:flutter_application_1/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:get/get.dart';

abstract class checkemailController extends GetxController {
  checkEmail();
  goToVerifySignup();
}

class checkemailControllerImp extends checkemailController {
  late TextEditingController email;

  @override
  checkEmail() {}

  @override
  goToVerifySignup() {
    Get.offNamed(AppRoutes.verifySignup);
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
