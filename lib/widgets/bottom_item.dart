import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class BottomItemWidget  extends StatefulWidget {
  final IconData icon;
  final String title;
  final int index;

  BottomItemWidget({this.title, this.icon, this.index});

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
            Icon(
              widget.icon,
              size: 24,
              color: controller.index == widget.index ? Colors.red : Colors.grey,
            ),
            Padding(
              padding: EdgeInsets.only(top: 4),
              child: Text(
                widget.title,
                style: Theme.of(context).textTheme.caption.copyWith(
                    color: controller.index == widget.index ? Colors.red : Colors.grey
                ),
              ),
            )
          ],
        )),
  );
}
}

