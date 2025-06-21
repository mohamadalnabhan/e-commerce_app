


import 'package:flutter_application_1/core/class/crud.dart';
import 'package:flutter_application_1/link_api.dart';

class VerifyCodeForgetPasswordData{
  Crud crud ;
VerifyCodeForgetPasswordData(this.crud) ; 

  postdata(String email , String verifycode)async {
   try {
     var response = await crud.postRequest(LinkApi.verifyCodeForgetPassword, {
    "email" : email , 
      "verifycode" :  verifycode,
    });
         return response.fold((l) => l, (r) => r);
    } catch (e) {
      print("$e");
    }
  }
}
