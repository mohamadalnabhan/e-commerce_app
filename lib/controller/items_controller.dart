import 'package:flutter_application_1/core/class/status_request.dart';
import 'package:flutter_application_1/core/functions/data_handling.dart';
import 'package:flutter_application_1/core/services/myservices.dart';
import 'package:flutter_application_1/data/datasource/remote/items/items_data.dart';
import 'package:flutter_application_1/data/model/items_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

/// Abstract Controller (optional, useful if you have multiple implementations)
abstract class ItemsController extends GetxController {
  void initialData(); // ✅ Dart naming convention: lowercase methods
  void changeCat(int val, String catVal);
  getItemsData(String categoriesId);
  goToProductsView(ItemsModel);
}

/// Concrete Implementation
class ItemsControllerImp extends ItemsController {
  List categories = [];
  int? selected;
  MyServices myServices =  Get.find();
  List data = [];
  late String? categoriesId;

  late StatusRequest statusRequest;
  ItemsData itemsData = ItemsData(Get.find());

  @override
  void onInit() {
    super.onInit();

    initialData();
  }

  @override
  void initialData() {
    categories = Get.arguments["categories"] ?? [];
    selected = Get.arguments["selected"] ?? 0;
    categoriesId = Get.arguments["categoriesId"];

    if (categoriesId == null || categoriesId!.isEmpty) {
      print("❌ No category ID passed to screen.");
      return;
    }

    getItemsData(categoriesId!);
  }

  @override
  void changeCat(int val, String? catVal) {
    if (catVal == null || catVal.isEmpty) {
      print("❌ Invalid category ID");
      return;
    }

    selected = val;
    categoriesId = catVal;
    getItemsData(categoriesId!);
    update();
  }

  @override
  getItemsData(categoriesId) async {
    data.clear();
    statusRequest = StatusRequest.loading;
    update();

    var response = await itemsData.getData(categoriesId , myServices.sharedPreferences.getString("id")!);
    print("================= items response $response");

    statusRequest = dataHandling(response);

    if (statusRequest == StatusRequest.success) {
      if (response['status'] == "success") {
        if (response['data'] is List) {
          data.addAll(response['data']);
        } else {
          print("❌ Error: response['data'] is not a List");
          statusRequest = StatusRequest.failure;
        }
      } else {
        statusRequest = StatusRequest.failure;
      }
    }

    update();
  }

  @override
  goToProductsView(itemsModel) {
    Get.toNamed("productsView", arguments: {"itemsmodel": itemsModel});
  }
}
