import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:ui';

Future<bool> AlertExitApp() async {
  Get.defaultDialog(
    title: "50".tr,
    middleText: "51".tr,
    actions: [
      ElevatedButton(
        onPressed: () {
          exit(0);
        },
        child: Text("confirm"),
      ),
      ElevatedButton(
        onPressed: () {
          Get.back();
        },
        child: Text("cancel"),
      ),
    ],
  );
  return Future.value(true) ;
}
