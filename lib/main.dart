import 'package:covid_19_ui/constant.dart';
import 'package:flutter/material.dart';
import './home_screen.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'COVID 19',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        fontFamily: 'Poppins',
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: kBodyTextColor,
          ),
        ),
      ),
      home: HomeScreen(),
    ),
  );
}
