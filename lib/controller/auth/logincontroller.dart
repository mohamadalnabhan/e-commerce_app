import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/core/class/status_request.dart';
import 'package:flutter_application_1/core/constant/app_routes.dart';
import 'package:flutter_application_1/core/functions/data_handling.dart';
import 'package:flutter_application_1/core/services/myservices.dart';
import 'package:flutter_application_1/data/datasource/remote/auth/login_data.dart';
import 'package:get/get.dart';

abstract class loginController extends GetxController {
  login();
  goToSignUp();
  goToForgetPassword();
}

class logincontrollerImp extends loginController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController email;
  late TextEditingController password;
  bool showpassword = true;
  StatusRequest statusRequest = StatusRequest.none ;
  LoginData loginData = LoginData(Get.find());
  MyServices myServices = Get.find() ;
  showPassword() {
    showpassword = showpassword == true ? false : true;
    update();
  }

  @override
  goToForgetPassword() {
    // TODO: implement goToForgetPassword
    Get.offNamed(AppRoutes.forgetPassword);
  }

  goToSignUp() {
    Get.offNamed(AppRoutes.signup);
  }

  @override
  login() async {
    var formdata = formstate.currentState;

    if (formdata != null && formdata!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await loginData.postdata(email.text, password.text);
      print("================= $response");
      statusRequest = dataHandling(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          myServices.sharedPreferences.setString('id', response['data']['users_id'].toString());
          myServices.sharedPreferences.setString('username', response['data']['users_name']);
          myServices.sharedPreferences.setString('password', response['data']['users_password']);
          myServices.sharedPreferences.setString('phone', response['data']['users_phone'].toString());
          myServices.sharedPreferences.setString('step', '2');    
          Get.offAllNamed(AppRoutes.homePage);
        } else {
          Get.defaultDialog(
            title: "warrning",
            middleText: "email or password is incorrect ",
          );
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {}
  }

  @override
  void onInit() async{
    FirebaseMessaging.instance.getToken().then((value){
print(value);
String? token = value ;

});
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  void dispoe() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
}
