import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class SloganHome extends StatelessWidget {
  const SloganHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Text(
          "TROUVE UN JEUNE ENTREPRENEUR PRES DE CHEZ TOI",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w900,
            fontSize: 45,
          ),
        ),
      ]),
    );
  }
}
