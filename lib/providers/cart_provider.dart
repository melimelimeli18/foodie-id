// lib/providers/cart_provider.dart
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/menu_item.dart';
import '../data/menu_data.dart';

class CartProvider extends ChangeNotifier {
  final List<CartItem> _items = [];

  List<CartItem> get items => _items;

  int get itemCount => _items.length;

  int get totalItems {
    return _items.fold(0, (sum, item) => sum + item.quantity);
  }

  int get subtotal {
    return _items.fold(0, (sum, item) => sum + item.totalPrice);
  }

  int get tax => (subtotal * 0.1).round();

  int get total => subtotal + tax;

  CartProvider() {
    _loadFromPrefs();
  }

  // Check if item is in cart
  bool isInCart(String itemId) {
    return _items.any((cartItem) => cartItem.menuItem.id == itemId);
  }

  // Get quantity of item in cart
  int getQuantity(String itemId) {
    try {
      final cartItem = _items.firstWhere(
        (item) => item.menuItem.id == itemId,
      );
      return cartItem.quantity;
    } catch (e) {
      return 0;
    }
  }

  // Toggle item in cart (add if not exists, remove if exists)
  void toggleItem(MenuItem menuItem) {
    final index = _items.indexWhere(
      (item) => item.menuItem.id == menuItem.id,
    );

    if (index >= 0) {
      // Item exists, remove it
      _items.removeAt(index);
    } else {
      // Item doesn't exist, add it with quantity 1
      _items.add(CartItem(menuItem: menuItem, quantity: 1));
    }

    _saveToPrefs();
    notifyListeners();
  }

  // Update quantity of item in cart
  void updateQuantity(String itemId, int quantity) {
    if (quantity <= 0) {
      removeItem(itemId);
      return;
    }

    final index = _items.indexWhere(
      (item) => item.menuItem.id == itemId,
    );

    if (index >= 0) {
      _items[index].quantity = quantity;
      _saveToPrefs();
      notifyListeners();
    }
  }

  // Increase quantity
  void increaseQuantity(String itemId) {
    final index = _items.indexWhere(
      (item) => item.menuItem.id == itemId,
    );

    if (index >= 0) {
      _items[index].quantity++;
      _saveToPrefs();
      notifyListeners();
    }
  }

  // Decrease quantity
  void decreaseQuantity(String itemId) {
    final index = _items.indexWhere(
      (item) => item.menuItem.id == itemId,
    );

    if (index >= 0) {
      if (_items[index].quantity > 1) {
        _items[index].quantity--;
      } else {
        _items.removeAt(index);
      }
      _saveToPrefs();
      notifyListeners();
    }
  }

  // Remove item from cart
  void removeItem(String itemId) {
    _items.removeWhere((item) => item.menuItem.id == itemId);
    _saveToPrefs();
    notifyListeners();
  }

  // Clear all items
  void clearCart() {
    _items.clear();
    _saveToPrefs();
    notifyListeners();
  }

  // Save to SharedPreferences
  Future<void> _saveToPrefs() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final cartData = _items.map((item) => item.toJson()).toList();
      final jsonString = jsonEncode(cartData);
      await prefs.setString('cart_items', jsonString);
    } catch (e) {
      debugPrint('Error saving cart: $e');
    }
  }

  // Load from SharedPreferences
  Future<void> _loadFromPrefs() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final jsonString = prefs.getString('cart_items');

      if (jsonString != null && jsonString.isNotEmpty) {
        final List<dynamic> jsonData = jsonDecode(jsonString);
        _items.clear();

        for (var item in jsonData) {
          try {
            final cartItem = CartItem.fromJson(item as Map<String, dynamic>);
            // Verify that the menu item still exists
            final menuItem = MenuData.getItemById(cartItem.menuItem.id);
            if (menuItem != null) {
              _items.add(cartItem);
            }
          } catch (e) {
            debugPrint('Error parsing cart item: $e');
          }
        }
        notifyListeners();
      }
    } catch (e) {
      debugPrint('Error loading cart: $e');
    }
  }

  // Format price to Rupiah
  String formatPrice(int price) {
    return 'Rp ${price.toString().replaceAllMapped(
          RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
          (Match m) => '${m[1]}.',
        )}';
  }
}
