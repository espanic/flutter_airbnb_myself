import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_airbnb_myself/components/home/home_body_banner.dart';
import 'package:flutter_airbnb_myself/components/home/home_body_popular.dart';
import 'package:flutter_airbnb_myself/components/home/home_body_popular_item.dart';
import 'package:flutter_airbnb_myself/size.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double bodyWidth = getBodyWidth(context);
    return Align(
      child: SizedBox(
        width: bodyWidth,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeBodyBanner(),
            HomeBodyPopular(),
            HomeBodyPopularItem(),
          ],
        ),
      ),
    );
  }
}
