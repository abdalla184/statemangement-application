import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("log in"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
            color: Colors.red,
            textColor: Colors.white,
              onPressed: () {
                sharedPref!.setString("id", "user");
                Get.toNamed("homepage");
              },
              child: const Text("log in")),
                MaterialButton(
            color: Colors.red,
            textColor: Colors.white,
              onPressed: () {
                sharedPref!.setString("id", "admin");
                Get.toNamed("admin");
              },
              child: const Text("admin"))
        ],
      ),
    );
  }
}
