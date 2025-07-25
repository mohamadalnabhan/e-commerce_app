import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/controller/favorite_controller.dart';
import 'package:flutter_application_1/controller/items_controller.dart';
import 'package:flutter_application_1/core/constant/app_color.dart';
import 'package:flutter_application_1/core/functions/translate_data.dart';
import 'package:flutter_application_1/data/model/items_model.dart';
import 'package:flutter_application_1/link_api.dart';
import 'package:get/get.dart';

class CustomListItems extends GetView<ItemsControllerImp> {
  final ItemsModel itemsModel;

  const CustomListItems({super.key, required this.itemsModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.goToProductsView(itemsModel);
      },
      child: Container(
        height: 200,
        child: Card(
          child: Padding(
            padding: EdgeInsets.all(8),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Hero(
                  tag: "${itemsModel.itemsId!}",
                  child: CachedNetworkImage(
                    imageUrl: LinkApi.imageItems + "/" + itemsModel.itemsImage!,
                    height: 100,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "${TranslateData(itemsModel.itemsNameEn, itemsModel.itemsNameAr)}",
                  style: TextStyle(color: AppColor.grey2, fontSize: 15),
                ),
                SizedBox(height: 14),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("${itemsModel.itemsPrice}"),
                    GetBuilder<FavoriteControllerImp>(
                      builder:
                          (controller) => IconButton(
                            onPressed: () {
                              if (controller.isFav[itemsModel.itemsId] == 1) {
                                controller.setFavorite(itemsModel.itemsId, 0);
                                controller.deleteFav(itemsModel.itemsId!);
                                print(itemsModel.itemsId);
                              } else {
                                controller.setFavorite(itemsModel.itemsId, 1);
                                controller.addFav(itemsModel.itemsId) ; 
                                 print("000000000000000 / ${itemsModel.itemsId}");
                              }
                            },
                            icon: Icon(
                              controller.isFav[itemsModel.itemsId] == 1
                                  ? Icons.favorite
                                  : Icons.favorite_outline,
                              color: AppColor.primaryColor,
                            ),
                          ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
