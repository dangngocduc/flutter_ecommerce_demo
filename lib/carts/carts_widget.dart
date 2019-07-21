import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_shopping_demo/widgets/cart_item_widget.dart';

class CartsWidget extends StatefulWidget {
  @override
  _CartsWidgetState createState() => _CartsWidgetState();
}

class _CartsWidgetState extends State<CartsWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(56),
          child: Material(
            elevation: 4,
            color: Theme.of(context).primaryColor,
            child: SafeArea(
                child: Container(
                    padding: EdgeInsets.fromLTRB(16, 12, 16, 12),
                    height: 56,
                    color: Theme.of(context).primaryColor,
                    child: Center(
                      child: Text(
                        "Giỏ hàng của bạn",
                        style: Theme.of(context)
                            .textTheme
                            .subhead
                            .copyWith(color: Colors.white),
                      ),
                    ))),
          )),
      body: Container(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return CartItemWidget();
          },
          itemCount: 10,
        ),
      ),
    );
  }
}
