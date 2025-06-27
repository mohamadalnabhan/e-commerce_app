
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/core/constant/app_routes.dart';
import 'package:flutter_application_1/core/services/myservices.dart';
import 'package:get/get.dart';

class MyMiddleWare extends GetMiddleware{
int? get priority => 1;
  
MyServices myservices = Get.find();

RouteSettings? redirect(String? route){

if(myservices.sharedPreferences.getString("step") == "2"){
 return RouteSettings(name: AppRoutes.homePage);
}
if(myservices.sharedPreferences.getString("step") == "1"){
 return RouteSettings(name: AppRoutes.login);
}
}


}