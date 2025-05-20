import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/screen/auth/forgetpassword/successresetpassword.dart';
import 'package:flutter_application_1/view/screen/auth/successsignup.dart';
import 'package:flutter_application_1/core/constant/app_routes.dart';
import 'package:flutter_application_1/view/screen/auth/checkemail.dart';
import 'package:flutter_application_1/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:flutter_application_1/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:flutter_application_1/view/screen/auth/forgetpassword/verifycode.dart';
import 'package:flutter_application_1/view/screen/auth/login.dart';

import 'package:flutter_application_1/view/screen/auth/signup.dart';

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
  AppRoutes.checkEmail: (context) => Checkemail(),

};
