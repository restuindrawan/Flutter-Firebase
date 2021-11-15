import 'package:flutter/material.dart';
import 'package:flutter_firebase/app/controllers/auth_controller.dart';
import 'package:flutter_firebase/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  final authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            TextField(
              controller: controller.emailController,
              decoration: InputDecoration(labelText: "Email"),
            ),
            TextField(
              controller: controller.passController,
              decoration: InputDecoration(labelText: "Password"),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () => authController.signIn(
                  controller.emailController.text,
                  controller.passController.text),
              child: Text("Login"),
            ),
            ElevatedButton(
              onPressed: () => authController.signInWithGoogle(),
              child: Text("Google Sign In"),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Belum punya akun?"),
                TextButton(
                  onPressed: () => Get.toNamed(Routes.SIGNUP),
                  child: Text("Daftar"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
