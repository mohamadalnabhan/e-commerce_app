

import 'package:flutter_application_1/core/class/crud.dart';
import 'package:flutter_application_1/link_api.dart';

class LoginData{
  Crud crud ;
  LoginData(this.crud) ; 

  postdata(String email , String password)async {
   try {
     var response = await crud.postRequest(LinkApi.Login, {
      "email" :email , 
      "password" :password,
    });
         return response.fold((l) => l, (r) => r);
    } catch (e) {
      print("$e");
    }
  }
}
