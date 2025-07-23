import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/home_page_controller.dart';
import 'package:flutter_application_1/controller/home_screen_controller.dart';
import 'package:flutter_application_1/view/widget/home/custom_button_appbar.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CustomBottomAppbar extends StatelessWidget {
  const CustomBottomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
  HomePageControllerImp controller = Get.find<HomePageControllerImp>();

    return GetBuilder<HomeScreenControllerImp>(
      builder:
          (controller) => BottomAppBar(
            shape: CircularNotchedRectangle(),
            notchMargin: 10,
            child: Row(
              children: [
                ...List.generate(controller.listPage.length + 1, (index) {
                  int i = index > 2 ? index - 1 : index;
                  return index == 2
                      ? Spacer()
                      : CustomButtonAppbar(
                        onPressed: () {
                          controller.changePage(i);
                        },
                        iconData: controller.titlePagesBottomAppbar[i]['icons'],
                        // buttonTitle: controller.titlePagesBottomAppbar[i],
                        active: controller.currnetPage == i ? true : false,
                      );
                }),
              ],
            ),
          ),
    );
  }
}
