import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/core/constant/app_color.dart';

class CustomTitleHome extends StatelessWidget {
  final String title;
  const CustomTitleHome({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    
    return Text(
      title,
      style: TextStyle(
        fontSize: 20,
        color: AppColor.primaryColor,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
