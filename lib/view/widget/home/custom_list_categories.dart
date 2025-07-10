import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/controller/home_page_controller.dart';
import 'package:flutter_application_1/core/functions/translate_data.dart';
import 'package:flutter_application_1/data/model/categories_model.dart';
import 'package:flutter_application_1/link_api.dart';
import 'package:get/get.dart';

class CustomListCategoriesHome extends StatelessWidget {
  const CustomListCategoriesHome({super.key});

  @override
  Widget build(BuildContext context) {
    HomePageControllerImp controller = Get.find<HomePageControllerImp>();

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

class Categories extends GetView<HomePageControllerImp> {
  final CategoriesModel categoriesModel;
  final int? i;
  const Categories({super.key, required this.categoriesModel, required this.i});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
      controller.goToItems(
  controller.categories,
  i!,
  categoriesModel.categoriesId!.toString(), // Make 
        );
      },

      child: Column(
        children: [
          Container(
            height: 70,
            width: 70,
            padding: EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 7, 146, 221),
              borderRadius: BorderRadius.circular(13),
            ),
            child: Image.network(
              "${LinkApi.imageCategories}/${categoriesModel.categoriesImage}",
            ),
          ),
          Text(
            "${TranslateData(categoriesModel.categoriesNameEn , categoriesModel.categoriesNameAr)}",
            style: TextStyle(fontSize: 13, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
