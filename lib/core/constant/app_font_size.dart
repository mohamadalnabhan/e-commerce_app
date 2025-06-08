import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constant/app_color.dart';

class AppFontSize {
  static TextStyle headline1 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );
  
  static  TextStyle headline2 = TextStyle(
    fontSize: 26,
    color: Colors.black,
     fontWeight: FontWeight.bold,
  );
  
   static const TextStyle bodyText1 = TextStyle(
    height: 2,
    color: AppColor.grey,
    fontWeight: FontWeight.bold,
    fontSize: 16, // Add your preferred size

  );
  

}

