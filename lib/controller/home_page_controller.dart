
import 'package:flutter_application_1/core/services/myservices.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController{

}

class HomePageControllerImp extends HomePageController {


MyServices myServices = Get.find();

String? username ;
initialData(){
  username =  myServices.sharedPreferences.getString("username") ; 

}

@override
  void onInit() {
    initialData() ;    
      super.onInit();
  }

}