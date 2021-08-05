import 'package:flutter/material.dart';
import 'package:flutter_airbnb_myself/components/common/home_header_form_info.dart';
import 'package:flutter_airbnb_myself/constants.dart';
import 'package:flutter_airbnb_myself/size.dart';
import 'package:flutter_airbnb_myself/style.dart';

class HomeHeaderForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double bodyWidth = MediaQuery.of(context).size.width;
    return Container(
      width: bodyWidth < 420 ? bodyWidth : 420,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Form(
        child: Padding(
          padding: const EdgeInsets.all(gap_l),
          child: Column(
            children: [
              _buildHomeHeadFormTitle(),
              _buildHomeHeadFormExplain(),
              _buildHomeHeadFormField(),
              _buildHomeHeaderFormSubmit(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildHomeHeadFormTitle() {
  return Column(
    children: [
      Text(
        "에어비앤비에서 숙소를 검색하세요.",
        style: h4(),
      ),
      SizedBox(height: gap_s),
    ],
  );
}

Widget _buildHomeHeadFormExplain() {
  return Column(
    children: [
      Text(
        "혼자하는 여행에 적합한 개인실부터 여럿이 함께하는 여행에 좋은 '공간전체' 숙소까지, 에어비엔비에 다 있습니다.",
        style: body1(),
      ),
      SizedBox(height: gap_s),
    ],
  );
}

Widget _buildHomeHeadFormField() {
  return Column(
    children: [
      HomeHeaderFormInfo(title: "위치", hint: "근처 추천 장소"),
      Row(
        children: [
          Expanded(
            child: HomeHeaderFormInfo(
              title: "체크인",
              hint: "날짜입력",
            ),
          ),
          SizedBox(width: gap_xs),
          Expanded(
            child: HomeHeaderFormInfo(
              title: "체크아웃",
              hint: "날짜입력",
            ),
          ),
        ],
      ),
      Row(
        children: [
          Expanded(
            child: HomeHeaderFormInfo(
              title: "성인",
              hint: "2",
            ),
          ),
          SizedBox(width: gap_xs),
          Expanded(
            child: HomeHeaderFormInfo(
              title: "어린이",
              hint: "0",
            ),
          ),
        ],
      )
    ],
  );
}

Widget _buildHomeHeaderFormSubmit() {
  return TextButton(
    onPressed: () {},
    child: Text(
      "검색",
      style: subtitle2(mColor: Colors.white),
    ),
    style: TextButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      backgroundColor: kAccentColor,
      minimumSize: Size(double.infinity, 50),
    ),
  );
}
