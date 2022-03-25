import 'package:flutter/material.dart';

bool light = true;

ThemeData lighttheme = ThemeData(

  accentColor: Colors.pink,
  brightness: Brightness.light,
  primaryColor: Colors.blue,
);

ThemeData darktheme = ThemeData(

  accentColor: Colors.red,
  brightness: Brightness.dark,
  primaryColor: Colors.amber,
 
    elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.red)
    )
    )

);
