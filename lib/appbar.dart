import 'package:flutter/material.dart';

homeAppBar() {
  return AppBar(
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("CREATIVE "),
        Image.asset(
          "assets/icons/creativity.png",
          height: 50,
        ),
        Text(" QUEEN"),
      ],
    ),
  );
}
