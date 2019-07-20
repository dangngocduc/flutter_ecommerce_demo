import 'package:flutter/material.dart';
import 'package:flutter_shopping_demo/bloc/cart/bloc.dart';
import 'package:flutter_shopping_demo/data/models/banner.dart';
import 'package:flutter_shopping_demo/data/models/product.dart';
import 'package:flutter_shopping_demo/widgets/icon_button_cart.dart';
import 'package:flutter_shopping_demo/widgets/products/product_name_group.dart';
import 'package:flutter_shopping_demo/widgets/products/product_price_group.dart';
import 'package:flutter_shopping_demo/widgets/products/product_vinid_price.dart';
import 'package:flutter_shopping_demo/widgets/slider/slide_banner.dart';
import 'package:provider/provider.dart';

class ProductDetailWidget extends StatefulWidget {
  @override
  _ProductDetailWidgetState createState() => _ProductDetailWidgetState();
}

class _ProductDetailWidgetState extends State<ProductDetailWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: SafeArea(
              child: Material(
            elevation: 2,
            child: Row(
              children: <Widget>[
                IconButton(icon: Icon(Icons.close), onPressed: () {
                  Navigator.pop(context);
                }),
                Spacer(),
                IconButtonCart(),
                IconButton(icon: Icon(Icons.home), onPressed: () {}),
              ],
            ),
          )),
          preferredSize: Size.fromHeight(48)),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: SlideWidget(
                [
                  AppBanner(link: "https://media-ak.static-adayroi.com/500_500/70/h3d/h00/15070824529950.jpg", ratio: 120.0/90),
                  AppBanner(link: "https://media-ak.static-adayroi.com/500_500/70/h3d/h00/15070824529950.jpg", ratio: 120.0/90),
                  AppBanner(link: "https://media-ak.static-adayroi.com/500_500/70/h3d/h00/15070824529950.jpg", ratio: 120.0/90),
                  AppBanner(link: "https://media-ak.static-adayroi.com/500_500/70/h3d/h00/15070824529950.jpg", ratio: 120.0/90),
                ]
            ),
          ),
          SliverToBoxAdapter(
            child: ProductNameGroupWidget(),
          ),
          SliverToBoxAdapter(
            child: ProductPriceGroupWidget(),
          ),
          SliverToBoxAdapter(
            child: ProductVinIDPriceWidget(),
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: 48,
        color: Colors.white,
        padding: EdgeInsets.only(left: 16, right: 16, top: 4, bottom: 4),
        child: OutlineButton(
            onPressed: () {
              Provider.of<CartBloc>(context).dispatch(
                  AddProductEvent(product: TestProduct(id: "123"))
              );
            },
            child: Text("Add to cart")),
      ),
    );
  }
}
