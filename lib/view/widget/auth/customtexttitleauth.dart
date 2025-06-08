
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constant/app_font_size.dart';
import 'package:get/get.dart';

class Customtexttitleauth extends StatelessWidget {
  final String textTilte ;
  const Customtexttitleauth({super.key, required this.textTilte});

  @override
  Widget build(BuildContext context) {
    return Text(
              textTilte,
              style: AppFontSize.headline2,
              textAlign: TextAlign.center,
            );
  }
}