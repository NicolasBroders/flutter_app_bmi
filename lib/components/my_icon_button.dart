import 'package:flutter/material.dart';

class myIconButton extends StatelessWidget {
  final IconData icon;
  final Function onTapFunction;

  myIconButton({this.icon, this.onTapFunction});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        icon,
        size: 18.0,
      ),
      elevation: 0.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      onPressed: onTapFunction,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
