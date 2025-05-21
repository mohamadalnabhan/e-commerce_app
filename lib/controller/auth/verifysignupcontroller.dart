

import 'package:flutter_application_1/core/constant/app_routes.dart';
import 'package:get/get.dart';

abstract class VerifySignupcontroller extends GetxController{
  verifyCode();
  goSuccessSignup();

}

class VerifySignupcontrollerImp extends VerifySignupcontroller {

  late String verifyText ;

  @override
  goSuccessSignup() {
    Get.offNamed(AppRoutes.successSignup);
  }

  @override
  verifyCode() {
  }


void onInit(){

  super.onInit() ;
}

}