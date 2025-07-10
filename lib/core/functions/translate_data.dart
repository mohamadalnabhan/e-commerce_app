import 'package:flutter_application_1/core/services/myservices.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

TranslateData(columnEn, columnAr) {
  MyServices myServices = Get.find();

  if (myServices.sharedPreferences.getString("lang") == 'ar') {
    return columnAr;
  } else {
    return columnEn;
  }
}
