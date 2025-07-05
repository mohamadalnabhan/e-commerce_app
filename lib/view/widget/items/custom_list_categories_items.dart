import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/controller/home_page_controller.dart';
import 'package:flutter_application_1/controller/items_controller.dart';
import 'package:flutter_application_1/core/constant/app_color.dart';
import 'package:flutter_application_1/data/model/categories_model.dart';
import 'package:flutter_application_1/link_api.dart';
import 'package:get/get.dart';

class CustomListCategoriesItems extends GetView<HomePageControllerImp> {
  const CustomListCategoriesItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(width: 12),
        scrollDirection: Axis.horizontal,
        itemCount: controller.categories.length,
        itemBuilder: (context, index) {
          return Categories(
            i: index,
            categoriesModel: CategoriesModel.fromJson(
              controller.categories[index],
            ),
          );
        },
      ),
    );
  }
}

class Categories extends GetView<ItemsControllerImp> {
  final CategoriesModel categoriesModel;
  final int? i;
  const Categories({super.key, required this.categoriesModel, required this.i});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // controller.goToItems(controller.categories , i!);
        controller.changeCat(i!);
      },
      child: Column(
        children: [
         GetBuilder<ItemsControllerImp>(builder: (controller)=>  Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration:
                controller.selected == i
                    ? BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          width: 3,
                          color: AppColor.primaryColor,
                        ),
                      ),
                    )
                    : null,
            child: Text(
              "${categoriesModel.categoriesNameEn}",
              style: TextStyle(fontSize: 13, color: Colors.black),
            ),
          ),)
        ],
      ),
    );
  }
}
