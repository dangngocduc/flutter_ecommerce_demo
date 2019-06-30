import 'package:flutter/material.dart';
import 'package:flutter_shopping_demo/data/models/menu_item.dart';

class AccountGridMenuItemWidget extends StatelessWidget {
  final items = [
    MenuItem(icon: Icons.pin_drop, title: "Sổ địa chỉ \ncủa bạn"),
    MenuItem(icon: Icons.restaurant_menu, title: "Đơn hàng \ncủa bạn"),
    MenuItem(icon: Icons.credit_card, title: "Quản lý \nthẻ VinID"),
    MenuItem(icon: Icons.account_circle, title: "Thông tin \ntài khoản"),
    MenuItem(icon: Icons.local_cafe, title: "Thông tin \nAdayroi"),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
        delegate: SliverChildBuilderDelegate((context, index) {
          return AccountMenuItemWidget(item: items[index],);
        }, childCount: items.length),
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, childAspectRatio: 4/3.0 ));
  }
}

class AccountMenuItemWidget extends StatelessWidget {
  final MenuItem item;

  AccountMenuItemWidget({@required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 0.25, color: Colors.grey[200])
        ),
        padding: EdgeInsets.all(8),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(item.icon, color: Colors.red,),
              Padding(
                padding: EdgeInsets.only(top: 8, left: 16, right: 16),
                child: Text(
                  item.title,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.caption.copyWith(fontWeight: FontWeight.w600, color: Colors.black),
                ),
              )
            ],
          ),
        ));
  }
}
