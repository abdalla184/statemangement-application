import 'package:flutter_application_1/controller/homecontroller.dart';
import 'package:get/get.dart';

class Mybindings implements Bindings {
  @override
  void dependencies() {
    Get.put(Homecontroller(),permanent: true);
  }
}
