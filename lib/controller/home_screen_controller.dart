import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/view/screen/home_page.dart';
import 'package:flutter_application_1/view/screen/settings.dart';
import 'package:get/get.dart';

abstract class HomeScreenController extends GetxController {
  changePage(int currnetPage);
}

class HomeScreenControllerImp extends HomeScreenController {
  int currnetPage = 0;

  List<Widget> listPage = [
    const HomePage(),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Center(child: Text("page 2321"))],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Center(child: Text("page 31"))],
    ),
    Settings(),
  ];
  List titlePagesBottomAppbar = [
    {"title": "home", "icons": Icons.home},
    {"title": "notifications", "icons": Icons.notifications_active_outlined},
    {"title": "profile", "icons": Icons.person},
    {"title": "settings", "icons": Icons.settings},
  ];

  changePage(int i) {
    currnetPage = i;
    update();
  }
}
