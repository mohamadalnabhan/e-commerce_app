
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constant/app_routes.dart';
import 'package:flutter_application_1/core/services/myservices.dart';
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
    MyServices Myservices = Get.find();
    @override
  late PageController pagecontroller ; 
    int currentPage= 0 ;

  @override
  next() {
    if(currentPage >= onboardingList.length-1){
      Myservices.sharedPreferences.setString("onboarding", "1");
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