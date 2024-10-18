import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/homecontroller.dart';
import 'package:get/get.dart';

class Pagetwo extends StatelessWidget {
   Pagetwo({super.key});
Homecontroller controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("page two"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    controller.add();
                  },
                  icon: const Icon(Icons.remove)),
              GetBuilder<Homecontroller>(
                  builder: (controller) => Text("${controller.counter2}")),
              IconButton(
                  onPressed: () {
                    controller.remove();
                  },
                  icon: const Icon(Icons.remove)),
            ],
          )
        ],
      ),
    );
  }
}
