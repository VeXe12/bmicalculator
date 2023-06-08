import 'package:flutter/material.dart';

import 'constants.dart';
class bottombtn extends StatelessWidget {
  bottombtn({this.ontaop, this.text});
  final Function()? ontaop;
  final String? text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:ontaop,
      child: Container(
        child: Center(child: Text(text! , style: bottom,)),
        color: Colors.deepOrange,
        margin: EdgeInsets.all(10.0),
        padding: EdgeInsets.only(bottom: 10.0),
        width: double.infinity,
        height: kBottomNavigationBarHeight,
      ),
    );
  }
}