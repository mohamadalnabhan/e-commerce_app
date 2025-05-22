import 'dart:core';

import 'package:flutter/material.dart';

class CustomTextFormAuth extends StatelessWidget {
  final String hintText;
  final String labelText;
  final IconData iconData;
  final TextEditingController mycontroller;
  final String? Function(String?)? validator ;
  final bool isNumber ;

  const CustomTextFormAuth({
    super.key,
    required this.hintText,
    required this.labelText,
    required this.iconData,
    required this.mycontroller,required this.validator, required this.isNumber,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: isNumber? const TextInputType.numberWithOptions(decimal: true) :TextInputType.text,
      validator: validator ,
      controller: mycontroller,
      decoration: InputDecoration(
        hintText: hintText,

        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
        suffixIcon: Icon(iconData),
        label: Text(labelText),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
      ),
    );
  }
}
