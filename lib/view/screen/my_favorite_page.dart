import 'package:dartz/dartz.dart' as statusRequest;
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/controller/favorite_controller.dart';
import 'package:flutter_application_1/controller/favorite_view_controller.dart';
import 'package:flutter_application_1/core/class/handling_data_view.dart';
import 'package:flutter_application_1/view/widget/custom_appbar.dart';
import 'package:flutter_application_1/view/widget/myfavorite/custom_favorite_items.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class MyFavoritePage extends StatelessWidget {
  const MyFavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(FavoriteViewControllerImp());
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(12),
        child: GetBuilder<FavoriteViewControllerImp>(
          builder:
              (controller) => ListView(
                children: [
                  CustomAppbar(
                    appBarHint: "find product",
                    onPressed: () {},
                    onPressedSearch: () {},
                    onPressedFavorite: () {},
                  ),
                    HandlingDataView(
                      statusRequest: controller.statusRequest,
                      widget: GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: controller.data.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2, childAspectRatio: 0.7),
                        itemBuilder: (context, index) {
                          return CustomFavoriteItems(itemsModel: controller.data[index]);
                        },
                      ))
                    
                ],
              ),
        ),
      ),
    );
  }
}
