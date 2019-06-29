import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_shopping_demo/data/models/category.dart';

class CategoryWidget extends StatelessWidget {

  Category category;

  CategoryWidget({this.category});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      width: width / 5,
      child: Column(
        children: <Widget>[
          AspectRatio(
            aspectRatio: 1,
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Image.network(
                  category.icon),
            ),
          ),
          Text(category.title,
            overflow : TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.body1.copyWith(),)
        ],
      ),
    );
  }
}
