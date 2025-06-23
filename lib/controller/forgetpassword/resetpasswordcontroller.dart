import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/core/class/status_request.dart';
import 'package:flutter_application_1/core/constant/app_routes.dart';
import 'package:flutter_application_1/core/functions/data_handling.dart';
import 'package:flutter_application_1/data/datasource/remote/forgetpassword/reset_password_data.dart';
import 'package:get/get.dart';

abstract class Resetpasswordcontroller extends GetxController {
  ResetPass();
  goToSuccessToResetPassword();
}

class ResetpasswordcontrollerImp extends Resetpasswordcontroller {
    GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController password;
 late TextEditingController repassword;
  String? email ; 
StatusRequest? statusRequest ; 
ResetPasswordData resetPasswordData = ResetPasswordData(Get.find());
  @override
  ResetPass() {}

  goToSuccessToResetPassword() async {
    var formdata = formstate.currentState;
    if(password.text != repassword.text) return Get.defaultDialog(title: "error the passwords does not match");
    if (formdata != null && formdata!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await resetPasswordData.postdata(email!, password.text);
      print("================= $response");
      statusRequest = dataHandling(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          Get.offAllNamed(AppRoutes.resetPasswordSuccess);
        } else {
          Get.defaultDialog(
            title: "warrning",
            middleText: "try again ",
          );
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {}
  }

  void onInit() {
     email =Get.arguments['email'] ;
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
