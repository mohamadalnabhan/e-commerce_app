
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constant/app_font_size.dart';
import 'package:get/get.dart';

class Customtextbodyauth extends StatelessWidget {
  final String textBody ;
  const Customtextbodyauth({super.key, required this.textBody});

  @override
  Widget build(BuildContext context) {
    return Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                textBody,
                style: AppFontSize.bodyText1,
                textAlign: TextAlign.center,
              ),
            );
  }
}