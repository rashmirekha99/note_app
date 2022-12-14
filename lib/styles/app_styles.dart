import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyles {
  static Color primaryColor = Color.fromARGB(255, 1, 107, 96);
  static Color secondaryColor = Color.fromARGB(255, 142, 215, 203);

  static List<Color> cardColors = [
    Colors.blue.shade100,
    Colors.yellow.shade100,
    Colors.orange.shade100,
    Colors.purple.shade100,
    Colors.pink.shade100,
    Colors.teal.shade100,
    Colors.lime.shade100,
    Colors.indigo.shade100,
    Colors.cyan.shade100,
    Colors.brown.shade100,
    Colors.grey.shade100,
  
  ];

  //TextStyles
  static TextStyle mainTitle =
      GoogleFonts.roboto(fontSize: 18.0, fontWeight: FontWeight.bold);
  static TextStyle contenTitle =
      GoogleFonts.nunito(fontSize: 16.0, fontWeight: FontWeight.normal);
  static TextStyle date = GoogleFonts.roboto(fontSize: 13.0);
}

