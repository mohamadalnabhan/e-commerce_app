import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/products_controller.dart';
import 'package:flutter_application_1/core/constant/app_color.dart';
import 'package:flutter_application_1/link_api.dart';
import 'package:flutter_application_1/view/widget/productsdetails/price_and_count.dart';
import 'package:flutter_application_1/view/widget/productsdetails/stack_products_details.dart';
import 'package:flutter_application_1/view/widget/productsdetails/sub_items_list.dart';
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
            StackProductsDetails(),
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
                  const SizedBox(height: 20),
                  PriceAndCount(
                    count: "0",
                    price: "129.99",
                    onRemove: () {},
                    onAdd: () {},
                  ),
                  const SizedBox(height: 20),

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
                    
                  SubItemsList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
