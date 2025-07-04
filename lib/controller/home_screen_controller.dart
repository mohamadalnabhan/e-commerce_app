
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/view/screen/home_page.dart';
import 'package:get/get.dart';

abstract class HomeScreenController extends GetxController{

changePage(int currnetPage);

}
class HomeScreenControllerImp extends HomeScreenController {

    int currnetPage = 0 ;

    List<Widget>listPage = [
   const    HomePage(),
   Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Center(child: Text("page 2321"),)
    ],
   ),
     Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Center(child: Text("page 31"),)
    ],
   ),
     Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Center(child: Text("page 13"),)
    ],
   )
    ];
    List<String> titlePagesBottomAppbar =  [
      "home",
      "profile",
      "favorite" , 
      "settings"
    ];


  changePage(int i ) {
  currnetPage = i ;
  update();
  }



}