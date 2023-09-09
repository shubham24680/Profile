import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'components.dart';

ThemeData lightTheme() {
  return ThemeData.light().copyWith(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: GoogleFonts.pathwayGothicOne(
        color: violet,
        fontSize: 30,
      ),
      toolbarHeight: 70,
    ),
  );
}
