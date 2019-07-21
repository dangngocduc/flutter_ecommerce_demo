import 'package:flutter_shopping_demo/data/models/product.dart';

abstract class CartEvent {}

///User add to cart
class AddProductEvent extends CartEvent {
  Product product;
  AddProductEvent({this.product});
}