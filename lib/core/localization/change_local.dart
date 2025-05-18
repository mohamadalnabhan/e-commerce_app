import 'dart:ui';
import 'package:flutter_application_1/core/services/myservices.dart';
import 'package:get/get.dart';

class ChangeLocal extends GetxController {
  Locale? language;
  final MyServices myServices = Get.find(); // Moved to field initialization

  // CHANGED: Added update() call and improved logic
  void changeLang(String langcode) {
    final locale = Locale(langcode);
    myServices.sharedPreferences.setString("lang", langcode);
    Get.updateLocale(locale);
    language = locale;
    update(); // ADDED: This triggers widget rebuild
  }

  @override
  void onInit() {
    // CHANGED: Simplified initialization logic
    final sharedPrefLang = myServices.sharedPreferences.getString("lang");
    language = sharedPrefLang != null 
      ? Locale(sharedPrefLang)
      : Get.deviceLocale ?? const Locale('en');
    super.onInit();
  }
}