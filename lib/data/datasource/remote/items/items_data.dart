import 'package:flutter_application_1/core/class/crud.dart';
import 'package:flutter_application_1/core/class/status_request.dart';
import 'package:flutter_application_1/link_api.dart';

class ItemsData {
  Crud crud;

  ItemsData(this.crud);

  getData(String id) async {
    try {
      var response = await crud.postRequest(LinkApi.itemsPage, {
        "id": id.toString(),
      });
      print("🟡 Raw response: $response");

      print("===================");
      print("🔵 Sending request to itemsPage with id = '$id'");

      print("===================");
      return response.fold((l) => l, (r) => r);
    } catch (e) {
      print("=============Error in TestData.getData(): $e");
      return StatusRequest.serverFail; // return something meaningful
    }
  }
}//////