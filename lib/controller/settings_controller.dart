
import 'package:flutter_application_1/core/constant/app_routes.dart';
import 'package:flutter_application_1/core/services/myservices.dart';
import 'package:get/get.dart';

class SettingsController extends GetxController{

MyServices myServices = Get.find();

logout(){
  myServices.sharedPreferences.clear() ;
  Get.offAllNamed(AppRoutes.login);

}

}