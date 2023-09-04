

import 'package:chatt/core/constant/routes.dart';
import 'package:chatt/core/middleware/mymiddleware.dart';
import 'package:chatt/view/Screens/Homescreen.dart';
import 'package:chatt/view/Screens/auth/forgetpassword/forgetpassword.dart';
import 'package:chatt/view/Screens/auth/forgetpassword/success_resetpassword.dart';
import 'package:chatt/view/Screens/auth/forgetpassword/verifycode.dart';
import 'package:chatt/view/Screens/auth/login.dart';
import 'package:chatt/view/Screens/auth/success_signup.dart';
import 'package:chatt/view/Screens/auth/verifycodesignup.dart';
import 'package:chatt/view/Screens/language.dart';
import 'package:chatt/view/Screens/onboarding.dart';

import 'package:get/get.dart';

import 'view/Screens/LoginScreen.dart';
import 'view/Screens/auth/forgetpassword/resetpassword.dart';
import 'view/Screens/auth/signup.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: "/", page: () => const Language() , middlewares: [
    MyMiddleWare()
  ]),
  GetPage(name: AppRoute.login, page: () => const Login()),
  GetPage(name: AppRoute.signUp, page: () => SignUp()),
  GetPage(name: AppRoute.forgetPassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoute.verfiyCode, page: () => const VerfiyCode()),
  GetPage(name: AppRoute.resetPassword, page: () => const ResetPassword()),
  GetPage(name: AppRoute.successResetpassword, page: () => const SuccessResetPassword()),
  GetPage(name: AppRoute.successSignUp, page: () => const SuccessSignUp()),
  GetPage(name: AppRoute.onBoarding, page: () => const OnBoarding()),
  GetPage(name: AppRoute.verfiyCodeSignUp, page: () => const VerfiyCodeSignUp()),
  GetPage(name: AppRoute.LoginScreen, page: () =>  LoginScreen()),
];
 