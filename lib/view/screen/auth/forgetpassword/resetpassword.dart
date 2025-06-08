import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/auth/forgetpassword.dart';
import 'package:flutter_application_1/controller/auth/resetpasswordcontroller.dart';
import 'package:flutter_application_1/controller/auth/signupcontroller.dart';
import 'package:flutter_application_1/core/constant/app_color.dart';
import 'package:flutter_application_1/core/constant/app_font_size.dart';
import 'package:flutter_application_1/core/functions/valid_input.dart';
import 'package:flutter_application_1/core/localization/change_local.dart';
import 'package:flutter_application_1/view/widget/auth/custombuttonauth.dart';
import 'package:flutter_application_1/view/widget/auth/customlogo.dart';
import 'package:flutter_application_1/view/widget/auth/customtextbodyauth.dart';
import 'package:flutter_application_1/view/widget/auth/customtextformauth.dart';
import 'package:flutter_application_1/view/widget/auth/customtextsignuporin.dart';
import 'package:flutter_application_1/view/widget/auth/customtexttitleauth.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class Resetpassword extends GetView<ChangeLocal> {
  const Resetpassword({super.key});

  @override
  Widget build(BuildContext context) {
    ResetpasswordcontrollerImp controller = Get.put(
      ResetpasswordcontrollerImp(),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("Reset password "),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 35),
        child: ListView(
          children: [
            const SizedBox(height: 30),
            Customtexttitleauth(textTilte: "34".tr),
            const SizedBox(height: 20),
            CustomTextFormAuth(
                 isNumber: false,
               validator: (val){
                    return validInput(val!, 5, 100, "email");
                  },
              hintText: "35".tr,
              labelText: "34".tr,
              iconData: Icons.email_outlined,
              mycontroller: controller.password,
            ),
            const SizedBox(height: 30),
            CustomTextFormAuth(
                 isNumber: false,
               validator: (val){
                    return validInput(val!, 3, 30, "password");
                  },
              hintText: "19".tr,
              labelText: "34".tr,
              iconData: Icons.email_outlined,
              mycontroller: controller.repassword,
            ),
            const SizedBox(height: 20),
            Custombuttonauth(
              text: "reset password",
              onPressed: () {
                controller.goToSuccessToResetPassword();
              },
            ),
          ],
        ),
      ),
    );
  }
}
