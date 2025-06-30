import 'package:flutter_application_1/core/class/crud.dart';
import 'package:flutter_application_1/core/class/status_request.dart';
import 'package:flutter_application_1/link_api.dart';

class HomeData {

Crud crud ;

HomeData(this.crud);

getData() async {
  try {
    var response = await crud.postRequest(LinkApi.homePage, {});
    return response.fold(
      (l) => l,
      (r) => r,
    );
  } catch (e) {
 
    return StatusRequest.serverFail;  // return something meaningful
  }
}
}