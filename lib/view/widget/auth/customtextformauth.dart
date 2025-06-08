import 'dart:core';

import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

class CustomTextFormAuth extends StatelessWidget {
  final String hintText;
  final String labelText;
  final IconData iconData;
  final TextEditingController mycontroller;
  final String? Function(String?)? validator ;
  final bool isNumber ;
  final bool? obscureText ;
  final void Function()? onTapIcon ; 

  const CustomTextFormAuth({
    super.key,
    this.obscureText,
    required this.hintText,
    required this.labelText,
    required this.iconData,
    required this.mycontroller,required this.validator, required this.isNumber, this.onTapIcon, 
   
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: isNumber? const TextInputType.numberWithOptions(decimal: true) :TextInputType.text,
      validator: validator ,
      controller: mycontroller,
      obscureText:obscureText ==  null || obscureText == false ? false :true, 
      decoration: InputDecoration(
        hintText: hintText,

        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
        suffixIcon: InkWell(child: Icon(iconData),onTap:onTapIcon ),
        label: Text(labelText),
        
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
      ),
    );
  }
}
