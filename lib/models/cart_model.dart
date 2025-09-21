import 'package:flutter/foundation.dart';
import 'product.dart';


class CartItem {
final Product product;
int qty;
CartItem({required this.product, this.qty = 1});
}


class CartModel extends ChangeNotifier {
final List<CartItem> _items = [];


List<CartItem> get items => List.unmodifiable(_items);
int get totalItems => _items.fold(0, (s, it) => s + it.qty);


void add(Product p) {
final idx = _items.indexWhere((it) => it.product.id == p.id);
if (idx >= 0) {
_items[idx].qty++;
} else {
_items.add(CartItem(product: p));
}
notifyListeners();
}


void remove(Product p) {
_items.removeWhere((it) => it.product.id == p.id);
notifyListeners();
}


void clear() {
_items.clear();
notifyListeners();
}
}