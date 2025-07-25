import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/core/constant/app_color.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
      return Container(
      child: ListView(
        children: [
          Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Container(height: Get.width / 3, color: AppColor.primaryColor),
                Positioned(
                    top: Get.width / 3.9,
                    child: Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100)),
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.grey[100],
                        // backgroundImage: AssetImage(AppImageAsset.avatar),
                      ),
                    )),
              ]),
          SizedBox(height: 100),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Card(
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                ListTile(
                  title: Text("title one"),
                ),
                Divider() , 
                ListTile(
                  title: Text("title one"),
                ),
                    Divider() , 
                ListTile(
                  title: Text("title one"),
                )
              ]),
            ),
          )
        ],
      ),
    );
  }
}