import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/forgetpassword/forgetpasswordcontroller.dart';
import 'package:flutter_application_1/controller/auth/signupcontroller.dart';
import 'package:flutter_application_1/controller/forgetpassword/verifycodecontroller.dart';
import 'package:flutter_application_1/controller/auth/verifysignupcontroller.dart';
import 'package:flutter_application_1/core/class/handling_data_view.dart';
import 'package:flutter_application_1/core/class/status_request.dart';
import 'package:flutter_application_1/core/constant/app_color.dart';
import 'package:flutter_application_1/core/constant/app_font_size.dart';
import 'package:flutter_application_1/core/localization/change_local.dart';
import 'package:flutter_application_1/view/widget/auth/custombuttonauth.dart';
import 'package:flutter_application_1/view/widget/auth/customlogo.dart';
import 'package:flutter_application_1/view/widget/auth/customtextbodyauth.dart';
import 'package:flutter_application_1/view/widget/auth/customtextformauth.dart';
import 'package:flutter_application_1/view/widget/auth/customtextsignuporin.dart';
import 'package:flutter_application_1/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class Verifysignup extends GetView<ChangeLocal> {
  const Verifysignup({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(VerifySignupcontrollerImp());
    return Scaffold(
      appBar: AppBar(
        title: Text("verification code "),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: GetBuilder<VerifySignupcontrollerImp>(
        builder:
            (controller) => HandlingDataRequest(
              statusRequest: controller.statusRequest,
              widget: Container(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 35),
                child: ListView(
                  children: [
                    const SizedBox(height: 30),
                    Customtexttitleauth(textTilte: "check code"),
                    const SizedBox(height: 20),
                    Customtextbodyauth(
                      textBody:
                          "please enter the verification code you recieved in your email \n to complete your signup process"
                              .tr,
                    ),
                    const SizedBox(height: 20),
                    OtpTextField(
                      borderRadius: BorderRadius.circular(11),
                      numberOfFields: 5,
                      borderColor: Colors.black,
                      //set to true to show as box or false to show as dash
                      showFieldAsBox: true,
                      //runs when a code is typed in
                      onCodeChanged: (String code) {
                        //handle validation or checks here
                      },
                      //runs when every textfield is filled
                      onSubmit: (String verificationCode) {
                        controller.goSuccessSignup(verificationCode);
                      }, // end onSubmit
                    ),
                    const SizedBox(height: 30),
                    InkWell(
                      onTap: () {
                        controller.resend() ; 
                      },
                      child: Center(
                        child: Text(
                          "Resend verification code",
                          style: TextStyle(
                            fontSize: 20,
                            color: AppColor.primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
      ),
    );
  }
}
