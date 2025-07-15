import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/products_controller.dart';
import 'package:flutter_application_1/core/constant/app_color.dart';
import 'package:get/get.dart';

class SubItemsList extends GetView<ProductsControllerImp> {
  const SubItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.generate(
          controller.subItems.length,
          (index) => Container(
            margin: EdgeInsets.only(right: 10),
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 5),
            height: 60,
            width: 90,
            decoration: BoxDecoration(
              border: Border.all(color: AppColor.thirdColor),
              color:
                  controller.subItems[index]['active'] == '1'
                      ? AppColor.thirdColor
                      : AppColor.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              "${controller.subItems[index]["name"]}",
              style: TextStyle(
                color:
                    controller.subItems[index]['active'] == '0'
                        ? AppColor.thirdColor
                        : AppColor.white,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
