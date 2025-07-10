import 'package:flutter_application_1/data/model/items_model.dart';
import 'package:get/get.dart';

abstract class ProductsController extends GetxController{
initialData() ; 

}

class ProductsControllerImp extends ProductsController {
  @override
  late ItemsModel itemsModel ; 

  initialData() {
  itemsModel  = Get.arguments["itemsmodel"];
  }

  @override
  void onInit() {
    super.onInit();
    initialData();

  }



}