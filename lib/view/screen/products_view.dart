
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


      body: Container(
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    color: AppColor.primaryColor ,
                    borderRadius: BorderRadius.circular(12),
                    
                  ),
                  child: CachedNetworkImage(imageUrl: LinkApi.imageItems + "/" + controller.itemsModel.itemsImage!),
                  
                )
              ],
            )
          ],
        ),

      ),
    );
  }
}