import 'package:flutter/material.dart';

class CartItemWidget extends StatefulWidget {
  @override
  _CartItemWidgetState createState() => _CartItemWidgetState();
}

class _CartItemWidgetState extends State<CartItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, top: 4, bottom: 16),
      decoration: BoxDecoration(
        border: BorderDirectional(bottom: BorderSide(width: 0.5, color: Colors.grey[200]))
      ),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 64,
            height: 64,
            child: Image.network(
                "https://media-ak.static-adayroi.com/480_360/70/h27/h5e/17082953728030.jpg"),
          ),
          Flexible(
              child: Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Dưỡng Da Trắng Sáng Với Vitamin C - Viện Thẩm Mỹ Oracle",
                  style: Theme.of(context).textTheme.body2,
                ),
                Container(
                  margin: EdgeInsets.only(top: 4),
                  padding: EdgeInsets.fromLTRB(8, 2, 8, 2),
                  decoration: ShapeDecoration(
                      color: Colors.grey[500],
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadiusDirectional.all(Radius.circular(4)))),
                  child: Text(
                    "E-voucher",
                    style: Theme.of(context).textTheme.caption.copyWith(
                        fontWeight: FontWeight.w900, color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 24,
                  child: FittedBox(
                    alignment: Alignment.centerLeft,
                    fit: BoxFit.scaleDown,
                    child: Text(
                      "2.390.000",
                      style: Theme.of(context).textTheme.caption.copyWith(
                          color: Colors.red, fontWeight: FontWeight.w800),
                    ),
                  ),
                ),
                SizedBox(
                  height: 36,
                  child: Row(
                    children: <Widget>[
                      CounterCartWidget(),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.fromLTRB(4, 4, 4, 4),
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadiusDirectional.all(Radius.circular(4))
                        ),
                        child: Icon(Icons.restore_from_trash, color: Colors.black54, size: 20,),
                      )
                    ],
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}


class CounterCartWidget extends StatelessWidget {
  final Color colorBorder = Colors.grey[300];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      child: Row(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                border: Border.fromBorderSide(BorderSide(color: colorBorder, width: 0.5)),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4),
                    bottomLeft: Radius.circular(4))),
            width: 48,
            height: 36,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Icon(
                Icons.remove,
                size: 20,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border: BorderDirectional(
                    top: BorderSide(color: colorBorder, width: 0.5),
                    bottom: BorderSide(color: colorBorder, width: 0.5))),
            width: 64,
            height: 36,
            child: Center(
              child: Text("1"),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.fromBorderSide(BorderSide(color: colorBorder, width: 0.5)),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(4),
                    bottomRight: Radius.circular(4))),
            width: 48,
            height: 36,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Icon(
                Icons.remove,
                size: 20,
              ),
            ),
          )
        ],
      ),
    );
  }
}
