import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomAppbar extends StatelessWidget {
  final String appBarHint;
  final void Function()? onPressed;
  final void Function()? onPressedSearch;
  const CustomAppbar({
    super.key,
    required this.appBarHint,
    this.onPressed,
    this.onPressedSearch,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: onPressedSearch,
                ),
                hintText: appBarHint,
                hintStyle: TextStyle(fontSize: 18),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10),
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
          ),
          SizedBox(width: 10),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            width: 60,
            padding: EdgeInsets.symmetric(vertical: 8),
            child: IconButton(
              onPressed: onPressed,
              icon: Icon(
                Icons.notifications_active_outlined,
                size: 30,
                color: Colors.grey[600],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
