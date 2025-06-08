
import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/auth/successsignupcontroller.dart';
import 'package:flutter_application_1/core/constant/app_color.dart';
import 'package:flutter_application_1/core/constant/app_font_size.dart';
import 'package:flutter_application_1/view/widget/auth/custombuttonauth.dart';
import 'package:get/get.dart';

class Successsignup extends StatelessWidget {
  const Successsignup({super.key});

  @override
  Widget build(BuildContext context) {
      SuccessSignupControllerImp controller =Get.put(SuccessSignupControllerImp()) ; 
    return Scaffold(
        appBar: AppBar(
        title: Text("Success"),
        centerTitle: true,
        backgroundColor: Colors.white,
        ),
      body: Container(
        padding:  EdgeInsets.all(20),
        child: Column(
     
        children: [
         Center(child:  Icon(Icons.check_circle_outline,size: 200,color: AppColor.primaryColor,)),
         Spacer(),
        Text("signup has been successful done\n go back to login", style: AppFontSize.headline1),
        Spacer(),
        Container(
          width: double.infinity,
          child: 
         Custombuttonauth(text: "go to login", onPressed: () {
        
               controller.goToLoginPage() ;
            }),)
        ],
      ),
      )
    );
  }
}