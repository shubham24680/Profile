import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({super.key, required this.grids});

  final int grids;

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40,
          child: ListView.builder(
            itemCount: 20,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: (index == 0) ? Colors.grey[200] : Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                "Discover",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        Expanded(
          child: GridView.builder(
            itemCount: 20,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: widget.grids, childAspectRatio: 1.3),
            itemBuilder: (context, index) => Padding(padding: const EdgeInsets.all(15), child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Focus Lab"),
                      Icon(Icons.heart_broken, color: Colors.grey,),
                    ],
                  ),
              ],
            ),)
          ),
        ),
      ],
    );
  }
}
