import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/controller/home_page_controller.dart';
import 'package:flutter_application_1/core/constant/app_color.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CustomCard extends GetView<HomePageControllerImp> {
  final String cardTitle ;
  final String cardBody ;
  const CustomCard({super.key, required this.cardTitle, required this.cardBody});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      child: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            
            child: ListTile(
              title: Text(
                cardTitle,
               style:const TextStyle(color: Colors.white, fontSize: 20),
              ),
              subtitle: Text(
                cardBody,
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
            height: 150,
            decoration: BoxDecoration(
              color: AppColor.primaryColor,
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          Positioned(
            top: -20,
            
            right:controller.Lang == "en" ? -20 : null,
            left:controller.Lang == "ar" ? -20 : null,
            child: Container(
              height: 160,
              width: 160,
              decoration: BoxDecoration(
                color: AppColor.secondryColor,
                borderRadius: BorderRadius.circular(160),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
