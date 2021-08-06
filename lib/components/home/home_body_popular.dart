import 'package:flutter/material.dart';
import 'package:flutter_airbnb_myself/size.dart';
import 'package:flutter_airbnb_myself/style.dart';

class HomeBodyPopular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getBodyWidth(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "한국 숙소에 직접 다녀간 게스트의 후기",
            style: h5(),
          ),
          Text(
            "게스트 후기 2,500,000이상 평균 평점 4.7점(5점 만점)",
            style: body1(),
          ),
          SizedBox(height: gap_m),
        ],
      ),
    );
  }
}
