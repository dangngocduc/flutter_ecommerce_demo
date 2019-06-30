import 'package:flutter/material.dart';

class CategoryWidgetItem extends StatelessWidget {
  final String title;

  CategoryWidgetItem({this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16),
      height: 48,
      child: Row(
        children: <Widget>[
          Text(title, style: Theme.of(context).textTheme.body2,),
          Spacer(),
          SizedBox(width: 48, height: 48, child: Icon(Icons.keyboard_arrow_right),)
        ],
      ),
      decoration: BoxDecoration(
        border: BorderDirectional(bottom: BorderSide(width: 0.5, color: Colors.grey[200]))
      ),
    );
  }
}
