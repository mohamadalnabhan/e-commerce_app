

import 'package:flutter_application_1/core/class/status_request.dart';
import 'package:flutter_application_1/core/constant/app_routes.dart';
import 'package:flutter_application_1/core/functions/data_handling.dart';
import 'package:flutter_application_1/data/datasource/remote/forgetpassword/verify_code_data.dart';
import 'package:get/get.dart';

abstract class Verifycodecontroller extends GetxController{
  verifyCode();
  goToResetPassword();

}

class VerifycodecontrollerImp extends Verifycodecontroller {
  String? email ;
  VerifyCodeForgetPasswordData verifyCodeForgetPasswordData = VerifyCodeForgetPasswordData(Get.find());
 StatusRequest? statusRequest ; 
  @override
  goToResetPassword() {
    Get.offNamed(AppRoutes.resetPassowrd);
  }

  @override
  verifyCode()async {
    
    


   
      statusRequest = StatusRequest.loading;
      update();
      var response = await verifyCodeForgetPasswordData.postdata(email!);
      print("================= $response");
      statusRequest = dataHandling(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          Get.offAllNamed(AppRoutes.resetPassowrd , arguments: {
            "email" : email.text
          });
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
  


void onInit(){
  email = Get.arguments['email'];
  super.onInit() ;
}

}