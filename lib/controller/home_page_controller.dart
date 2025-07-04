import 'package:flutter_application_1/core/class/status_request.dart';
import 'package:flutter_application_1/core/constant/app_routes.dart';
import 'package:flutter_application_1/core/functions/data_handling.dart';
import 'package:flutter_application_1/core/services/myservices.dart';
import 'package:flutter_application_1/data/datasource/remote/auth/signup_data.dart';
import 'package:flutter_application_1/data/datasource/remote/home_data.dart';
import 'package:flutter_application_1/view/widget/home/custom_list_categories.dart';
import 'package:get/get.dart';

abstract class HomePageController extends GetxController {
  initialData();
  getData();
  goToItems(List categories , int selected);
}

class HomePageControllerImp extends HomePageController {
  StatusRequest statusRequest = StatusRequest.none;
  List data = [];
  List categories = [];
  List items = [];
  HomeData homeData = HomeData(Get.find());

  MyServices myServices = Get.find();

  String? username;
  initialData() {
    username = myServices.sharedPreferences.getString("username");
  }

  @override
  void onInit() {
    initialData();
    getData();
   
    super.onInit();
  }

  @override
  getData() async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await homeData.getData();
    print("================= $response");
    statusRequest = dataHandling(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        categories.addAll(response['categories']);
        
        items.addAll(response['items']);
      }
      update() ; 
    } else {
      statusRequest = StatusRequest.failure;
    }
  }
  
  @override
  goToItems(categories , selected) {
    
    Get.offNamed(AppRoutes.itemsPage ,arguments: {
      "categories" : categories , 
      "selected" : selected ,

    });
  }
}
