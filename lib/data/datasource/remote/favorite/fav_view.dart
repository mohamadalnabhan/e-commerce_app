import 'package:flutter_application_1/core/class/crud.dart';
import 'package:flutter_application_1/core/class/status_request.dart';
import 'package:flutter_application_1/link_api.dart';

class FavView {
  Crud crud;

  FavView(this.crud);

  getData(String userId) async {
    try {
      var response = await crud.postRequest(LinkApi.favView, {
        "userid": userId,
      });
      return response.fold((l) => l, (r) => r);
    } catch (e) {
      print("=============Error in TestData.getData(): $e");
      return StatusRequest.serverFail; // return something meaningful
    }
  }

  deleteFavData(String favid) async {
    try {
      var response = await crud.postRequest(LinkApi.favPageDelete, {"favid": favid});
      return response.fold((l) => l, (r) => r);
    } catch (e) {
      print("=============Error in TestData.getData(): $e");
      return StatusRequest.serverFail; // return something meaningful
    }
  }
}







////// backend php and sql => model json to dart => create model in dart then  , create data => controller   