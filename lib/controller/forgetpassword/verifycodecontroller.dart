import 'package:flutter_application_1/core/class/status_request.dart';
import 'package:flutter_application_1/core/constant/app_routes.dart';
import 'package:flutter_application_1/core/functions/data_handling.dart';
import 'package:flutter_application_1/data/datasource/remote/forgetpassword/verify_code_data.dart';
import 'package:flutter_application_1/view/screen/auth/forgetpassword/verifycode.dart';
import 'package:get/get.dart';

abstract class Verifycodecontroller extends GetxController {
  verifyCode();
  goToResetPassword(String verifyCode);
}

class VerifycodecontrollerImp extends Verifycodecontroller {
  String? email;
  VerifyCodeForgetPasswordData verifyCodeForgetPasswordData =
      VerifyCodeForgetPasswordData(Get.find());
  StatusRequest? statusRequest;
  @override
  goToResetPassword(Verifycode) async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await verifyCodeForgetPasswordData.postdata(
      email!,
      Verifycode,
    );
    print("================= $response");
    statusRequest = dataHandling(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        Get.offAllNamed(AppRoutes.resetPassowrd, arguments: {"email": email});
      } else {
        Get.defaultDialog(
          title: "warrning",
          middleText: "email does not exist",
        );
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  verifyCode() {}

  void onInit() {
    email = Get.arguments['email'];
    super.onInit();
  }
}
