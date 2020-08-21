import 'package:flutter/material.dart';

import '../constants.dart';

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
          style: kTextStyle,
        )
      ],
    );
  }
}
