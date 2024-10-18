import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/homecontroller.dart';
import 'package:get/get.dart';

class Pageone extends StatelessWidget {
  Pageone({super.key});
  Homecontroller   controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("page one"),
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
                  builder: (controller) => Text("${controller.counter1}")),
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
