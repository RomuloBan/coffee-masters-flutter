import 'package:coffee_masters_flutter/datamodel.dart';

class DataManager {
  List<Category>? _menu;
  List<ItemCart> cart = [];

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
