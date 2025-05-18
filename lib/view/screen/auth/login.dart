import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constant/app_font_size.dart';
import 'package:flutter_application_1/core/localization/change_local.dart';
import 'package:flutter_application_1/view/widget/auth/customtextbodyauth.dart';
import 'package:flutter_application_1/view/widget/auth/customtextformauth.dart';
import 'package:flutter_application_1/view/widget/auth/customtexttitleauth.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class Login extends GetView<ChangeLocal> {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("9".tr),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 35),
        child: ListView(
          children: [
            const SizedBox(height: 30),
            Customtexttitleauth(textTilte: "10".tr),
            const SizedBox(height: 20),
            Customtextbodyauth(textBody: "11".tr),
            const SizedBox(height: 30),
            CustomTextFormAuth(hintText: "12".tr, labelText: "18".tr, iconData: Icons.email_outlined, //mycontroller: mycontroller
            ),
           const SizedBox(height: 20,),
            CustomTextFormAuth(hintText: "13".tr, labelText: "19".tr, iconData: Icons.lock_outline , //mycontroller: mycontroller
            )
          ],
        ),
      ),
    );
  }
}
