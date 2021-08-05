import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_airbnb_myself/size.dart';
import 'package:flutter_airbnb_myself/style.dart';

class HomeHeaderFormInfo extends StatelessWidget {
  final String title;
  final String hint;
  const HomeHeaderFormInfo({required this.title, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: gap_s),
      child: Stack(
        children: [
          TextFormField(
            textAlignVertical: TextAlignVertical.bottom,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(top: 30, bottom: 10, left: 20),
              hintText: hint,
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: 8,
            child: Text(
              title,
              style: overLine(),
            ),
          ),
        ],
      ),
    );
  }
}
