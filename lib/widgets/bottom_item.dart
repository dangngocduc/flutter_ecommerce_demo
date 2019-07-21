import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_shopping_demo/theme/dynamic_theme.dart';


class BottomItemWidget  extends StatefulWidget {
  final IconData icon;
  final String title;
  final int index;
  final int notification;

  BottomItemWidget({this.title, this.icon, this.index, this.notification = 0});

  @override
  _BottomItemWidgetState createState() => _BottomItemWidgetState();
}

class _BottomItemWidgetState extends State<BottomItemWidget> {

@override
Widget build(BuildContext context) {
  TabController controller = DefaultTabController.of(context);
  controller.addListener(() {
    setState(() {

    });
  });

  return InkWell(
    onTap: () {
      controller.index = widget.index;
    },
    child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox.fromSize(
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 6,
                    left: 6,
                    child: Icon(
                      widget.icon,
                      size: 24,
                      color: controller.index == widget.index ? DynamicTheme.of(context).customColor.onBottomAppBarColor : DynamicTheme.of(context).customColor.onBottomAppBarColorDisable,
                  ),),
                  Positioned(
                      top: 0,
                      right: 0,
                      child: Visibility(
                          child: Container(
                            padding: EdgeInsets.all(4),
                            decoration: ShapeDecoration(
                                shape: CircleBorder(),
                                color: Colors.red),
                            child: Text(widget.notification.toString(), style: Theme.of(context).textTheme.caption.copyWith(
                              color: Colors.white
                            ),),
                          ),
                      visible: widget.notification > 0,))
                ],
              ),
              size: Size(32, 32),
            ),
            Container(
              child: Text(
                widget.title,
                style: Theme.of(context).textTheme.caption.copyWith(
                    color: controller.index == widget.index ? DynamicTheme.of(context).customColor.onBottomAppBarColor : DynamicTheme.of(context).customColor.onBottomAppBarColorDisable
                ),
              ),
            )
          ],
        )),
  );
}
}

