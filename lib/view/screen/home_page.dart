import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/controller/home_page_controller.dart';
import 'package:flutter_application_1/core/class/handling_data_view.dart';
import 'package:flutter_application_1/core/constant/app_color.dart';
import 'package:flutter_application_1/core/constant/app_routes.dart';
import 'package:flutter_application_1/core/functions/data_handling.dart';
import 'package:flutter_application_1/link_api.dart';
import 'package:flutter_application_1/view/widget/custom_appbar.dart';
import 'package:flutter_application_1/view/widget/home/custom_card.dart';
import 'package:flutter_application_1/view/widget/home/custom_list_categories.dart';
import 'package:flutter_application_1/view/widget/home/custom_list_items_home.dart';
import 'package:flutter_application_1/view/widget/home/custom_title_home.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
  final controller = Get.isRegistered<HomePageControllerImp>()
    ? Get.find<HomePageControllerImp>()
    : Get.put(HomePageControllerImp());

    return  GetBuilder<HomePageControllerImp>(
        builder:
            (controller) => Container(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: ListView(
                children: [
                  CustomAppbar(
                    appBarHint: "find product",
                    onPressed: () {},
                    onPressedSearch: () {},
                    onPressedFavorite: () {
                      Get.toNamed(AppRoutes.myFavPage);

                    },
                  ),
                  const CustomCard(
                    cardTitle: "summer Offer ",
                    cardBody: "cash back ",
                  ),
                  const SizedBox(height: 10),
                  const CustomTitleHome(title: "categories"),
                  const SizedBox(height: 10,),
                  CustomListCategoriesHome(),
                  const CustomTitleHome(title: "products for you"),
                  const SizedBox(height: 10),
                  CustomListItemsHome(),
                ],
              ),
            )
    );
  }
}
