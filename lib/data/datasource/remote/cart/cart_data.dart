import 'package:flutter_application_1/core/class/crud.dart';
import 'package:flutter_application_1/core/class/status_request.dart';
import 'package:flutter_application_1/link_api.dart';

class CartData {
  Crud crud;

  CartData(this.crud);

  addData(String userid, String itemid) async {
    try {
      var response = await crud.postRequest(LinkApi.cartAdd, {
        "userid": userid,
        "itemid": itemid,
      });
      return response.fold((l) => l, (r) => r);
    } catch (e) {
      print("=============Error in TestData.getData(): $e");
      return StatusRequest.serverFail; // return something meaningful
    }
  }

  deleteData(String userid, String itemid) async {
    try {
      var response = await crud.postRequest(LinkApi.cartDelete, {
        "userid": userid,
        "itemid": itemid,
      });
      return response.fold((l) => l, (r) => r);
    } catch (e) {
      print("=============Error in TestData.getData(): $e");
      return StatusRequest.serverFail; // return something meaningful
    }
  }
  
  getCountItems(String userid, String itemid) async {
    try {
      var response = await crud.postRequest(LinkApi.cartCountItems, {
        "userid": userid,
        "itemid": itemid,
      });
      return response.fold((l) => l, (r) => r);
    } catch (e) {
      print("=============Error in TestData.getData(): $e");
      return StatusRequest.serverFail; // return something meaningful
    }
  }
   cartView(String userid) async {
    try {
      var response = await crud.postRequest(LinkApi.cartView, {
        "userid": userid,
      });
      return response.fold((l) => l, (r) => r);
    } catch (e) {
      print("=============Error in TestData.getData(): $e");
      return StatusRequest.serverFail; // return something meaningful
    }
  }
}



////// backend php and sql => model json to dart => create model in dart then  , create data => controller   