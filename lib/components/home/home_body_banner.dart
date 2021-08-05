import 'package:flutter/material.dart';
import 'package:flutter_airbnb_myself/size.dart';
import 'package:flutter_airbnb_myself/style.dart';

class HomeBodyBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: gap_m, bottom: gap_m),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              "assets/banner.jpg",
              width: double.infinity,
              height: 320,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 20,
            left: 30,
            child: SizedBox(
              width: 250,
              child: Column(
                children: [
                  _homeBodyBannerTitle(),
                  _homeBodyBannerExplain(),
                  _homebodyBannerButton(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _homeBodyBannerTitle() {
    return Column(
      children: [
        Text(
          "이제, 여행은 가까운 곳에서",
          style: h4(mColor: Colors.white),
        ),
        SizedBox(height: gap_l),
      ],
    );
  }

  Widget _homeBodyBannerExplain() {
    return Column(
      children: [
        Text(
          "새로운 공간에 머물러 보세요. 살아보기, 출장, 여행 등 다양한 목적에 맞는 숙소를 찾아보세요.",
          style: subtitle2(mColor: Colors.white),
        ),
        SizedBox(height: gap_m),
      ],
    );
  }

  Widget _homebodyBannerButton() {
    return TextButton(
      onPressed: () {},
      child: Text(
        "가까운 여행지 둘러보기",
        style: subtitle1(),
      ),
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        backgroundColor: Colors.white,
        minimumSize: Size(200, 50),
      ),
    );
  }
}
