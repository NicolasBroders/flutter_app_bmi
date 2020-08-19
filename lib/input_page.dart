import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'reusable_card.dart';
import 'identity_widget.dart';

const double heightContainer = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  //1 = male, 2 = female
  void updateIconBackgroundColor(int gender) {
    if (gender == 1) {
      if (maleCardColor == inactiveCardColor) {
        maleCardColor = activeCardColor;
        femaleCardColor = inactiveCardColor;
      } else {
        maleCardColor = inactiveCardColor;
      }
    }
    if (gender == 2) {
      if (femaleCardColor == inactiveCardColor) {
        femaleCardColor = activeCardColor;
        maleCardColor = inactiveCardColor;
      } else {
        femaleCardColor = inactiveCardColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateIconBackgroundColor(1);
                      });
                    },
                    child: ReusableCard(
                      colour: maleCardColor,
                      childCard: IdentityWidget(
                        identityIcon: FontAwesomeIcons.mars,
                        identityText: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateIconBackgroundColor(2);
                      });
                    },
                    child: ReusableCard(
                      colour: femaleCardColor,
                      childCard: IdentityWidget(
                        identityIcon: FontAwesomeIcons.venus,
                        identityText: 'FEMALE',
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          ReusableCard(colour: activeCardColor),
          Expanded(
            child: Row(
              children: [
                ReusableCard(colour: activeCardColor),
                ReusableCard(colour: activeCardColor),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            width: double.infinity,
            height: heightContainer,
          ),
        ],
      ),
    );
  }
}
