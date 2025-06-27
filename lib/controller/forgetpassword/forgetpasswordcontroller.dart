import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/core/class/status_request.dart';
import 'package:flutter_application_1/core/constant/app_routes.dart';
import 'package:flutter_application_1/core/functions/data_handling.dart';
import 'package:flutter_application_1/data/datasource/remote/forgetpassword/check_email_data.dart';
import 'package:flutter_application_1/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:get/get.dart';

abstract class ForgetpasswordController extends GetxController {
  checkEmail();

}

class ForgetpasswordControllerImp extends ForgetpasswordController {
  late TextEditingController email;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  StatusRequest statusRequest = StatusRequest.none ;
  CheckEmailData checkEmailData = CheckEmailData(Get.find());


  @override
  checkEmail()async {
var formdata = formstate.currentState;

    if (formdata != null && formdata!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await checkEmailData.postdata(email.text);
      print("================= $response");
      statusRequest = dataHandling(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          Get.offAllNamed(AppRoutes.verifyCode , arguments: {
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



  }
 

  @override
  void onInit() {
    email = TextEditingController();

    super.onInit();
  }

  void dispoe() {
    email.dispose();

    super.dispose();
  }
}
