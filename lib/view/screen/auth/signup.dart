import 'package:flutter/material.dart';
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

class Signup extends GetView<ChangeLocal> {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => signupcontrollerImp());
    return Scaffold(
      appBar: AppBar(
        title: Text("17".tr),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: GetBuilder<signupcontrollerImp>(
        builder:
            (controller) => Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 35),
              child: Form(
                key: controller.formstate,
                child: ListView(
                  children: [
                    const SizedBox(height: 30),
                    Customtexttitleauth(textTilte: "10".tr),
                    const SizedBox(height: 20),
                    Customtextbodyauth(textBody: "11".tr),

                    const SizedBox(height: 20),
                    CustomTextFormAuth(
                      isNumber: false,
                      validator: (val) {
                        return validInput(val!, 3, 30, "username");
                      },
                      hintText: "23".tr,
                      labelText: "20".tr,
                      iconData: Icons.person_outlined,
                      mycontroller: controller.email,
                    ),
                    const SizedBox(height: 30),
                    CustomTextFormAuth(
                         isNumber: false,
                      validator: (val) {
                        return validInput(val!, 5, 100, "email");
                      },
                      hintText: "12".tr,
                      labelText: "18".tr,

                      iconData: Icons.email_outlined,
                      mycontroller: controller.username,
                    ),

                    const SizedBox(height: 20),
                    CustomTextFormAuth(
                         isNumber: true,
                      validator: (val) {
                        return validInput(val!, 3, 30, "phone");
                      },
                      hintText: "22".tr,
                      labelText: "21".tr,
                      iconData: Icons.phone_outlined,
                      mycontroller: controller.phoneNbr,
                    ),
                    const SizedBox(height: 20),
                    CustomTextFormAuth(
                         isNumber: false,
                      validator: (val) {
                        return validInput(val!, 3, 30, "password");
                      },
                      hintText: "13".tr,
                      labelText: "19".tr,
                      iconData: Icons.lock_outline,
                      mycontroller: controller.password,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "14".tr,
                      style: TextStyle(color: AppColor.grey),
                      textAlign: TextAlign.end,
                    ),
                    const SizedBox(height: 30),
                    Custombuttonauth(
                      text: "17".tr,
                      onPressed: () {
                        controller.signupValidate();
                      },
                    ),
                    const SizedBox(height: 30),
                    Customtextsignuporin(
                      textOne: "16".tr,
                      textTwo: "26".tr,
                      onTap: () {
                        print("printed");
                        controller.goToSignin();
                      },
                    ),
                  ],
                ),
              ),
            ),
      ),
    );
  }
}
