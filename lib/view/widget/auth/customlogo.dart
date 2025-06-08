import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constant/app_image_asset.dart';

class Customlogo extends StatelessWidget {

  const Customlogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Image.asset(AppImageAsset.logo,height: 170,
        fit: BoxFit.contain,),
    );
  }
}