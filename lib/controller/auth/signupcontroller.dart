import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/core/class/status_request.dart';
import 'package:flutter_application_1/core/constant/app_routes.dart';
import 'package:flutter_application_1/core/functions/data_handling.dart';
import 'package:flutter_application_1/data/datasource/remote/auth/signup_data.dart';
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
  StatusRequest? statusRequest;
  List data = [];

  SignupData signupData = SignupData(Get.find());
  
  goToSignin() {
    Get.toNamed(AppRoutes.login);
  }

  @override
  signupValidate() async {
    var formdata = formstate.currentState;

    if (formdata != null && formdata!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await signupData.postData(
        username.text,
        phoneNbr.text,
        email.text,
        password.text,
      );
      print("================= $response");
      statusRequest = dataHandling(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          if (response['data'] != null) {
            data.addAll(response['data']);
          }
          Get.offAllNamed(AppRoutes.verifySignup, arguments: {
            "email" : email.text
          });
        } else {
          Get.defaultDialog(
            title: "warrning",
            middleText: "phone number or email already exit ",
          );
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {}
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
