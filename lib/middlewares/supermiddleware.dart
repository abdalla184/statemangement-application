import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:get/get.dart';

class Supermiddleware extends GetMiddleware {
  @override
  // TODO: implement priority
  int? get priority => 1;
  @override
  RouteSettings? redirect(String? route) {
    if (sharedPref!.getString("id") == "user") {
  /*test*/    return const RouteSettings(name: "admin");
    }
  
  }
}
