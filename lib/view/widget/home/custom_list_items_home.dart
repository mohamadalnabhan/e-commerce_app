
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/controller/home_page_controller.dart';
import 'package:flutter_application_1/core/constant/app_color.dart';
import 'package:flutter_application_1/data/model/items_model.dart';
import 'package:flutter_application_1/link_api.dart';
import 'package:get/get.dart';

class CustomListItemsHome extends GetView<HomePageControllerImp> {
  const CustomListItemsHome({super.key});

  @override
  Widget build(BuildContext context) {
    
    return  SizedBox(
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: controller.items.length,
                      itemBuilder: (context, index) {
                        return Itemss(itemsModel: ItemsModel.fromJson(controller.items[index]));
                      },
                    ),
                  );
  }
}

class Itemss extends StatelessWidget {
  final ItemsModel itemsModel ; 
  const Itemss({super.key, required this.itemsModel});

  @override
  Widget build(BuildContext context) {
    return Stack(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 9,
                                vertical: 10,
                              ),
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              child: Image.network(
                                "${LinkApi.imageItems}/${itemsModel.itemsImage}",
                                height: 100,
                                width: 150,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: AppColor.black.withOpacity(0.25),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              height: 120,
                              width: 185,
                            ),
                            Positioned(
                              left: 10,
                              child: Text(
                                "${itemsModel.itemsNameEn}",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: AppColor.white,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        );
  }
}