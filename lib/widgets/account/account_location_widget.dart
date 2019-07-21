import 'package:flutter/material.dart';

class AccountLocationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      color: Theme.of(context).cardColor,
      height: 64,
      width: width,
      child: FittedBox(
        alignment: Alignment.centerLeft,
        fit: BoxFit.scaleDown,
        child: Row(
          children: <Widget>[
            Container(
              width: 48,
              height: 48,
              child: Icon(
                Icons.location_on,
                color: Colors.red,
              ),
            ),
            Container(
              width: width - 96,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("khu vực của bạn",
                      style: Theme.of(context).textTheme.caption),
                  Padding(
                    padding: EdgeInsets.only(top: 4),
                    child: Text("Xã Lạc Vệ, Huyện Tiên Du, Tỉnh Bắc Ninh",
                        style: Theme.of(context).textTheme.body1.copyWith(fontWeight: FontWeight.w600)),
                  )
                ],
              ),
            ),
            Container(
              width: 48,
              height: 48,
              child: Icon(
                Icons.keyboard_arrow_right,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
