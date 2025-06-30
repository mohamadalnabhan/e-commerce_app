import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/controller/home_page_controller.dart';
import 'package:flutter_application_1/core/class/handling_data_view.dart';
import 'package:flutter_application_1/core/constant/app_color.dart';
import 'package:flutter_application_1/core/functions/data_handling.dart';
import 'package:flutter_application_1/link_api.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomePageControllerImp());
    return Scaffold(
      body: GetBuilder<HomePageControllerImp>(
        builder:
            (controller) => Container(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: ListView(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.search),
                                hintText: "Find Product",
                                hintStyle: TextStyle(fontSize: 18),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                filled: true,
                                fillColor: Colors.grey[200],
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            width: 60,
                            padding: EdgeInsets.symmetric(vertical: 8),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.notifications_active_outlined,
                                size: 30,
                                color: Colors.grey[600],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                        vertical: 14,
                        horizontal: 14,
                      ),
                      child: Stack(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            child: ListTile(
                              title: Text(
                                "summer offer",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              subtitle: Text(
                                "cash back",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
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
                            right: -20,
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
                    ),
                    Container(
                      height: 70,
                      
                      child: ListView.separated(
                        separatorBuilder: (context , index)=>SizedBox(width: 10,),
                        scrollDirection: Axis.horizontal,
                        itemCount: controller.categories.length,
                        itemBuilder: (context, index) {
                          return Container(
                            height: 70,
                            width:  70,
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 7, 146, 221),
                              borderRadius: BorderRadius.circular(13)
                            ),
                            child: Image.network(
                              "${LinkApi.imageCategories}/${controller.categories[index]['categories_image']}",
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                
              ),
            ),
      
    );
  }
}
