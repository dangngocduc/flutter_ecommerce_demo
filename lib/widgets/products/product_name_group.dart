import 'package:flutter/material.dart';

class ProductNameGroupWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16),
      height: 56,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(child: Text("01 Ngày Vui Chơi Thỏa Thích Tại Flamingo Đại Lải Resort 5* - Gồm Bữa Ăn Chính",
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: Theme.of(context).textTheme.body1.copyWith(fontWeight: FontWeight.w600))),
          IconButton(icon: Icon(Icons.shuffle), onPressed: (){})
        ],
      ),
    );
  }
}
