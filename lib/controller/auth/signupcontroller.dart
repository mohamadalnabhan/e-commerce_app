import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/core/constant/app_routes.dart';
import 'package:get/get.dart';

abstract class Signupcontroller extends GetxController {

  goToSignin();
  signupValidate();
}

class signupcontrollerImp extends Signupcontroller {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController phoneNbr;
  late TextEditingController password;

  goToSignin() {
    Get.toNamed(AppRoutes.login);
  }



  @override
  signupValidate() {
    var formdata = formstate.currentState;
  if (formdata != null && formdata!.validate()) {
      Get.offNamed(AppRoutes.verifyCode);
      
    } else {
      return "an error happened";
    }
  }

  @override
  void onInit() {
    username = TextEditingController();
    email = TextEditingController();
    phoneNbr = TextEditingController();
    password = TextEditingController();

    super.onInit();
  }

  void dispose() {
    username.dispose();
    email.dispose();
    phoneNbr.dispose();
    password.dispose();
    super.dispose();
  }
}
