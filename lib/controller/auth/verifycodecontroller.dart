

import 'package:flutter_application_1/core/constant/app_routes.dart';
import 'package:get/get.dart';

abstract class Verifycodecontroller extends GetxController{
  verifyCode();
  goToResetPassword();

}

class VerifycodecontrollerImp extends Verifycodecontroller {

  late String verifyText ;

  @override
  goToResetPassword() {
    Get.offNamed(AppRoutes.resetPassowrd);
  }

  @override
  verifyCode() {
  }


void onInit(){

  super.onInit() ;
}

}