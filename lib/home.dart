import 'package:flutter/material.dart';

import 'appbar.dart';
import 'components.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(),
      body: Body(),
    );
  }
}

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  var current = 0;
  List<String> screen = ["Onboard", "Home", "Profile"];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        itemCount: screen.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: InkWell(
              onTap: () {},
              child: CText(
                title: screen[index],
                size: 18,
                color: (current == index) ? Colors.black : Colors.black38,
                weight:
                    (current == index) ? FontWeight.bold : FontWeight.normal,
              ),
            )),
      ),
    );
  }
}
