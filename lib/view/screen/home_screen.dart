import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/controller/home_screen_controller.dart';
import 'package:flutter_application_1/core/constant/app_color.dart';
import 'package:flutter_application_1/view/widget/home/custom_bottom_appbar.dart';
import 'package:flutter_application_1/view/widget/home/custom_button_appbar.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());

    return GetBuilder<HomeScreenControllerImp>(
      builder:
          (controller) => Scaffold(
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.shopping_cart),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: const CustomBottomAppbar(),
                 
                
              
            
            body: controller.listPage.elementAt(controller.currnetPage),
          )
          );

  }
}
