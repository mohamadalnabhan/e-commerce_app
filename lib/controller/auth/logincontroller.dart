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
  StatusRequest statusRequest = StatusRequest.none;
  LoginData loginData = LoginData(Get.find());
  MyServices myServices = Get.find();
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

  if (formdata != null && formdata.validate()) {
    statusRequest = StatusRequest.loading;
    update();
    var response = await loginData.postdata(email.text, password.text);
    print("LOGIN RESPONSE: $response");
    statusRequest = dataHandling(response);

    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success" && response['data'] != null) {
        var userData = response['data'];

        myServices.sharedPreferences.setString(
          'id',
          userData['users_id'].toString(),
        );
        myServices.sharedPreferences.setString(
          'username',
          userData['users_name'],
        );
        myServices.sharedPreferences.setString(
          'password',
          userData['users_password'],
        );
        myServices.sharedPreferences.setString(
          'phone',
          userData['users_phone'].toString(),
        );
        myServices.sharedPreferences.setString('step', '2');

        Get.offAllNamed(AppRoutes.homePage);
      } else {
        // Show verification screen if not verified
        Get.toNamed(
          AppRoutes.verifySignup,
          arguments: {"email": email.text},
        );
      }
    } else {
      Get.defaultDialog(
        title: "Warning",
        middleText: "Email or password is incorrect",
      );
    }
    update();
  }
}

  @override
  void onInit() async {
    FirebaseMessaging.instance.getToken().then((value) {
      print(value);
      String? token = value;
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
