import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/core/class/status_request.dart';
import 'package:flutter_application_1/core/functions/data_handling.dart';
import 'package:flutter_application_1/core/services/myservices.dart';
import 'package:flutter_application_1/data/datasource/remote/favorite/fav_functions.dart';
import 'package:flutter_application_1/data/datasource/remote/home_data.dart';
import 'package:get/get.dart';

abstract class FavoriteController extends GetxController {
  setFavorite(id, val);
}

class FavoriteControllerImp extends FavoriteController {
  Map isFav = {};
  StatusRequest statusRequest = StatusRequest.none;
  List data = [];
  FavFunctions favFunctions = FavFunctions(Get.find());
  MyServices myServices = Get.find();

  get categories => null;
  @override
  

  setFavorite(id, val) {
    isFav[id] = val;
    update();
  }

  addFav(itemid) async {
    data.clear();
    statusRequest = StatusRequest.loading;
    
    var response = await favFunctions.addFav(
      myServices.sharedPreferences.getString("id")!,
      itemid.toString(),
    );
  
    statusRequest = dataHandling(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        Get.rawSnackbar(
          title: "notifiction",
          messageText: Text("this item has been added to ur fav list"),
        );

        // data.addAll(response['data']);
      }
      
    } else {
      statusRequest = StatusRequest.failure;
    }
  }

  deleteFav(itemid) async {
    data.clear();
    statusRequest = StatusRequest.loading;
    
    var response = await favFunctions.deleteFav(
      myServices.sharedPreferences.getString("id")!,
      itemid.toString(),
    );

    statusRequest = dataHandling(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        Get.rawSnackbar(
          title: "notifiction",
          messageText: Text("this item has been removed from ur fav list"),
        );
        // data.addAll(response['data']);
      }
      
    } else {
      statusRequest = StatusRequest.failure;
    }
  }




}
