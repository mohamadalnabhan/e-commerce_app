import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/auth/checkemailcontroller.dart';
import 'package:flutter_application_1/controller/auth/forgetpassword.dart';
import 'package:flutter_application_1/controller/auth/signupcontroller.dart';
import 'package:flutter_application_1/core/constant/app_color.dart';
import 'package:flutter_application_1/core/constant/app_font_size.dart';
import 'package:flutter_application_1/core/localization/change_local.dart';
import 'package:flutter_application_1/view/widget/auth/custombuttonauth.dart';
import 'package:flutter_application_1/view/widget/auth/customlogo.dart';
import 'package:flutter_application_1/view/widget/auth/customtextbodyauth.dart';
import 'package:flutter_application_1/view/widget/auth/customtextformauth.dart';
import 'package:flutter_application_1/view/widget/auth/customtextsignuporin.dart';
import 'package:flutter_application_1/view/widget/auth/customtexttitleauth.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class Checkemail extends GetView<ChangeLocal> {
  const Checkemail({super.key});

  @override
  Widget build(BuildContext context) {
    checkemailControllerImp controller = Get.put(checkemailControllerImp());
    return Scaffold(
      appBar: AppBar(
        title: Text("checkemail"),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 35),
        child: ListView(
          children: [
            const SizedBox(height: 30),
            Customtexttitleauth(textTilte: "sucess signup"),
            const SizedBox(height: 20),
            Customtextbodyauth(textBody: "please enter your email to verify your account "),       
            const SizedBox(height: 20),
            CustomTextFormAuth(
              hintText: "23".tr,
              labelText: "20".tr,
              iconData: Icons.email_outlined,
              mycontroller: controller.email,
            ),
            const SizedBox(height: 30),
            Custombuttonauth(text: "17".tr, onPressed: () {
              controller.goToSucessSignup() ;
            }),
          ],
        ),
      ),
    );
  }
}
