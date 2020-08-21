import 'package:flutter/material.dart';

import '../constants.dart';
import '../components/my_bottom_button.dart';

class ResultScreenArgs {
  final String labelResult;
  final String mesureResult;
  final String descriptionResult;

  ResultScreenArgs(
      {this.mesureResult, this.descriptionResult, this.labelResult});
}

class ResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ResultScreenArgs args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your results',
                style: kTitleResultStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              margin: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: kInactiveCardColor,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                      child: Center(
                    child: Text(
                      args.labelResult.toUpperCase(),
                      style: kLabelResultStyle,
                    ),
                  )),
                  Expanded(
                      child: Center(
                    child: Text(
                      args.mesureResult,
                      style: kResultNumberStyle,
                    ),
                  )),
                  Expanded(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Text(
                          args.descriptionResult,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          MyBottomButton(
            textButton: 'Re-Calculate',
            onTapFunction: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
