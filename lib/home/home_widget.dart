import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_shopping_demo/data/models/banner.dart';
import 'package:flutter_shopping_demo/data/models/category.dart';
import 'package:flutter_shopping_demo/widgets/category_widget.dart';
import 'package:flutter_shopping_demo/widgets/product_widget.dart';
import 'package:flutter_shopping_demo/widgets/slider/group_search_trend.dart';
import 'package:flutter_shopping_demo/widgets/slider/slide_banner.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.
        fromHeight(56),
        child: Material(
          elevation: 4,
          color: Colors.red,
          child: SafeArea(
              child: Container(
                padding: EdgeInsets.fromLTRB(16, 12, 16, 12),
                height: 56,
                color: Colors.red,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadiusDirectional.all(Radius.circular(16))
                  ),
                  child: Row(
                    children: <Widget>[

                      Padding(padding: EdgeInsets.fromLTRB(12, 4, 8, 4), child: Icon(Icons.search, size: 16,),),
                      Text("Tìm kiếm", style: Theme.of(context).textTheme.caption,)
                    ],
                  ),
                )
              )),
        )
      ),
      body: HomeBodyWidget(),
    );
  }
}

class HomeBodyWidget extends StatefulWidget {
  final List<Category> listCategories = [
    Category(title: "Deal hot", icon: "https://media-ak.static-adayroi.com/sys_master/images/banner/png/deal-ho-moi-ngay-1-min.png"),
    Category(title: "VinFast", icon: "https://media-ak.static-adayroi.com/sys_master/images/banner/png/vinfast-icon-1-min.png"),
    Category(title: "F1", icon: "https://media-ak.static-adayroi.com/sys_master/images/banner/png/dat-ve-f1-1-min.png"),
    Category(title: "Tiêu dùng", icon: "https://media-ak.static-adayroi.com/sys_master/images/banner/png/tieu-dung-xanh-a-1-min.png"),
    Category(title: "Mã ưu đãi", icon: "https://media-ak.static-adayroi.com/sys_master/images/banner/png/ma-uu-dai-1-min.png"),
    Category(title: "Nạp thẻ", icon: "https://media-ak.static-adayroi.com/sys_master/images/banner/png/the-cao-online-1-min.png"),
    Category(title: "Vinmect", icon: "https://media-ak.static-adayroi.com/sys_master/images/h10/h4a/17483275730974.png"),
    Category(title: "Buffet lẩu", icon: "https://media-ak.static-adayroi.com/sys_master/images/banner/png/buffet-5-sao-1-min.png"),
    Category(title: "Deal hot", icon: "https://media-ak.static-adayroi.com/sys_master/images/banner/png/deal-ho-moi-ngay-1-min.png"),
    Category(title: "VinFast", icon: "https://media-ak.static-adayroi.com/sys_master/images/banner/png/vinfast-icon-1-min.png"),

  ];

  @override
  _HomeBodyWidgetState createState() => _HomeBodyWidgetState();
}

class _HomeBodyWidgetState extends State<HomeBodyWidget> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SlideWidget(
                [
                  AppBanner(link: "https://media-ak.static-adayroi.com/0_0/80/images/h5a/h78/26500560257054.jpg", ratio: 103.0/40),
                  AppBanner(link: "https://media-ak.static-adayroi.com/0_0/80/images/hc0/h00/26500560355358.jpg", ratio: 103.0/40),
                  AppBanner(link: "https://media-ak.static-adayroi.com/0_0/80/images/h46/h93/26500560486430.jpg", ratio: 103.0/40),
                  AppBanner(link: "https://media-ak.static-adayroi.com/sys_master/images/hd4/h4e/26500560683038.jpg", ratio: 103.0/40),
                ]
              ),
            ),
            SliverGrid(
                delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return CategoryWidget(category: widget.listCategories[index],);
                    },
                  childCount: widget.listCategories.length
                ),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                  childAspectRatio: (width/5)/(width/5 + 32)
                )),
            SliverToBoxAdapter(
              child: GroupSearchTrendWidget(),
            ),
            SliverToBoxAdapter(
              child: SlideWidget(
                  [
                    AppBanner(link: "https://media-ak.static-adayroi.com/0_0/80/images/hc0/h00/26500560355358.jpg", ratio: 103.0/40),
                    AppBanner(link: "https://media-ak.static-adayroi.com/0_0/80/images/h46/h93/26500560486430.jpg", ratio: 103.0/40),
                  ]
              ),
            ),
            ProductsGroupListHoz(),
            SliverToBoxAdapter(
              child: SlideWidget(
                  [
                    AppBanner(link: "https://media-ak.static-adayroi.com/0_0/80/images/h46/h93/26500560486430.jpg", ratio: 103.0/40),
                    AppBanner(link: "https://media-ak.static-adayroi.com/sys_master/images/hd4/h4e/26500560683038.jpg", ratio: 103.0/40),
                  ]
              ),
            ),
            ProductsGroupListHoz(),

          ]
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}




