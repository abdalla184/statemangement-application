import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

class Cart extends ChangeNotifier {
  List<Item> _items = [];
  double _price = 0.0;

  void add(Item item) {
    _items.add(item);
    _price += item.price!;
    notifyListeners();
  }
  void remove(Item item) {
    _items.remove(item);
    _price -= item.price!;
    notifyListeners();
  }

  get count => _items.length;
  get totalprice => _price;
  List<Item> get basket => _items;
}
