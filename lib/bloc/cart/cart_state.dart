import 'package:flutter_shopping_demo/data/models/cart_item.dart';

abstract class CartState {

}


class CartLoading extends CartState {

}

class CartError extends CartState {

}

class CartSuccess extends CartState {
  Map<String,CartItem> cartItems;
  CartSuccess({this.cartItems});

}