import 'package:flutter/material.dart';
import 'package:flutter_application_1/binding/mybindings.dart';
import 'package:flutter_application_1/controller/view/admin.dart';
import 'package:flutter_application_1/controller/view/homepage.dart';
import 'package:flutter_application_1/controller/view/login.dart';
import 'package:flutter_application_1/controller/view/pageone.dart';
import 'package:flutter_application_1/controller/view/pagetwo.dart';
import 'package:flutter_application_1/middlewares/authmiddleware.dart';
import 'package:flutter_application_1/middlewares/supermiddleware.dart';
import 'package:flutter_application_1/provider/cart.dart';
import 'package:flutter_application_1/provider/home.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? sharedPref;

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  sharedPref = await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //initialBinding: Mybindings(),
      initialRoute: "/",
      getPages: [
        GetPage(name: "login", page: () =>Login(),middlewares: [Authmiddleware(),Supermiddleware()]),
        GetPage(name: "admin", page: () => Admin()),
        GetPage(name: "homepage", page: () => Homepage()),
        GetPage(name: "pageone", page: () => Pageone(),binding: Mybindings()),
        GetPage(name: "pagetwo", page: () => Pagetwo(), binding: Mybindings()),
      ],
    );
    /* return ChangeNotifierProvider(
      create: (context) => Cart(),
      child: const MaterialApp(
        home: Home(),
      ),
    );*/
  }
}

class Item {
  String? name;
  double? price;
  Item(this.name, this.price);
}
