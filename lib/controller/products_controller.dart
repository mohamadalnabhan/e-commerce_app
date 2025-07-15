import 'package:flutter_application_1/data/model/items_model.dart';
import 'package:get/get.dart';

abstract class ProductsController extends GetxController {
  initialData();
}

class ProductsControllerImp extends ProductsController {
  @override
  late ItemsModel itemsModel;

  initialData() {
    itemsModel = Get.arguments["itemsmodel"];
  }

  List subItems = [
    {"name": "red", "id": 1, "active": '0'},
    {"name": "yellow", "id": 2, "active": '0'},
    {"name": "green", "id": 3, "active": '1'},
  ];
  @override
  void onInit() {
    super.onInit();
    initialData();
  }
}
