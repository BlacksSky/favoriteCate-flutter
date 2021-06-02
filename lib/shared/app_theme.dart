import 'package:flutter/material.dart';

class ZYAppTheme {
  static final double bodyFontSize = 14;
  static const double smallFontSize = 16;
  static const double normalFontSize = 20;
  static const double largeFontSize = 24;

  static final Color normalTextColors = Colors.red;

  static final ThemeData defaultThemeData = ThemeData(
    primarySwatch: normalTextColors,
    canvasColor: Color.fromRGBO(255, 254, 222, 1),
    textTheme: TextTheme(
      body1: TextStyle(fontSize: bodyFontSize),
      display1: TextStyle(fontSize: smallFontSize),
      display2: TextStyle(fontSize: normalFontSize),
      display3: TextStyle(fontSize: largeFontSize),
    ),
  );


  static final Color darkTextColors = Colors.grey;

    static final ThemeData darkTheme = ThemeData(
    primarySwatch: darkTextColors,
    canvasColor: Color.fromRGBO(255, 254, 222, 1),
    textTheme: TextTheme(
      body1: TextStyle(fontSize: bodyFontSize),
      display1: TextStyle(fontSize: smallFontSize),
      display2: TextStyle(fontSize: normalFontSize),
      display3: TextStyle(fontSize: largeFontSize),
    ),
  );
}
