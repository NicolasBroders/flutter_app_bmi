import 'package:flutter/material.dart';

const textStyle = TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98));

class IdentityWidget extends StatelessWidget {
  final IconData identityIcon;
  final String identityText;

  IdentityWidget({@required this.identityIcon, @required this.identityText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(identityIcon, size: 80.0),
        SizedBox(
          height: 15.0,
        ),
        Text(
          identityText,
          style: textStyle,
        )
      ],
    );
  }
}
