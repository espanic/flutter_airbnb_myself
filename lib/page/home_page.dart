import 'package:flutter/material.dart';
import 'package:flutter_airbnb_myself/components/home/home_body.dart';
import 'package:flutter_airbnb_myself/components/home/home_header.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        HomeHeader(),
        HomeBody(),
      ],
    );
  }
}
