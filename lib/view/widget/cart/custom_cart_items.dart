import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/core/constant/App_image_asset.dart';
import 'package:flutter_application_1/core/constant/app_color.dart';
import 'package:flutter_application_1/link_api.dart';

class CustomCartItems extends StatelessWidget {
  final String price ;
  final String name ; 
  final String count ;
  final String imageName ; 
  final void Function()? onAdd ;
  final void Function()? onDelete;
  const CustomCartItems({super.key, required this.price, required this.name, required this.count, required this.imageName,required this.onAdd,required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: CachedNetworkImage(
                imageUrl: "${LinkApi.imageItems}/${imageName}",
                height: 90,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              flex: 3,
              child: ListTile(
                title: Text("${name}", style: TextStyle(fontSize: 15)),
                subtitle: Text(
                  "${price} \$",
                  style: TextStyle(color: AppColor.red1, fontSize: 17),
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Container(
                    height: 35,
                    child: IconButton(onPressed: onAdd, icon: Icon(Icons.add)),
                  ),
                  Container(
                    height: 25,
                    child: Text("${count}", style: TextStyle(fontFamily: "sans")),
                  ),
                  Container(
                    height: 25,
                    child: IconButton(
                      onPressed: onDelete,
                      icon: Icon(Icons.remove),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
