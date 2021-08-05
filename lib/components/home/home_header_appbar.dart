import 'package:flutter/material.dart';
import 'package:flutter_airbnb_myself/constants.dart';
import 'package:flutter_airbnb_myself/size.dart';
import 'package:flutter_airbnb_myself/style.dart';

class HomeHeaderAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(gap_m),
      child: Row(
        children: [
          Image.asset(
            "assets/logo.png",
            color: kAccentColor,
            width: 30,
            height: 30,
          ),
          SizedBox(
            width: gap_s,
          ),
          Text(
            "airbnb",
            style: h5(mColor: Colors.white),
          ),
          Spacer(),
          TextButton(
            onPressed: () {},
            child: Text(
              "회원가입",
              style: subtitle1(mColor: Colors.white),
            ),
          ),
          SizedBox(
            width: gap_s,
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "로그인",
              style: subtitle1(mColor: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
