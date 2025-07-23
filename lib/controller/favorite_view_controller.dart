import 'package:flutter_application_1/core/class/status_request.dart';
import 'package:flutter_application_1/core/functions/data_handling.dart';
import 'package:flutter_application_1/core/services/myservices.dart';
import 'package:flutter_application_1/data/datasource/remote/favorite/fav_view.dart';
import 'package:flutter_application_1/data/model/my_favorite_model.dart';
import 'package:get/get.dart';

abstract class FavoriteViewController extends GetxController {
  getData();
}

class FavoriteViewControllerImp extends FavoriteViewController {
  Map isFav = {};
  StatusRequest statusRequest = StatusRequest.none;
  List<MyFavoriteModel> data = [];

  FavView favView = FavView(Get.find());
  MyServices myServices = Get.find();

  getData() async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await favView.getData(
      myServices.sharedPreferences.getString("id")!,
    );
    print("================= $response");
    statusRequest = dataHandling(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        List responseData = response['data'];
        data.addAll(responseData.map((e) => MyFavoriteModel.fromJson(e)));
      }
    } else {
      statusRequest = StatusRequest.failure;
    }
    update();
  }
DeleteFavData(String favid) async {
  print("Deleting favorite with id: $favid");
  var response = await favView.deleteFavData(favid);
  print("Delete response: $response");

  if (response['status'] == "success") {
    data.removeWhere((element) => element.favoriteId == favid);
    update();
  } else {
    print("Delete failed: $response");
  }

  
}


  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
