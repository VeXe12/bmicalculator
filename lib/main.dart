import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(BmiCalculator());
}

class BmiCalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(color: Color(0xFF090909)),
        primaryColor: Color(0xFF090909),
        scaffoldBackgroundColor: Color(0xFF090909),
      ),
      home: InputPage(),
    );
  }
}