

import 'package:flutter_application_1/core/constant/app_routes.dart';
import 'package:get/get.dart';

abstract class SuccessSignupController extends GetxController{
goToLoginPage();

}
class SuccessSignupControllerImp extends SuccessSignupController {
  @override
  goToLoginPage() {
    Get.offAllNamed(AppRoutes.login);
  }



}