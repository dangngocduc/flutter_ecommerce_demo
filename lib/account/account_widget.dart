import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_shopping_demo/widgets/account/account_grid_menu_item.dart';
import 'package:flutter_shopping_demo/widgets/account/account_header_widget.dart';
import 'package:flutter_shopping_demo/widgets/account/account_location_widget.dart';

class AccountWidget extends StatefulWidget {
  @override
  _AccountWidgetState createState() => _AccountWidgetState();
}

class _AccountWidgetState extends State<AccountWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: CustomScrollView(
          slivers: <Widget>[
            AccountHeaderWidget(),
            SliverToBoxAdapter(
              child:  Divider(
                height: 12,
              ),
            ),
            SliverToBoxAdapter(
              child: AccountLocationWidget(),
            ),
            SliverToBoxAdapter(
              child:  Divider(
                height: 12,
              ),
            ),
            AccountGridMenuItemWidget()
          ],
        ),
      ),
    );
  }
}
