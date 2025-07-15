import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constant/app_color.dart';

class PriceAndCount extends StatelessWidget {
  void Function()? onRemove;
  void Function()? onAdd;
  final String count;
  final String price;

  PriceAndCount({
    super.key,
    required this.count,
    required this.price,
    required onRemove,
    required onAdd,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed: onRemove, icon: Icon(Icons.remove)),
        Container(
          height: 40,
          width: 60,
          alignment: Alignment.center,
          decoration: BoxDecoration(border: Border.all(color: AppColor.grey2)),
          child: Text("${count}"),
        ),
        IconButton(onPressed: onAdd, icon: Icon(Icons.add)),
        Spacer(),
        Text("${price}", style: TextStyle(fontSize: 24, color: AppColor.red1)),
      ],
    );
  }
}
