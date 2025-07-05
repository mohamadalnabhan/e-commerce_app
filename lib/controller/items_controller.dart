
import 'package:get/get.dart';

abstract class ItemsController extends GetxController{
InitialData();
changeCat(int val);

}

class ItemsControllerImp extends ItemsController {
List categories  = [] ;
int? selected ;
void onInit() {
   InitialData() ; 
    super.onInit();
  }
  @override
  InitialData() {
  categories = Get.arguments["categories"];
  selected = Get.arguments["selected"];
  }
  
  @override
  changeCat( val) {
    selected = val  ; 
    update() ; 
  }

  



}