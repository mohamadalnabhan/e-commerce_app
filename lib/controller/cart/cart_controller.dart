import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/class/status_request.dart';
import 'package:flutter_application_1/core/functions/data_handling.dart';
import 'package:flutter_application_1/core/services/myservices.dart';
import 'package:flutter_application_1/data/datasource/remote/cart/cart_data.dart';
import 'package:flutter_application_1/data/datasource/remote/favorite/fav_functions.dart';
import 'package:flutter_application_1/data/model/cart_model.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  StatusRequest statusRequest = StatusRequest.none;
  List<cartModel> data = [];
  double priceOrders = 0.0;
  int totalItemCount = 0;

  CartData cartData = CartData(Get.find());

  MyServices myServices = Get.find();

  addToCart(itemsid) async {
    statusRequest = StatusRequest.loading;

    var response = await cartData.addData(
      myServices.sharedPreferences.getString("id")!,
      itemsid.toString(),
    );

    statusRequest = dataHandling(response);
    print("//////////// $response");
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        Get.rawSnackbar(
          title: "notifiction",
          messageText: Text("this item has been added to your cart"),
        );
        // data.addAll(response['data']);
      }
    } else {
      statusRequest = StatusRequest.failure;
    }
  }

  DeleteFromCart(itemsid) async {
    data.clear();
    statusRequest = StatusRequest.loading;

    var response = await cartData.deleteData(
      myServices.sharedPreferences.getString("id")!,
      itemsid.toString(),
    );

    statusRequest = dataHandling(response);
    print("//////////// $response");
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        Get.rawSnackbar(
          title: "notifiction",
          messageText: Text("this item has been REMOVED from your cart"),
        );
        // data.addAll(response['data']);
      }
    } else {
      statusRequest = StatusRequest.failure;
    }
  }

  getCountItems(itemsid) async {
    data.clear();
    statusRequest = StatusRequest.loading;

    var response = await cartData.getCountItems(
      myServices.sharedPreferences.getString("id")!,
      itemsid.toString(),
    );

    statusRequest = dataHandling(response);
    print("//////////// $response");
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        var countItems = 0;
        countItems =
            response['data'] is int
                ? response['data']
                : int.parse(response['data'].toString());

        print("================================= $countItems");
        return countItems;
        // data.addAll(response['data']);
      }
    } else {
      statusRequest = StatusRequest.failure;
    }
  }

  resetVarCart() {
    totalItemCount = 0;
    priceOrders = 0;
  }

  refreshPage() {
    resetVarCart();
    cartView();
  }

  cartView() async {
    data.clear();
    statusRequest = StatusRequest.loading;
    update();
    var response = await cartData.cartView(
      myServices.sharedPreferences.getString("id")!,
    );

    statusRequest = dataHandling(response);
    print("//////////// $response");
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        if (response['datacart']['status'] == 'success') {
          List responseData = response['datacart']['data']; // make sure it's a list!
          Map dataCountPrice = response['countAndPrice'];
          data.clear();
          data.addAll(responseData.map((e) => cartModel.fromJson(e)));

          totalItemCount =
              int.tryParse(dataCountPrice["totalItemCount"].toString()) ?? 0;
          priceOrders =
              double.tryParse(dataCountPrice["totalItemsPrice"].toString()) ??
              0.0;
        }
      }
    } else {
      statusRequest = StatusRequest.failure;
    }
    update(); // Add this to refresh UI if using GetBuilder
  }

  @override
  void onInit() {
    cartView();
    super.onInit();
  }
}
