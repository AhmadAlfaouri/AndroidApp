import 'package:flutter/material.dart';
import 'package:happylaef/models/products.dart';

class Cart extends ChangeNotifier {
  List<Product> pro = [];

  double totalPrice = 0.0;

  void add(Product prod) {
    pro.add(prod);
    totalPrice += prod.price;
    notifyListeners();
  }

  void remove(Product prod) {
    pro.remove(prod);
    totalPrice -= prod.price;
    notifyListeners();
  }

  int get count {
    // لمعرفة وارجاع عدد المنتجات المضافة
    return pro.length;
  }

  double get total {
    // لإرجاع السعر الكلي
    return totalPrice;
  }

  List<Product> get basketItem {
    return pro;
  }
}
