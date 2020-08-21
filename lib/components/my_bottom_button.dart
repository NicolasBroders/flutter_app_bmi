import 'package:flutter/material.dart';

import '../constants.dart';

class MyBottomButton extends StatelessWidget {
  final String textButton;
  final Function onTapFunction;

  MyBottomButton({this.textButton, this.onTapFunction});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapFunction,
      child: Container(
        child: Center(
          child: Text(
            textButton,
            style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.w400),
          ),
        ),
        color: kPinkColor,
        width: double.infinity,
        height: kHeightContainer,
      ),
    );
  }
}
