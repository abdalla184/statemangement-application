import 'package:get/get.dart';

class Homecontroller extends GetxController {
RxInt counter1 = 0.obs;
RxInt counter2 = 0.obs;
void   add() {
    counter1++;
    counter2++;
    //update();
  }
  void remove() {
  counter1--;
  counter2--;
  //  update();
  }
}
