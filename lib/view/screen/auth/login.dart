import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/auth/logincontroller.dart';
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

class Login extends GetView<ChangeLocal> {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    logincontrollerImp controller = Get.put(logincontrollerImp());
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
            Customlogo(),
            Customtexttitleauth(textTilte: "10".tr),
            const SizedBox(height: 20),
            Customtextbodyauth(textBody: "11".tr),
            const SizedBox(height: 30),
            CustomTextFormAuth(hintText: "12".tr, labelText: "18".tr, iconData: Icons.email_outlined, mycontroller: controller.email
            ),
           const SizedBox(height: 20,),
            CustomTextFormAuth(hintText: "13".tr, labelText: "19".tr, iconData: Icons.lock_outline , mycontroller: controller.password
            ),
            const SizedBox(height: 5,) , 
            InkWell(
              onTap: (){
                controller.goToForgetPassword();
              },
              child:  Text("14".tr, style: TextStyle(color:AppColor.grey ),textAlign: TextAlign.end,), 
            ),
          
           const  SizedBox(height: 30,),
           Custombuttonauth(text: "15".tr ,onPressed: (){},),
           const SizedBox(height: 30,),
          Customtextsignuporin(textOne: "16".tr, textTwo: "17".tr  , onTap: (){
            print("printed");
            controller.goToSignUp() ;
          },)
        
          ],
        ),
      ),
    );
  }
}
