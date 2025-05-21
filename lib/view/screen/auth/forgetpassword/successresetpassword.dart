
import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/auth/successresetpasswordcontroller.dart';
import 'package:flutter_application_1/core/constant/app_color.dart';
import 'package:flutter_application_1/core/constant/app_font_size.dart';
import 'package:flutter_application_1/view/widget/auth/custombuttonauth.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Successresetpassword extends StatelessWidget {
  const Successresetpassword({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessResetPasswordControllerImp controller =Get.put(SuccessResetPasswordControllerImp()) ; 
    return Scaffold(
        appBar: AppBar(
        title: Text("  password has been changed "),
        centerTitle: true,
        backgroundColor: Colors.white,
        ),
      body: Container(
        padding:  EdgeInsets.all(20),
        child: Column(
     
        children: [
         Center(child:  Icon(Icons.check_circle_outline,size: 200,color: AppColor.primaryColor,)),
         Spacer(),
        Text("the passoword has been successfully changed  go back to login", style: AppFontSize.headline1),
        Spacer(),
        Container(
          width: double.infinity,
          child: 
         Custombuttonauth(text: "go to login", onPressed: () {
            print("hey");
               controller.goToLoginPage() ;
            }),)
        ],
      ),
      )
    );
  }
}