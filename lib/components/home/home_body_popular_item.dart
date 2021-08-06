import 'package:flutter/material.dart';
import 'package:flutter_airbnb_myself/size.dart';

class HomeBodyPopularItem extends StatelessWidget {
  final ItemPic = ["p1.jpeg", "p2.jpeg", "p3.jpeg"];

  @override
  Widget build(BuildContext context) {
    double popularItemWidth = getBodyWidth(context) / 3 - 5;
    return Wrap(
      children: [
        _item(0, popularItemWidth),
        SizedBox(width: 5),
        _item(1, popularItemWidth),
        SizedBox(width: 5),
        _item(2, popularItemWidth),
      ],
    );
  }

  Widget _item(int id, double width) {
    return Container(
      constraints: BoxConstraints(minWidth: 300),
      child: SizedBox(
        width: width > 420 ? width : 420,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                ItemPic[id],
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
