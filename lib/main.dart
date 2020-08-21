import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_bmi/screens/result_screen.dart';

import 'screens/input_screen.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        '/result_screen': (context) => ResultScreen(),
      },
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E22),
        scaffoldBackgroundColor: Color(0xFF0A0E22),
        appBarTheme: AppBarTheme(
          elevation: 9.0,
        ),
      ),
    );
  }
}
