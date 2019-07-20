import 'package:flutter/material.dart';
import 'package:flutter_shopping_demo/bloc/cart/cart_bloc.dart';
import 'package:provider/provider.dart';

class IconButtonCart extends StatelessWidget {

  _getBadgeCart(BuildContext context) {
    CartBloc cartBloc = Provider.of(context);
    if (cartBloc.getCounterCart() == 0) {
      return Container();
    } else {
      return Container(
        width: 18,
        height: 18,
        decoration:
        BoxDecoration(shape: BoxShape.circle, color: Colors.red),
        padding: EdgeInsets.all(2),
        child: FittedBox(
          alignment: Alignment.center,
          fit: BoxFit.scaleDown,
          child: Text(
            cartBloc.getCounterCart().toString(),
            style: Theme.of(context)
                .textTheme
                .body2
                .copyWith(color: Colors.white),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 48,
      child: Stack(
        children: <Widget>[
          IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
          Positioned(
              top: 4, right: 4,
              child: _getBadgeCart(context))
        ],
      ),
    );
  }
}
