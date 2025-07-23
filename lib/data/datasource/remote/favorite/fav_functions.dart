import 'package:flutter_application_1/core/class/crud.dart';
import 'package:flutter_application_1/core/class/status_request.dart';
import 'package:flutter_application_1/link_api.dart';

class FavFunctions {
  Crud crud;

  FavFunctions(this.crud);

  addFav(String userid, String itemid) async {
    try {
      var response = await crud.postRequest(LinkApi.favAdd, {
        "userid": userid,
        "itemid": itemid.toString(),
      });
      return response.fold((l) => l, (r) => r);
    } catch (e) {
      print("=============Error in TestData.getData(): $e");
      return StatusRequest.serverFail; // return something meaningful
    }
  }

  deleteFav(String userid, String itemid) async {
    try {
      var response = await crud.postRequest(LinkApi.favDelete, {
        "userid": userid,
        "itemid": itemid.toString(),
      });
      return response.fold((l) => l, (r) => r);
    } catch (e) {
      print("=============Error in TestData.getData(): $e");
      return StatusRequest.serverFail; // return something meaningful
    }
  }
}



////// backend php and sql => model json to dart => create model in dart then  , create data => controller   