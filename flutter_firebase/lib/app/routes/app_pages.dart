import 'package:get/get.dart';

import 'package:flutter_firebase/app/modules/home/bindings/home_binding.dart';
import 'package:flutter_firebase/app/modules/home/views/home_view.dart';
import 'package:flutter_firebase/app/modules/login/bindings/login_binding.dart';
import 'package:flutter_firebase/app/modules/login/views/login_view.dart';
import 'package:flutter_firebase/app/modules/signup/bindings/signup_binding.dart';
import 'package:flutter_firebase/app/modules/signup/views/signup_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => SignupView(),
      binding: SignupBinding(),
    ),
  ];
}
