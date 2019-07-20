import 'package:flutter_shopping_demo/data/models/product.dart';

class CartEvent {

}

class AddProductEvent extends CartEvent {
  Product product;
  AddProductEvent({this.product});
}