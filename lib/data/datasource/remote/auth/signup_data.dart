import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/core/class/crud.dart';
import 'package:flutter_application_1/link_api.dart';

class SignupData {
  Crud crud;

  SignupData(this.crud);

  postData(String username, String phone, String email, String password) async {
    try {
      var response = await crud.postRequest(LinkApi.Signup, {
        "username": username,
        "phone": phone,
        "email": email,
        "password": password,
      });
      return response.fold((l) => l, (r) => r);
    } catch (e) {
      print("$e");
    }
  }
}
