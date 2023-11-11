import 'package:flutter/material.dart';

lightTheme() {
  return ThemeData.light().copyWith(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      toolbarHeight: 70,
    )
  );
}
