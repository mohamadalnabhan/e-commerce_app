import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/auth/successresetpassword.dart';
import 'package:flutter_application_1/controller/auth/successsignup.dart';
import 'package:flutter_application_1/core/constant/app_routes.dart';
import 'package:flutter_application_1/view/screen/auth/forgetpassword.dart';
import 'package:flutter_application_1/view/screen/auth/login.dart';
import 'package:flutter_application_1/view/screen/auth/resetpassword.dart';
import 'package:flutter_application_1/view/screen/auth/signup.dart';
import 'package:flutter_application_1/view/screen/auth/verifycode.dart';
import 'package:flutter_application_1/view/screen/onboarding.dart';
import 'package:path/path.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes.login: (context) => Login(),
  AppRoutes.onboarding: (context) => Onboarding(),
  AppRoutes.signup: (context) => Signup(),
  AppRoutes.forgetPassword: (context) => Forgetpassword(),
  AppRoutes.verifyCode: (context) => Verifycode(),
  AppRoutes.resetPassowrd: (context) => Resetpassword(),
  AppRoutes.successSignup: (context) => Successsignup(),
  AppRoutes.resetPasswordSuccess: (context) => Successresetpassword(),
};
