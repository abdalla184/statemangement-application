import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/homecontroller.dart';
import 'package:flutter_application_1/main.dart';
import 'package:get/get.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});
  //final controller = Get.lazyPut(() => Homecontroller(), fenix: true);

//  Homecontroller controller = Get.put(Homecontroller(),permanent: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("home page"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Row(
            children: [
              MaterialButton(
                  color: Colors.green,
                  textColor: Colors.black,
                  onPressed: () {
                    Get.toNamed("pageone");
                  },
                  child: const Text("page one")),
              const SizedBox(height: 20),
              MaterialButton(
                  color: Colors.green,
                  textColor: Colors.black,
                  onPressed: () {
                    Get.toNamed(
                      "pagetwo",
                    );
                  },
                  child: const Text("page two")),
              MaterialButton(
                  color: Colors.red,
                  textColor: Colors.white,
                  onPressed: () {
                    sharedPref!.clear();
                    Get.toNamed("login");
                  },
                  child: const Text("signout"))
            ],
          )
        ],
      ),

      /*-------------------------getbuilder-----------------
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<Homecontroller>(
                init: Homecontroller(),
                builder: (controller) => Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              controller.add();
                            },
                            icon: const Icon(Icons.remove)),
                        Text("${controller.counter}"),
                        IconButton(
                            onPressed: () {
                              controller.remove();
                            },
                            icon: const Icon(Icons.remove)),
                      ],
                    ))
          ],
        )
---------------------------------------------------------- */
      /*-----------------obx------------------
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Obx(()=>Row(
0                    children: [
                      IconButton(
                          onPressed: () {
                            controller.add();
                          },
                          icon: const Icon(Icons.remove)),
                      Text("${controller.counter.value}"),
                      IconButton(
                          onPressed: () {
                            controller.remove();
                          },
                          icon: const Icon(Icons.remove)),
                    ],
                  ))
        
        ],
      ),

      ----------------------------------------*/
      /*----------------------get x-------------------------
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [GetX<Homecontroller>(
        init: Homecontroller(),
        builder:(controller)=>
        Row(children: [
            IconButton(
              onPressed:(){
                controller.add();
              },
             icon:const Icon(Icons.remove)),
              Text("${controller.counter.value}"),
              IconButton(
              onPressed:(){
                controller.remove();
              },
             icon:const Icon(Icons.remove)),


        ],)
        )
          ],
      ) ,
      -----------------------------------------------*/
    );
  }
}
