import 'package:ahmad/model/prouducts_models.dart';
import 'package:flutter/material.dart';


class CartProvider extends ChangeNotifier {
  List<ProductsModel> _cartItems = [];

  List<ProductsModel> get cartItems => _cartItems;

  void addProduct(ProductsModel product) {
    _cartItems.add(product);
    notifyListeners();
  }

  void removeProduct(ProductsModel product) {
    _cartItems.remove(product);
    notifyListeners();
  }

  void clearCart() {
    _cartItems.clear();
    notifyListeners();
  }

  double get totalPrice {
    return _cartItems.fold(0, (sum, item) => sum + double.parse(item.price));
  }
}
