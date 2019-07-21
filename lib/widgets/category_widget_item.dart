import 'package:flutter/material.dart';

class CategoryWidgetItem extends StatelessWidget {
  final String title;

  CategoryWidgetItem({this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(this.title),
      trailing: Icon(Icons.arrow_forward_ios),
    );
  }
}
