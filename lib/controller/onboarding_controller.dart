
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constant/app_routes.dart';
<<<<<<< HEAD
import 'package:flutter_application_1/core/services/myservices.dart';
=======
>>>>>>> bf794f7b00292b5c2e1d0ef2feba4e44f9d8cdbb
import 'package:flutter_application_1/data/datasource/static/static.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

abstract class OnboardingController extends GetxController {

  late PageController pagecontroller ; 

  next();


  onPageChange(int index);
}

class  OnboardingControllerImp extends OnboardingController{
<<<<<<< HEAD
    MyServices Myservices = Get.find();
=======

>>>>>>> bf794f7b00292b5c2e1d0ef2feba4e44f9d8cdbb
    @override
  late PageController pagecontroller ; 
    int currentPage= 0 ;

  @override
  next() {
    if(currentPage >= onboardingList.length-1){
<<<<<<< HEAD
      Myservices.sharedPreferences.setString("onboarding", "1");
=======
>>>>>>> bf794f7b00292b5c2e1d0ef2feba4e44f9d8cdbb
      Get.offAllNamed(AppRoutes.login);
    }else {
      currentPage++ ;
    pagecontroller.animateToPage(currentPage, duration: Duration(milliseconds: 900), curve: Curves.easeInOut);
    }
  }



  @override
  onPageChange(int index) {
   currentPage =  index ;
   update();
  }
    @override
  void onInit() {
    pagecontroller = PageController();
    super.onInit();
  }
}