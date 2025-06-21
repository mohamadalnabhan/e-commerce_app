


import 'package:flutter_application_1/core/class/crud.dart';
import 'package:flutter_application_1/link_api.dart';

class ResetPasswordData{
  Crud crud ;
  ResetPasswordData(this.crud) ; 

  postdata(String email , String password)async {
   try {
     var response = await crud.postRequest(LinkApi.resetPassword, {
      "email" : email , 
      "password" :  password,
    });
         return response.fold((l) => l, (r) => r);
    } catch (e) {
      print("$e");
    }
  }
}
