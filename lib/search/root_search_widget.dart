import 'package:flutter/material.dart';
import 'package:flutter_shopping_demo/bloc/search/bloc.dart';
import 'package:flutter_shopping_demo/theme/dynamic_theme.dart';
import 'package:flutter_shopping_demo/widgets/icon_button_cart.dart';
import 'package:provider/provider.dart';

class RootSearchWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolbarSearchWidget(),
      body: SearchBodyWidget(),
    );
  }
}

class SearchBodyWidget extends StatelessWidget {


  Widget _getSearHistoryWidget(SearHistory history, BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            height: 36,
            padding: EdgeInsets.only(left: 16),
            child: Row(
              children: <Widget>[
                Expanded(child: Text("Lịch sử tìm kiếm", style: Theme.of(context).textTheme.caption.copyWith(
                    color: Theme.of(context).hintColor
                ),)),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 16, right: 16),
            alignment: Alignment.topLeft,
            child: Wrap(
              spacing: 8,
              runAlignment: WrapAlignment.start,
              children: history.keyWords.map((content) {
                return Container(
                  child: Chip(
                      label: Text(content, style: Theme.of(context).textTheme.subtitle.copyWith(
                          color: DynamicTheme.of(context).customColor.colorTextChipSearch
                      )),
                    backgroundColor: Colors.white,
                    elevation: 1,
                  ),
                );
              }).toList(),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            height: 36,
            padding: EdgeInsets.only(left: 16),
            child: Row(
              children: <Widget>[
                Expanded(child: Text("Tìm kiếm phổ biến", style: Theme.of(context).textTheme.caption.copyWith(
                  color: Theme.of(context).hintColor
                ),)),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 16, right: 16),
            alignment: Alignment.topLeft,
            child: Wrap(
              runAlignment: WrapAlignment.start,
              spacing: 8,
              children: history.trending.map((content) {
                return Container(
                  child: Chip(
                    label: Text(content, style: Theme.of(context).textTheme.subtitle.copyWith(
                      color: DynamicTheme.of(context).customColor.colorTextChipSearch
                    )),
                    backgroundColor: Colors.white,
                    elevation: 1,
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SearchBloc searchBloc = Provider.of<SearchBloc>(context);
    if (searchBloc.state is SearHistory) {
      return _getSearHistoryWidget(searchBloc.state, context);
    } else if (searchBloc.state is SearchSuccess) {
      return Container();
    } else {
      return Container();
    }
  }
}


class ToolbarSearchWidget extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).primaryColor,
      elevation: 4,
      child: SafeArea(
          child: Container(
        child: Row(
          children: <Widget>[
            BackButton(
              color: Theme.of(context).colorScheme.onPrimary,
            ),
            Expanded(child: Container(
              margin: EdgeInsets.all(8),
              alignment: Alignment.centerLeft,
              decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusDirectional.all(Radius.circular(4))
                  )
              ),
              child: TextField(
                textAlign: TextAlign.start,
                scrollPadding: EdgeInsets.all(8),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                  alignLabelWithHint: true,
                  border: InputBorder.none,
                  hintText: "Search",
                  hintStyle: Theme.of(context).textTheme.caption.copyWith(color: Colors.grey),
                  enabled: false,
                ),
              ),
            )),
            IconButtonCart(),
            IconButton(
                icon: Icon(
                  Icons.home,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
                onPressed: () {})
          ],
        ),
      )),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(48);
}
