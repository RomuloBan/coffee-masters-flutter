import 'dart:convert';

import 'package:coffee_masters_flutter/datamodel.dart';
import 'package:http/http.dart' as http;

class DataManager {
  List<Category>? _menu;
  List<ItemCart> cart = [];

  fetchMenu() async {
    const url = "https://firtman.github.io/coffeemasters/api/menu.json";
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var body = response.body;
      var decodeData = jsonDecode(body) as List<dynamic>;
      for (var json in decodeData) {
        _menu?.add(Category.fromJson(json));
      }
    }
  }

  Future<List<Category>> getMenu() async {
    if (_menu == null) {
      await fetchMenu();
    }
    return _menu!;
  }

  cartAdd(Product product) {
    for (var item in cart) {
      if (item.product.id == product.id) {
        item.quantity++;
      } else {
        cart.add(ItemCart(product: product, quantity: 1));
      }
    }
  }

  cartRemove(Product product) {
    cart.removeWhere((item) => item.product.id == product.id);
  }

  cartClear() {
    cart.clear();
  }

  double cartTotal() {
    double total = 0;
    for (var item in cart) {
      total += item.product.price * item.quantity;
    }
    return total;
  }
}
