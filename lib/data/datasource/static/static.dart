import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constant/app_image_asset.dart';
import 'package:flutter_application_1/data/model/onboarding_model.dart';
import 'package:flutter_application_1/view/screen/onboarding.dart';

List<OnboardingModel> onboardingList = [
  OnboardingModel(
    title: "choose Product",
    body:
        "we have aa 100k Products , Choose \n Your Products From Our \n E-commerce Shop ",
    img: AppImageAsset.OnboardingImgOne, image: null,
  ),
  OnboardingModel(
    title: "Easy and Safe Payment",
    body:
        "we have aa 100k Products , Choose \n Your Products From Our \n E-commerce Shop ",
    img:  AppImageAsset.OnboardingImgTwo, image: null,
  ),
  OnboardingModel(
    title: "Track Your Order",
    body:
        "we have aa 100k Products , Choose \n Your Products From Our \n E-commerce Shop ",
    img:  AppImageAsset.OnboardingImgThree, image: null,
  ),
  OnboardingModel(
    title: "Fast Delivery",
    body:
        "we have aa 100k Products , Choose \n Your Products From Our \n E-commerce Shop ",
    img:  AppImageAsset.OnboardingImgFour, image: null,
  ),
];
