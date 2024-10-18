import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Settingservices extends GetxService {
   late SharedPreferences  sharedpref;
  RxInt counter = 0.obs;
  Future<Settingservices> init() async {
    sharedpref = await SharedPreferences.getInstance();
    counter.value = sharedpref.getInt("counter")??0;
    return this;
  }

  void increase() {
    counter.value++;
    sharedpref.setInt("counter", counter.value);
  }
}
