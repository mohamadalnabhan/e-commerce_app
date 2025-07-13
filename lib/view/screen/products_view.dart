import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/products_controller.dart';
import 'package:flutter_application_1/core/constant/app_color.dart';
import 'package:flutter_application_1/link_api.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    ProductsControllerImp controller = Get.put(ProductsControllerImp());
    return Scaffold(
      bottomNavigationBar: Container(
        height: 60,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: MaterialButton(
          color: AppColor.primaryColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
          onPressed: () {},
          child: Text("Add To Cart ", style: TextStyle(color: AppColor.white)),
        ),
      ),
      body: Container(
        child: ListView(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    color: AppColor.primaryColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                Positioned(
                  top: 50,
                  right: Get.width / 8,
                  left: Get.width / 8,

                  child: Hero(
                    tag: "${controller.itemsModel.itemsId}",
                    child: CachedNetworkImage(
                      imageUrl:
                          LinkApi.imageItems +
                          "/" +
                          controller.itemsModel.itemsImage!,
                      height: 250,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 100),
                  Text(
                    "${controller.itemsModel.itemsNameEn}",
                    style: Theme.of(
                      context,
                    ).textTheme.headlineMedium?.copyWith(color: AppColor.grey2),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "${controller.itemsModel.itemsDescriptionEn}"
                    "${controller.itemsModel.itemsDescriptionEn}"
                    "${controller.itemsModel.itemsDescriptionEn}",
                    style: Theme.of(
                      context,
                    ).textTheme.bodyLarge?.copyWith(color: AppColor.thirdColor),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Color",
                    style: Theme.of(
                      context,
                    ).textTheme.headlineMedium?.copyWith(color: AppColor.grey2),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(bottom: 5),
                        height: 60,
                        width: 90,
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColor.thirdColor),
                          color: AppColor.thirdColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          'grey',
                          style: TextStyle(color: AppColor.white, fontSize: 16),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(bottom: 5),
                        height: 60,
                        width: 90,
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColor.thirdColor),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text('grey', style: TextStyle(fontSize: 16)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
