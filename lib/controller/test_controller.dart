import 'package:flutter_application_1/core/class/status_request.dart';
import 'package:flutter_application_1/core/functions/data_handling.dart';
import 'package:flutter_application_1/data/datasource/remote/test_data.dart';
import 'package:get/get.dart';

class TestController extends GetxController {
TestData testData = TestData(Get.find());

late StatusRequest statusRequest ;
List data =[];


getData()async{
 statusRequest = StatusRequest.loading ; 
 var response =await testData.getData();
 print("================= $response");
 statusRequest = dataHandling(response);
 if(StatusRequest.success == statusRequest ){
    if(response['status']== "success"){
      data.addAll(response['data']);
    }else{
      statusRequest = StatusRequest.failure ; 
    }
 }
 update();

 

}
void onInit(){
getData();
super.onInit() ; 

}
}