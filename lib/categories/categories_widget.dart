import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_shopping_demo/widgets/category_widget_item.dart';

class CategoriesWidget extends StatefulWidget {
  final List<String> categories = [
    "Voucher ưu đãi 50%",
    "Deal du lịch giá rẻ",
    "Vinpearl ưu đãi sốc",
    "Sức khoẻ - Bảo hiểm",
    "Mobile - Tablet",
    "Điện tử - Công nghệ",
    "Điện máy -  Điện gia dụng",
    "Thực phẩm tươi sống",
    "Hàng tiêu dùng",
    "Thời trang",
    "Mỹ phẩm",
    "Mẹ bé",
    "Nội thất nhà cửa"
  ];

  @override
  _CategoriesWidgetState createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(56),
          child: Material(
            elevation: 4,
            color: Colors.red,
            child: SafeArea(
                child: Container(
                    padding: EdgeInsets.fromLTRB(16, 12, 16, 12),
                    height: 56,
                    color: Colors.red,
                    child: Center(
                      child: Text(
                        "Tất cả danh mục",
                        style: Theme.of(context)
                            .textTheme
                            .subhead
                            .copyWith(color: Colors.white),
                      ),
                    ))),
          )),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return CategoryWidgetItem(
            title: widget.categories[index],
          );
        },
        itemCount: widget.categories.length,

      ),
    );
  }
}
