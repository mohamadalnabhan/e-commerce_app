import 'package:flutter/material.dart';

import 'package:flutter_application_1/core/middleware/my_middle_ware.dart';

import 'package:flutter_application_1/view/screen/auth/forgetpassword/successresetpassword.dart';
import 'package:flutter_application_1/view/screen/auth/successsignup.dart';
import 'package:flutter_application_1/core/constant/app_routes.dart';

import 'package:flutter_application_1/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:flutter_application_1/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:flutter_application_1/view/screen/auth/forgetpassword/verifycode.dart';
import 'package:flutter_application_1/view/screen/auth/login.dart';

import 'package:flutter_application_1/view/screen/auth/signup.dart';
import 'package:flutter_application_1/view/screen/auth/verifysignup.dart';
import 'package:flutter_application_1/view/screen/cart.dart';
import 'package:flutter_application_1/view/screen/home_page.dart';
import 'package:flutter_application_1/view/screen/home_screen.dart';
import 'package:flutter_application_1/view/screen/items.dart';
import 'package:flutter_application_1/view/screen/language.dart';
import 'package:flutter_application_1/view/screen/my_favorite_page.dart';

import 'package:flutter_application_1/view/screen/onboarding.dart';
import 'package:flutter_application_1/view/screen/products_view.dart';
import 'package:flutter_application_1/view/test_view.dart';
import 'package:flutter_application_1/view/widget/home/custom_list_items_home.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:image_pickers/image_pickers.dart';
import 'package:path/path.dart';

List<GetPage<dynamic>> getPages = [
  GetPage(name: "/", page: () => MyLanguage(), middlewares: [MyMiddleWare()]),
  GetPage(name: AppRoutes.Cart, page: () => Cart()),
  GetPage(name: AppRoutes.login, page: () => Login()),
  GetPage(name: AppRoutes.onboarding, page: () => Onboarding()),
  GetPage(name: AppRoutes.signup, page: () => Signup()),
  GetPage(name: AppRoutes.forgetPassword, page: () => Forgetpassword()),
  GetPage(name: AppRoutes.verifyCode, page: () => Verifycode()),
  GetPage(name: AppRoutes.resetPassowrd, page: () => Resetpassword()),
  GetPage(name: AppRoutes.successSignup, page: () => Successsignup()),
  GetPage(
    name: AppRoutes.resetPasswordSuccess,
    page: () => Successresetpassword(),
  ),
  GetPage(name: AppRoutes.verifySignup, page: () => Verifysignup()),
  GetPage(name: AppRoutes.homePage, page: () => HomeScreen()),
  GetPage(name: AppRoutes.itemsPage, page: () => Items()),
  GetPage(name: AppRoutes.productsView, page: () => ProductsView()),
  GetPage(name: AppRoutes.myFavPage, page: () => MyFavoritePage()),
];

// Map<String, Widget Function(BuildContext)> routes = {
//   AppRoutes.login: (context) => Login(),
//   AppRoutes.onboarding: (context) => Onboarding(),
//   AppRoutes.signup: (context) => Signup(),
//   AppRoutes.forgetPassword: (context) => Forgetpassword(),
//   AppRoutes.verifyCode: (context) => Verifycode(),
//   AppRoutes.resetPassowrd: (context) => Resetpassword(),
//   AppRoutes.successSignup: (context) => Successsignup(),
//   AppRoutes.resetPasswordSuccess: (context) => Successresetpassword(),

//   AppRoutes.verifySignup :(context) => Verifysignup(),
// };
