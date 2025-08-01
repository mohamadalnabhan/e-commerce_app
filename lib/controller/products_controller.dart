import 'package:flutter_application_1/controller/cart/cart_controller.dart';
import 'package:flutter_application_1/core/class/status_request.dart';
import 'package:flutter_application_1/data/model/items_model.dart';
import 'package:get/get.dart';

abstract class ProductsController extends GetxController {
  initialData();
}

class ProductsControllerImp extends ProductsController {
  CartController cartController = Get.put(CartController());
 late StatusRequest statusRequest ; 
 int countItems = 0 ; 
  @override
  
  late ItemsModel itemsModel;

  initialData() async {
    statusRequest =StatusRequest.loading ; 
    itemsModel = Get.arguments["itemsmodel"];
   countItems =  await cartController.getCountItems(itemsModel.itemsId!);
     statusRequest =StatusRequest.success ; 
     update();
  }

  List subItems = [
    {"name": "red", "id": 1, "active": '0'},
    {"name": "yellow", "id": 2, "active": '0'},
    {"name": "green", "id": 3, "active": '1'},
  ];


  add(){
 cartController.addToCart(
                        itemsModel.itemsId!.toString(),
                      );
    countItems++ ; 
    update();
  }

  delete(){
    cartController.DeleteFromCart(
                        itemsModel.itemsId!.toString(),
                      );
    if(countItems > 0 ){
      countItems-- ; 
      update(); 
    }
  }
  @override
  void onInit() {
    super.onInit();
    initialData();
  }
}
