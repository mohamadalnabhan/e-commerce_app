
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/controller/test_controller.dart';
import 'package:flutter_application_1/core/class/status_request.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:get/utils.dart';

class TestView extends StatelessWidget {
  const TestView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(TestController());

    return Scaffold(
      appBar: AppBar(
        title: Text("test page" ),
        titleTextStyle:TextStyle(color: Colors.amber) ,
      ),
      body:GetBuilder<TestController>(builder: (controller){
        if(controller.statusRequest == StatusRequest.loading){
          return const Center(child: Text("loading.....") ,);
        }else if(controller.statusRequest == StatusRequest.serverFail){
           return const Center(child: Text("server fail") ,);
        }else if(controller.statusRequest == StatusRequest.offlineFailure){
         return const Center(child: Text("online issue") ,); 
        }else{
          return ListView.builder(
            itemCount: controller.data.length,
            itemBuilder: (context, index) {
              return Text("${controller.data}");
            },
          );
        }
      }),
    );
  }
}