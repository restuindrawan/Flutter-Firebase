import 'package:flutter/material.dart';
import 'package:flutter_firebase/app/controllers/auth_controller.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  final emailController = TextEditingController();
  final passController = TextEditingController();

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
                controller: emailController,
                decoration: InputDecoration(labelText: "Email"),
              ),
              TextField(
                controller: passController,
                decoration: InputDecoration(labelText: "Password"),
              ),
              SizedBox(height: 50),
              ElevatedButton(
                  onPressed: () => authController.signIn(
                      emailController.text, passController.text),
                  child: Text("Login")),
            ],
          ),
        ));
  }
}
