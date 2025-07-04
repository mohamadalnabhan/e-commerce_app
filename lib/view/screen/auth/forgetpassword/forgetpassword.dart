import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/forgetpassword/forgetpasswordcontroller.dart';
import 'package:flutter_application_1/controller/auth/signupcontroller.dart';
import 'package:flutter_application_1/core/class/handling_data_view.dart';
import 'package:flutter_application_1/core/class/status_request.dart';
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

class Forgetpassword extends GetView<ChangeLocal> {
  const Forgetpassword({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ForgetpasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        title: Text("14".tr),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: GetBuilder<ForgetpasswordControllerImp>(
        builder:
            (controller) =>
                HandlingDataRequest(statusRequest: controller.statusRequest  , widget:  Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 35,
                      ),
                      child: ListView(
                        children: [
                          const SizedBox(height: 30),
                          Customtexttitleauth(textTilte: "27".tr),
                          const SizedBox(height: 20),
                          Customtextbodyauth(textBody: "29".tr),
                          const SizedBox(height: 20),
                          Form(
                            key: controller.formstate,
                            child: Column(
                              children: [
                                CustomTextFormAuth(
                                  isNumber: false,
                                  validator: (val) {
                                    return validInput(val!, 5, 100, "email");
                                  },
                                  hintText: "23".tr,
                                  labelText: "20".tr,
                                  iconData: Icons.email_outlined,
                                  mycontroller: controller.email,
                                ),
                                const SizedBox(height: 30),
                                Custombuttonauth(
                                  text: "17".tr,
                                  onPressed: () {
                                    print("Button pressed");
                                    controller.checkEmail();
                                  },
                                ),
                              ],
                            ),
                            
                          ),
                        ],
                      ),
                    ),
      ),
      )
    );
  }
}
