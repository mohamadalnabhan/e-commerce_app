import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/items_controller.dart';
import 'package:flutter_application_1/core/class/handling_data_view.dart';
import 'package:flutter_application_1/core/constant/app_color.dart';
import 'package:flutter_application_1/data/model/items_model.dart';
import 'package:flutter_application_1/link_api.dart';
import 'package:flutter_application_1/view/widget/custom_appbar.dart';
import 'package:flutter_application_1/view/widget/home/custom_list_items_home.dart';
import 'package:flutter_application_1/view/widget/items/custom_list_categories_items.dart';
import 'package:flutter_application_1/view/widget/items/custom_list_items.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Items extends StatelessWidget {
  const Items({super.key});

  @override
  Widget build(BuildContext context) {
    ItemsControllerImp controller = Get.put(ItemsControllerImp());
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),

        child: ListView(
          children: [
            CustomAppbar(
              appBarHint: "items search",
              onPressed: () {},
              onPressedSearch: () {},
            ),
            const SizedBox(height: 20),
            CustomListCategoriesItems(),
            GetBuilder<ItemsControllerImp>(
              builder:
                  (controller) => HandlingDataView(
                    statusRequest: controller.statusRequest,
                    widget: GridView.builder(
                      itemCount: controller.data.length,

                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.7,
                      ),
                      itemBuilder: (BuildContext context, index) {
                        return CustomListItems(
                          itemsModel: ItemsModel.fromJson(
                            controller.data[index],
                          ),
                        );
                      },
                    ),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
