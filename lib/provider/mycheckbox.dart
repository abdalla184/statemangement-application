import 'package:flutter/material.dart';
import 'package:flutter_application_1/cart.dart';
import 'package:provider/provider.dart';

class Mycheckbox extends StatefulWidget {
  const Mycheckbox({super.key});

  @override
  State<Mycheckbox> createState() => _MycheckboxState();
}

class _MycheckboxState extends State<Mycheckbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("shopping cart"),
        backgroundColor: Colors.blue,
      ),
      body: Consumer<Cart>(
          builder: (context, Cart, child) => ListView.builder(
              itemCount: Cart.basket.length,
              itemBuilder: (context, i) => Card(
                    child: ListTile(
                      title: Text("${Cart.basket[i].name}"),
                      trailing: IconButton(
                          onPressed: () {
                            Cart.remove(Cart.basket[i]);
                          },
                          icon: const Icon(Icons.remove)),
                    ),
                  ))),
    );
  }
}
