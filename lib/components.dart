import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const violet = Color(0xFF7920BB);

class CText extends StatelessWidget {
  const CText(
      {super.key, required this.title, this.color, this.size, this.weight});

  final String title;
  final Color? color;
  final double? size;
  final FontWeight? weight;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.varelaRound(
        color: color,
        fontSize: size,
        fontWeight: weight,
      ),
    );
  }
}
