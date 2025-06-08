

import 'package:flutter_application_1/core/constant/app_routes.dart';
import 'package:get/get.dart';

abstract class SuccessResetPasswordController extends GetxController{
goToLoginPage();

}
class SuccessResetPasswordControllerImp extends SuccessResetPasswordController {
  @override
  goToLoginPage() {
    Get.offAllNamed(AppRoutes.login);
  }



}