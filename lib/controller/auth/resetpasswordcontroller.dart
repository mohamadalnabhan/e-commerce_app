import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/core/constant/app_routes.dart';
import 'package:get/get.dart';

abstract class Resetpasswordcontroller extends GetxController {
  ResetPass();
  goToSuccessToResetPassword();
}

class ResetpasswordcontrollerImp extends Resetpasswordcontroller {
  
  late TextEditingController password;
 late TextEditingController repassword;
  @override
  ResetPass() {

  }
  
  @override
  goToSuccessToResetPassword() {
   Get.offNamed(AppRoutes.resetPasswordSuccess);
  }
  void onInit() {
      password = TextEditingController();


    repassword = TextEditingController();

    super.onInit();
  }

  void dispoe() {


    password.dispose();
    repassword.dispose() ;
    super.dispose();
  }
  

}
