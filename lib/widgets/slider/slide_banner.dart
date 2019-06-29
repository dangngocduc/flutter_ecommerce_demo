import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_shopping_demo/data/models/banner.dart';

class SlideWidget extends StatefulWidget {
  List<AppBanner> _banners;
  SlideWidget(List<AppBanner> banner) {
    this._banners = banner;
  }

  @override
  _SlideWidgetState createState() => _SlideWidgetState();
}

class _SlideWidgetState extends State<SlideWidget>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController =
        TabController(length: widget._banners.length, vsync: this);
    return AspectRatio(
      aspectRatio: widget._banners.first.ratio,
      child: Material(
        elevation: 2.0,
        child: TabBarView(
          children: widget._banners.map((banner) {
            return BannerWidget(
              banner: banner,
            );
          }).toList(),
          controller: tabController,
        ),
      ),
    );
  }
}

class BannerWidget extends StatelessWidget {
  final AppBanner banner;
  BannerWidget({this.banner});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: banner.ratio,
      child: Image.network(banner.link),
    );
  }
}
