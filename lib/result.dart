import 'package:bmicalculator/reuseable_card.dart';
import 'package:flutter/material.dart';

import 'bottombtm.dart';
import 'constants.dart';

class Result extends StatelessWidget {
  Result({required this.tips,required this. bminum,required this. oneword});
  final String bminum;
  final String oneword;
  final String tips;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Results"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
              child: Container(
                padding: EdgeInsets.all(10.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your result',
                  style: title,
                ),
              )),
          Expanded(
            flex: 5,
            child: reuse_card(
              colour: activeCardColor,
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    oneword.toUpperCase(),
                    style: resulttextstyle,
                  ),
                  Text(
                    bminum,
                    style: eboldtext,
                  ),
                  Text(
                    tips,
                    style: kbody,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          bottombtn(
            text: "Re-Calculate",
            ontaop: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}