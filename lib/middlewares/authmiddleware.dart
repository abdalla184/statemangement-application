
import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:get/get.dart';

class Authmiddleware extends GetMiddleware {
  @override
  // TODO: implement priority
  int? get priority => 2;
  @override
  RouteSettings? redirect(String? route) {
    if (sharedPref!.getString("id") == "user") {
      return const RouteSettings(name: "homepage");
    }
    if (sharedPref!.getString("id") =="admin") {
      return const RouteSettings(name: "admin");
    }
  }
}
