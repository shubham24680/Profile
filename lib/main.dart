import 'package:flutter/material.dart';

import 'Home/home.dart';
import 'theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme(),
      home: const Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
