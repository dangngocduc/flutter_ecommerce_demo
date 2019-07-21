import 'package:flutter/material.dart';
import 'package:flutter_shopping_demo/theme/dynamic_theme.dart';

class AccountHeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: AspectRatio(
            aspectRatio: 919 / 570.0,
            child: Stack(
              children: <Widget>[
                Positioned(
                    top: 0,
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/background_material.jpg"),
                          fit: BoxFit.cover)),
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn-images-1.medium.com/fit/c/64/64/1*S0gx2lqgRe2m2f3uGa6-Dw.jpeg"))),
                            width: 48,
                            height: 48,
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 8),
                            child: Text("dangngocduc", style: Theme.of(context).textTheme.body2.copyWith(color: Colors.white),),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 8),
                            padding: EdgeInsets.only(top: 4, bottom: 4, left: 16, right: 16),
                            decoration: BoxDecoration(
                                color: Colors.black54,
                                borderRadius: BorderRadiusDirectional.all(Radius.circular(12))
                            ),
                            height: 24,
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Row(
                                children: <Widget>[
                                  Icon(Icons.monetization_on, color: Colors.yellow, size: 16,),
                                  Text("  27 Điểm VinID", style: Theme.of(context).textTheme.caption.copyWith(color: Colors.white),)
                                ],
                              ),
                            ),
                          )
                        ],

                      ),
                    ),
                  ),
                )),
                Positioned(
                    right: 0,
                    top: 0,
                    child: SafeArea(child: SizedBox.fromSize(
                      child: IconButton(
                          icon: Icon(Icons.brightness_6),
                          onPressed: () {
                            DynamicTheme.of(context).changeTheme();
                          }),
                      size: Size(48, 48),
                    ))
                )
              ],
            )));
  }
}
