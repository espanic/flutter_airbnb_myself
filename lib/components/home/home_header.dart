import 'package:flutter/material.dart';
import 'package:flutter_airbnb_myself/components/home/home_header_appbar.dart';
import 'package:flutter_airbnb_myself/components/home/home_header_form.dart';
import 'package:flutter_airbnb_myself/size.dart';

class HomeHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: headerHeight,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/background.jpeg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          HomeHeaderAppbar(),
          Align(alignment: Alignment(-0.6, 0), child: HomeHeaderForm()),
        ],
      ),
    );
  }
}
