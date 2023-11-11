import 'package:flutter/material.dart';

import 'appbar.dart';
import 'body.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: appbar(context, (currentWidth > 1200) ? false : true),
      body: Body(
          grids: (currentWidth > 1200)
                  ? 4
                  : (currentWidth > 900)
                      ? 3
                      : (currentWidth > 600)
                          ? 2
                          : 1),
      drawer: (currentWidth > 1200) ? null : Drawer(),
    );
  }
}
