
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

abstract class OnboardingController extends GetxController {

  late PageController pagecontroller ; 

  next();


  onPageChange(int index);
}

class  OnboardingControllerImp extends OnboardingController{

    @override
  late PageController pagecontroller ; 
    int currentPage= 0 ;

  @override
  next() {
    currentPage++ ;
    pagecontroller.animateToPage(currentPage, duration: Duration(milliseconds: 900), curve: Curves.easeInOut);
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