import 'package:flutter/material.dart';

class ProductPriceGroupWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16),
      height: 44,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 24,
            child: FittedBox(
              alignment: Alignment.centerLeft,
              fit: BoxFit.scaleDown,
              child: Text(
                "1.656.200đ",
                style: Theme.of(context)
                    .textTheme
                    .subhead
                    .copyWith(color: Colors.red),
              ),
            ),
          ),
          SizedBox(
            height: 20,
            child: FittedBox(
              alignment: Alignment.centerLeft,
              fit: BoxFit.scaleDown,
              child: Row(
                children: <Widget>[
                  Text(
                    "Giá cũ: 1.656.200đ",
                    style: Theme.of(context)
                        .textTheme
                        .body1
                        .copyWith(color: Colors.grey),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 8),
                    padding: EdgeInsets.only(left: 8, bottom: 2, right: 8, top: 2),
                    decoration: ShapeDecoration(
                        color: Colors.red,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusDirectional.all(
                                Radius.circular(4)))),
                    child: Text(
                      "10%",
                      style: Theme.of(context)
                          .textTheme
                          .caption
                          .copyWith(color: Colors.white, fontWeight: FontWeight.w900),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
