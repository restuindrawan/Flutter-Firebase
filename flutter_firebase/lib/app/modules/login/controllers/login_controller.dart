import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  void onClose() {
    // TODO: implement onClose
    emailController.dispose();
    passController.dispose();
    super.onClose();
  }
}
