import 'package:flutter/foundation.dart';

class CartItem {
  final String id;
  final String title;
  final double price;
  int quantity;

  CartItem({
    required this.id,
    required this.title,
    required this.price,
    this.quantity = 1,
  });
}

class CartProvider with ChangeNotifier {
  // Internal map to store cart items
  Map<String, CartItem> _items = {};

  // Getter to retrieve cart items
  Map<String, CartItem> get items {
    return {..._items};
  }

  // Get the total number of items in the cart
  int get itemCount {
    return _items.length;
  }

  // Calculate the total price of items in the cart
  double get totalAmount {
    var total = 0.0;
    _items.forEach((key, cartItem) {
      total += cartItem.price * cartItem.quantity;
    });
    return total;
  }

  // Add an item to the cart
  void addItem(String productId, String title, double price) {
    if (_items.containsKey(productId)) {
      // If the item is already in the cart, increase its quantity
      _items.update(
        productId,
        (existingCartItem) => CartItem(
          id: existingCartItem.id,
          title: existingCartItem.title,
          price: existingCartItem.price,
          quantity: existingCartItem.quantity + 1,
        ),
      );
    } else {
      // Otherwise, add a new item to the cart
      _items.putIfAbsent(
        productId,
        () => CartItem(
          id: DateTime.now().toString(),
          title: title,
          price: price,
        ),
      );
    }
    notifyListeners(); // Notify listeners to update UI
  }

  // Remove a single item from the cart by productId
  void removeItem(String productId) {
    _items.remove(productId);
    notifyListeners();
  }

  // Remove a single quantity of an item, or remove it entirely if quantity is 1
  void removeSingleItem(String productId) {
    if (!_items.containsKey(productId)) {
      return;
    }
    if (_items[productId]!.quantity > 1) {
      _items.update(
        productId,
        (existingCartItem) => CartItem(
          id: existingCartItem.id,
          title: existingCartItem.title,
          price: existingCartItem.price,
          quantity: existingCartItem.quantity - 1,
        ),
      );
    } else {
      _items.remove(productId);
    }
    notifyListeners();
  }

  // Clear all items from the cart
  void clearCart() {
    _items = {};
    notifyListeners();
  }
}
