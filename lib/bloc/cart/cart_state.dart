import 'package:flutter_shopping_demo/data/models/cart_item.dart';

abstract class CartState {}

///Fetching cart info
class CartLoading extends CartState {}


///Cart Error
class CartError extends CartState {
  int errorCode;
  String message;
  CartError({this.errorCode, this.message});
}

///List CartItem
class CartSuccess extends CartState {

  Map<String,CartItem> cartItems;
  CartSuccess({this.cartItems});

}