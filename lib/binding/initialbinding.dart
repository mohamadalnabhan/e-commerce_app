import 'package:flutter_application_1/core/class/crud.dart';
import 'package:get/get.dart';

class Initialbind extends Bindings {
  

  
  @override
  void dependencies() {
   Get.put(Crud());
  }


}
