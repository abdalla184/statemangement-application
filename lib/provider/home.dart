import 'package:flutter/material.dart';
import 'package:flutter_application_1/cart.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/mycheckbox.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Item> items = [
  Item("samsoung", 250),
  Item("iphone", 350),
  Item("oppo", 250),
  Item("vevo", 350)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("home"),
        backgroundColor: Colors.blue,
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
        
              IconButton(onPressed: () {
           Navigator.of(context).push(MaterialPageRoute(builder:(context)=>
                
           const Mycheckbox() ));
              },

               icon: const Icon(Icons.shopping_bag)),
               const Padding(padding:EdgeInsets.only(right:10)),
              Consumer<Cart>(
                  builder: (context, Cart, child) => Text("${Cart.count}"))
            ],
          )
        ],
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, i) => Card(
            child: Consumer<Cart>(
          builder: (context, Cart, child) => ListTile(
            title: Text("${items[i].name}"),
            trailing: IconButton(
                onPressed: () {
                  Cart.add(items[i]);
                },
                icon: const Icon(Icons.add)),
          ),
        )),
      ),
    );
  }
}
