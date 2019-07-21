import 'package:flutter/material.dart';
import 'package:flutter_shopping_demo/account/account_widget.dart';
import 'package:flutter_shopping_demo/bloc/cart/cart_bloc.dart';
import 'package:flutter_shopping_demo/carts/carts_widget.dart';
import 'package:flutter_shopping_demo/categories/categories_widget.dart';
import 'package:flutter_shopping_demo/home/home_widget.dart';
import 'package:flutter_shopping_demo/theme/dynamic_theme.dart';
import 'package:flutter_shopping_demo/widgets/bottom_item.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  SharedPreferences _sharedPreferences = await SharedPreferences.getInstance();
  runApp(MyApp(sharedPreferences: _sharedPreferences));
}

class MyApp extends StatelessWidget {

  final SharedPreferences sharedPreferences;

  MyApp({@required this.sharedPreferences});

  ThemeData getThemeData(isLightTheme) {
    if (isLightTheme) {
      return ThemeData.light().copyWith(
          primaryColor: Colors.red[900],
          hintColor: Colors.grey,
          cardColor: Colors.white,
          bottomAppBarColor: Colors.white
      );
    } else {
      return ThemeData.dark().copyWith(
          primaryColor: Color(0xff141d26),
          hintColor: Colors.grey,
          cardColor: Color(0xff243447),
          scaffoldBackgroundColor: Color(0xff243447),
          bottomAppBarColor: Color(0xff141d26),
      );

    }
  }

  CustomColor getCustomColor(isLightTheme) {
    if (isLightTheme) {
      return CustomColor(
          onBottomAppBarColor: Colors.red[900],
          onBottomAppBarColorDisable: Colors.grey);
    } else {
      return CustomColor(
          onBottomAppBarColor: Colors.white,
          onBottomAppBarColorDisable: Colors.grey
      );
    }
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CartBloc>.value(value: CartBloc())
      ],
      child: DynamicTheme(
        child: RootWidget(),
        data: (isLightTheme) {
          return getThemeData(isLightTheme);
        },
        customColorBuilder: (isLightTheme) {
          return getCustomColor(isLightTheme);
        } ,
        prefs: sharedPreferences,
      ),
    );
  }
}


class RootWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: DynamicTheme.of(context).lightTheme,
        builder: (context, islight, _) {
            return MaterialApp(
              theme: DynamicTheme.of(context).themeData,
              routes: {
                '/' : (context) {
                  return HomePage();
                },
              },
              initialRoute: '/',
            );
        });
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
    CartBloc cartBloc = Provider.of<CartBloc>(context);

    return DefaultTabController(
        length: 4, child: Scaffold(
      body: Container(
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
              color: Theme.of(context).bottomAppBarColor,
              shadowColor: Colors.black,
              elevation: 4.0,
              child: SafeArea(child: Container(
                height: 60,
                child: Row(
                  children: <Widget>[
                    Expanded(child: BottomItemWidget(title: "Adayroi", icon: Icons.home, index: 0)),
                    Expanded(child: BottomItemWidget(title: "Danh Mục", icon: Icons.category, index: 1,)),
                    Expanded(child: BottomItemWidget(title: "Giỏ hàng", icon: Icons.shopping_cart, index: 2, notification: cartBloc.getCounterCart(),)),
                    Expanded(child: BottomItemWidget(title: "Cá nhân", icon: Icons.account_circle, index: 3,)),
                  ],
                ),
              ), bottom: true, top: false,),
            ),
          ],
        ),
      ),
    ));
  }
}
