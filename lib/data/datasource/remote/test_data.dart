import 'package:flutter_application_1/core/class/crud.dart';
import 'package:flutter_application_1/core/class/status_request.dart';
import 'package:flutter_application_1/link_api.dart';

class TestData {

Crud crud ;

TestData(this.crud);

getData() async {
  try {
    var response = await crud.postRequest(LinkApi.test, {});
    return response.fold(
      (l) => l,
      (r) => r,
    );
  } catch (e) {
    print("=============Error in TestData.getData(): $e");
    return StatusRequest.serverFail;  // return something meaningful
  }
}
}////// backend php and sql => model json to dart => create model in dart then  , create data => controller   