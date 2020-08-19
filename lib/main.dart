import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E22),
        scaffoldBackgroundColor: Color(0xFF0A0E22),
        appBarTheme: AppBarTheme(
          elevation: 9.0,
        ),
      ),
      home: InputPage(),
    );
  }
}
