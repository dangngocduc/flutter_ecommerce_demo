import 'package:flutter/material.dart';

class GroupSearchTrendWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      decoration: ShapeDecoration(shape: RoundedRectangleBorder(
          side: Divider.createBorderSide(context)
      )),
      height: 64*2.0 + 36,
      child: Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.only(left: 16),
          child: SizedBox(
            height: 36,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text("Tìm kiếm phổ biến", style: Theme.of(context).textTheme.body2,),
            ),
          ),),
          Wrap(
            children: <Widget>[
              SearchTrendWidget(),
              SearchTrendWidget(),
              SearchTrendWidget(),
              SearchTrendWidget(),
            ],

          )
        ],
      ),
    );
  }
}

class SearchTrendWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      decoration: ShapeDecoration(shape: RoundedRectangleBorder(
          side: Divider.createBorderSide(context)
      )),
      padding: EdgeInsets.fromLTRB(16, 4, 8, 4),
      height: 64,
      width: width/2.0,
      child: Row(
        children: <Widget>[
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("tra xanh"),
              Text("520 tra xanh"),
            ],
          )),
          SizedBox(
            width: 48,
            height: 48,
            child: Image.network(
                "https://media-ak.static-adayroi.com/64_64/90/hac/h16/17196802965534.jpg"),
          )
        ],
      ),
    );
  }
}
