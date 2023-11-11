import 'package:flutter/material.dart';

appbar(context, menu) {
  return AppBar(
    leading: menu
        ? Builder(
            builder: (context) => IconButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
              icon: Icon(Icons.menu, color: Colors.black),
            ),
          )
        : null,
    centerTitle: !menu,
    title: Text(
      "Dribbble",
      style: TextStyle(color: Colors.black),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.search, color: Colors.black),
      ),
      SizedBox(width: 5),
      InkWell(
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        onTap: () {},
        child: Container(
          height: 40,
          width: 40,
          decoration:
              BoxDecoration(color: Colors.grey[200], shape: BoxShape.circle),
        ),
      ),
      SizedBox(width: 10),
    ],
  );
}
