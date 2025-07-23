import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomAppbar extends StatelessWidget {
  final String appBarHint;
  final void Function()? onPressed;
  final void Function()? onPressedSearch;
  final void Function()? onPressedFavorite;
  const CustomAppbar({
    super.key,
    required this.appBarHint,
    required this.onPressed,
    required this.onPressedSearch,
    required this.onPressedFavorite,
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
           
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            width: 60,
            padding: EdgeInsets.symmetric(vertical: 8),
            child: IconButton(
              onPressed: onPressedFavorite,
              icon: Icon(
                Icons.favorite_outline,
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
