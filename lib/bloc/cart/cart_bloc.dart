import 'package:flutter/material.dart';
import 'package:flutter_shopping_demo/bloc/base/base_bloc.dart';
import 'package:flutter_shopping_demo/bloc/cart/cart_event.dart';
import 'package:flutter_shopping_demo/data/models/cart_item.dart';
import 'package:flutter_shopping_demo/data/models/product.dart';

import 'cart_state.dart';

class CartBloc extends BaseBLoC<CartEvent, CartState> with ChangeNotifier {

  _addProduct(Product product) {
    Map<String,CartItem> cartItem = Map();
    if (state is CartSuccess) {
      cartItem = (state as CartSuccess).cartItems;
    }

    if(cartItem.containsKey(product.getId())) {
      cartItem[product.getId()].counter++;
    } else {
      cartItem[product.getId()] = CartItem(product: product, counter: 1);
    }
    setState(CartSuccess(cartItems: cartItem));
    notifyListeners();
  }

  int getCounterCart() {
    if (state is CartSuccess) {
      int counter = 0;
      (state as CartSuccess).cartItems.forEach((key, cartItem) {
        counter += cartItem.counter;
      });
      return counter;
    } else {
      return 0;
    }
  }

  @override
  void dispatch(event) {
    if (event is AddProductEvent) {
      _addProduct(event.product);
    }
  }

  @override
  void initState() {
    setState(CartLoading());
    notifyListeners();
  }

}