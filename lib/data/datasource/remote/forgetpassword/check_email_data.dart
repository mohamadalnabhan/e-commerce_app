


import 'package:flutter_application_1/core/class/crud.dart';
import 'package:flutter_application_1/link_api.dart';

class CheckEmailData{
  Crud crud ;
  CheckEmailData(this.crud) ; 

  postdata(String email )async {
   try {
     var response = await crud.postRequest(LinkApi.checkEmail, {
      "email" : email , 
      
    });
         return response.fold((l) => l, (r) => r);
    } catch (e) {
      print("$e");
    }
  }
}
