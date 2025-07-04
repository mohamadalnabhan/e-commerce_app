

import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/widget/custom_appbar.dart';

class Items extends StatelessWidget {
  const Items({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: ListView(
        children: [
          CustomAppbar(appBarHint: "items search", onPressed: (){}, onPressedSearch: (){})
        ],
  
      ),
    );
  }
}