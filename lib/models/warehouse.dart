import 'package:flutter/material.dart';
import 'package:motion_hack_1/models/product.dart';

class Shop extends ChangeNotifier {
  // food menu
  final List<Product> _productWarehouse = [
    // Item 1
    Product(
      name: "Reusable Cotton Pad",
      price: "Rp10.500",
      imagePath: "assets/images/item1.png",
      rating: "4.9",
      review: "123",
      description: "",
    ),

    // Item 2
    Product(
      name: "Reusable Cotton Pad",
      price: "Rp10.500",
      imagePath: "assets/images/item1.png",
      rating: "4.9",
      review: "123",
      description: "",
    ),

    // Item 3
    Product(
      name: "Reusable Cotton Pad",
      price: "Rp10.500",
      imagePath: "assets/images/item1.png",
      rating: "4.9",
      review: "123",
      description: "",
    ),
  ];

  // customer cart
  List<Product> _cart = [];

  // getter methods
  List<Product> get foodMenu => _productWarehouse;
  List<Product> get cart => _cart;

  // add to cart
  void addToCart(Product productItem, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _cart.add(productItem);
    }
    notifyListeners();
  }

  // remove from cart
  void removeFromCart(Product productItem) {
    _cart.remove(productItem);
    notifyListeners();
  }
}
