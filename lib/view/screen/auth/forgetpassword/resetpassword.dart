import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/forgetpassword/resetpasswordcontroller.dart';
import 'package:flutter_application_1/core/functions/valid_input.dart';
import 'package:flutter_application_1/view/widget/auth/custombuttonauth.dart';
import 'package:flutter_application_1/view/widget/auth/customtextformauth.dart';
import 'package:flutter_application_1/view/widget/auth/customtexttitleauth.dart';
import 'package:get/get.dart';

class Resetpassword extends GetView<ResetpasswordcontrollerImp> {
  const Resetpassword({super.key});

  @override
  Widget build(BuildContext context) {
    ResetpasswordcontrollerImp controller = Get.put(ResetpasswordcontrollerImp());

    return Scaffold(
      appBar: AppBar(
        title: Text("Reset password"),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 35),
        child: Form(
          key: controller.formstate,
          child: ListView(
            children: [
              const SizedBox(height: 30),
              Customtexttitleauth(textTilte: "34".tr),
              const SizedBox(height: 20),

              // New Password Field
              CustomTextFormAuth(
                isNumber: false,
                validator: (val) {
                  return validInput(val!, 5, 100, "password");
                },
                hintText: "35".tr,
                labelText: "34".tr,
                iconData: Icons.lock_outline,
                mycontroller: controller.password,
              ),

              const SizedBox(height: 30),

              // Confirm Password Field
              CustomTextFormAuth(
                isNumber: false,
                validator: (val) {
                  if (val != controller.password.text) {
                    return "Passwords do not match";
                  }
                  return validInput(val!, 5, 100, "password");
                },
                hintText: "19".tr,
                labelText: "Confirm Password",
                iconData: Icons.lock_outline,
                mycontroller: controller.repassword,
              ),

              const SizedBox(height: 20),

              // Submit Button
              Custombuttonauth(
                text: "reset password",
                onPressed: () {
                  if (controller.formstate.currentState!.validate()) {
                    controller.goToSuccessToResetPassword();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
