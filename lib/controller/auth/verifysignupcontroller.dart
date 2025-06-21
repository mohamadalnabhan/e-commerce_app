import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/core/class/status_request.dart';
import 'package:flutter_application_1/core/constant/app_routes.dart';
import 'package:flutter_application_1/core/functions/data_handling.dart';
import 'package:flutter_application_1/data/datasource/remote/auth/verify_code_signup.dart';
import 'package:get/get.dart';

abstract class VerifySignupcontroller extends GetxController {
  verifyCodee();
  goSuccessSignup(String verificationCode);
}

class VerifySignupcontrollerImp extends VerifySignupcontroller {
  VerifyCodeSignupData verifyCodeSignup = VerifyCodeSignupData(Get.find());
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  String? email;

  StatusRequest? statusRequest;
  List data = [];
  @override
  goSuccessSignup(verificationCode) async {
    statusRequest = StatusRequest.loading;
    update();
    var response;
    if (email != null) {
      response = await verifyCodeSignup.postData(email!, verificationCode);
    } else {
      print("❌ Email is null. Cannot verify.");
    }

    statusRequest = dataHandling(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        Get.offNamed(AppRoutes.successSignup);
      } else {
        Get.defaultDialog(
          title: "warning",
          middleText: "verification code is not correct",
        );
        statusRequest = StatusRequest.failure;
      }
    }
  }

  @override
  verifyCode() {}

@override
void onInit() {
  print("🟡 onInit called");
  print("📧 Get.arguments: ${Get.arguments}");

  email = Get.arguments['email'];
  print("✅ Received email: $email");

  super.onInit();
}


  @override
  verifyCodee() {
    // TODO: implement verifyCodee
    throw UnimplementedError();
  }
}
