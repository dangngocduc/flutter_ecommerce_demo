import 'package:flutter/material.dart';

class ProductVinIDPriceWidget extends StatefulWidget {
  @override
  _ProductVinIDPriceWidgetState createState() =>
      _ProductVinIDPriceWidgetState();
}

class _ProductVinIDPriceWidgetState extends State<ProductVinIDPriceWidget> {
  bool isShowDetail = false;

  _getExpand(BuildContext context) {
    if (isShowDetail){
      return Container(
        margin: EdgeInsets.only(top: 4),
        child: Text("Số tiền 33.000đ(2%) sẽ được hoàn vào thẻ VinID sau khi giao hàng thành công.", style: Theme.of(context).textTheme.caption,),
      );
    } else {
      return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 4),
      child: Container(
        padding: EdgeInsets.only(left: 0, right: 0, top: 8, bottom: 8),
        decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
                side: BorderSide(width: 0.5, color: Colors.grey[400]),
                borderRadius: BorderRadiusDirectional.all(Radius.circular(8)))),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(12),
              child: Icon(
                Icons.account_balance_wallet,
                size: 24,
              ),
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Giá cho chủ thẻ VinID", style: Theme.of(context).textTheme.body1,),
                  Container(
                    margin: EdgeInsets.only(top: 4),
                    child: Text.rich(TextSpan(
                        children: [
                          TextSpan(text: "1.623.200đ", style: Theme.of(context).textTheme.body2.copyWith(color: Colors.lightGreen[700])),
                          TextSpan(text: "  Tiết kiệm: 33.000đ", style: Theme.of(context).textTheme.caption.copyWith(color: Colors.grey))
                        ]
                    )),
                  ),
                  _getExpand(context)
                ],
              ),
            ),
            IconButton(icon: Icon(Icons.keyboard_arrow_down), onPressed: () {
              if (isShowDetail) {
                setState(() {
                  isShowDetail = false;
                });
              } else {
                setState(() {
                  isShowDetail = true;
                });
              }
            })
          ],
        ),
      ),
    );
  }
}
