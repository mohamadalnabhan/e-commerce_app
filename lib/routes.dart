
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constant/app_routes.dart';
import 'package:flutter_application_1/view/screen/auth/login.dart';
import 'package:path/path.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes.login : (context)=> Login() ,

};