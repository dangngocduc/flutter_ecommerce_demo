import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      color: Colors.white,
      width: width * 0.4,
      child: Column(
        children: <Widget>[
          SizedBox(
            width: width * 0.4,
            height: width * 0.4,
            child: Image.network(
                "https://media-ak.static-adayroi.com/240_240/70/h03/hc5/26394022641694.jpg"),
          ),
          SizedBox(
            width: width * 0.36,
            height: 32,
            child: Text(
              "Bàn ủi hơi nước Perfect JK9518 ",
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: Theme.of(context).textTheme.body1,
            ),

          ),
          SizedBox(
            width: width * 0.36,
            height: 24,
            child: Align(
              alignment: Alignment.centerLeft,
                child : Text(
                    "179.000đ",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: Theme.of(context).textTheme.body2.copyWith(color: Colors.red)
                ),
            )
          ),
          SizedBox(
              width: width * 0.36,
              height: 18,
              child: Container(
                child: Row(
                  children: <Widget>[
                    Text(
                        "12.000đ",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.body1.copyWith(color: Colors.grey)
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
              )
          ),
        ],
      ),
    );
  }
}

class ProductsGroupListHoz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SliverToBoxAdapter(
      child: Container(
        height: width * 0.4 + 32 + 24 + 18,
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
