import 'package:flutter/material.dart';
import 'package:flutter_shopping_demo/detail/product_detail_widget.dart';

class ProductWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return InkWell(
      child: Container(
        decoration: ShapeDecoration(shape: RoundedRectangleBorder(
            side: Divider.createBorderSide(context)
        )),
        padding: EdgeInsets.all(8),
        width: width * 0.4,
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Column(
            children: <Widget>[
              SizedBox(
                width: width * 0.4,
                height: width * 0.4,
                child: Image.network(
                  "https://cdn.tgdd.vn/Products/Images/42/114115/iphone-x-64gb-1-400x460-1-400x460.png",),
              ),
              SizedBox(
                width: width * 0.36,
                height: 32,
                child: Text(
                  "Bàn ủi hơi nước Perfect JK9518 ",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: Theme.of(context).textTheme.body1.copyWith(fontWeight: FontWeight.w300),
                ),

              ),
              SizedBox(
                  width: width * 0.36,
                  height: 18,
                  child: FittedBox(
                    alignment: Alignment.centerLeft,
                    fit: BoxFit.scaleDown,
                    child: Text(
                        "179.000đ",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.body2.copyWith(color: Colors.red, fontWeight: FontWeight.w800)
                    ),
                  )
              ),
              SizedBox(
                  width: width * 0.36,
                  height: 18,
                  child: FittedBox(
                    alignment: Alignment.centerLeft,
                    fit: BoxFit.scaleDown,
                    child:  Container(
                      child: Row(
                        children: <Widget>[
                          Text(
                              "12.000đ",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: Theme.of(context).textTheme.caption.copyWith(color: Colors.grey, fontWeight: FontWeight.w300)
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadiusDirectional.all(Radius.circular(4.0))
                            ),
                            margin: EdgeInsets.only(left: 8),
                            padding: EdgeInsets.fromLTRB(4, 0, 4, 0),
                            child: Text(
                                "10%",
                                style: Theme.of(context).textTheme.caption.copyWith(color: Colors.white)
                            ),
                          )
                        ],
                      ),
                    ),
                  )
              ),

              SizedBox(
                height: 24,
                width: width * 0.36,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(12, 4, 12, 4),
                    decoration: BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadiusDirectional.all(Radius.circular(4))),
                    child: Row(
                      children: <Widget>[
                        Image.network("https://vinid.net/wp-content/themes/vinid/assets/img/logo.png", width: 32,),
                        Text(
                            "  Hoàn 7.000đ",
                            style: Theme.of(context).textTheme.caption.copyWith(color: Colors.black, fontWeight: FontWeight.w300)
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) {
              return ProductDetailWidget();
            },
        ), );
      },
    );
  }
}

class ProductsGroupListHoz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SliverToBoxAdapter(
      child: Container(
        height: width * 0.4 + 32 + 24 + 18 + 24,
        child: ListView.custom(
            scrollDirection: Axis.horizontal,
            childrenDelegate: SliverChildListDelegate([
              ProductWidget(),
              ProductWidget(),
              ProductWidget(),
              ProductWidget(),
              ProductWidget(),
              ProductWidget(),
              ProductWidget(),
            ])),
      ),
    );
  }
}
