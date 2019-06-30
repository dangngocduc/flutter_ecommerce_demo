import 'package:flutter/material.dart';
import 'package:flutter_shopping_demo/account/account_widget.dart';
import 'package:flutter_shopping_demo/carts/carts_widget.dart';
import 'package:flutter_shopping_demo/categories/categories_widget.dart';
import 'package:flutter_shopping_demo/home/home_widget.dart';
import 'package:flutter_shopping_demo/widgets/bottom_item.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {

    return DefaultTabController(length: 4, child: Container(
      child: Column(
        children: <Widget>[
          Flexible(
            child: TabBarView(
              children: [
                HomeWidget(),
                CategoriesWidget(),
                CartsWidget(),
                AccountWidget()
              ],
            ),
          ),
          Material(
            shadowColor: Colors.black,
            shape: BorderDirectional(top: BorderSide(color: Colors.grey[200], width: 1)),
            elevation: 16.0,
            child: SafeArea(child: Container(
              height: 60,
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  Expanded(child: BottomItemWidget(title: "Adayroi", icon: Icons.home, index: 0,)),
                  Expanded(child: BottomItemWidget(title: "Danh Mục", icon: Icons.category, index: 1,)),
                  Expanded(child: BottomItemWidget(title: "Giỏ hàng", icon: Icons.shopping_cart, index: 2,)),
                  Expanded(child: BottomItemWidget(title: "Cá nhân", icon: Icons.account_circle, index: 3,)),
                ],
              ),
            ), bottom: true, top: false,),
          ),
        ],
      ),
    ));
  }
}
