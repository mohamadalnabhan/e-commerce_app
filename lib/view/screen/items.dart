import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/items_controller.dart';
import 'package:flutter_application_1/view/widget/custom_appbar.dart';
import 'package:flutter_application_1/view/widget/items/custom_list_categories_items.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Items extends StatelessWidget {
  const Items({super.key});

  @override
  Widget build(BuildContext context) {
    ItemsControllerImp controller = Get.put(ItemsControllerImp());
    return Scaffold(
      body:
       Container(
        padding: EdgeInsets.all(12),
        child: ListView(
          children: [
            CustomAppbar(
              appBarHint: "items search",
              onPressed: () {},
              onPressedSearch: () {},
            ),
            CustomListCategoriesItems(),
          ],
        ),
      ),
      
    );
  }
}
