import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color primaryColor100 = Color(0xFFffe0e0);
const Color primaryColor300 = Color(0xFFfea0a3);
const Color primaryColor500 = Color(0xFFed6883);
const Color colorWhite = Colors.white;
const Color backgroundColor = Color(0xfffff5f4);
const Color lightBlue100 = Color(0xffffeaea);
const Color lightBlue300 = Color(0xffffe0e0);
const Color lightBlue400 = Color(0xffffd5d5);
const Color darkBlue300 = Color(0xFF4D4D4D);
const Color darkBlue500 = Color(0xFF000000);

const double borderRadiusSize = 50.0;

TextStyle greetingTextStyle = GoogleFonts.poppins(
    fontSize: 24, fontWeight: FontWeight.w700, color: darkBlue500);

TextStyle titleTextStyle = GoogleFonts.poppins(
    fontSize: 18, fontWeight: FontWeight.w700, color: darkBlue500);

TextStyle subTitleTextStyle = GoogleFonts.poppins(
    fontSize: 16, fontWeight: FontWeight.w500, color: darkBlue500);

TextStyle normalTextStyle = GoogleFonts.poppins(
  color: darkBlue500
);

TextStyle descTextStyle = GoogleFonts.poppins(
    fontSize: 14, fontWeight: FontWeight.w400, color: darkBlue300);

TextStyle addressTextStyle = GoogleFonts.poppins(
    fontSize: 14, fontWeight: FontWeight.w400, color: darkBlue300);

TextStyle facilityTextStyle = GoogleFonts.poppins(
    fontSize: 13, fontWeight: FontWeight.w500, color: darkBlue300);

TextStyle priceTextStyle = GoogleFonts.poppins(
    fontSize: 16, fontWeight: FontWeight.w700, color: darkBlue500);

TextStyle buttonTextStyle = GoogleFonts.poppins(
    fontSize: 16, fontWeight: FontWeight.w600, color: colorWhite);

TextStyle bottomNavTextStyle = GoogleFonts.poppins(
    fontSize: 12, fontWeight: FontWeight.w500, color: primaryColor500);

TextStyle tabBarTextStyle = GoogleFonts.poppins(
     fontWeight: FontWeight.w500, color: primaryColor500);


MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map<int, Color> swatch = {};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  for (var strength in strengths) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }
  return MaterialColor(color.value, swatch);
}

const kDefaultPadding = EdgeInsets.symmetric(horizontal: 30);

TextStyle textButton = TextStyle(
  color: primaryColor500,
  fontSize: 16,
  fontWeight: FontWeight.w700,
);
ButtonStyle buttonText = ButtonStyle(
  backgroundColor: MaterialStateProperty.all(primaryColor500),
  foregroundColor: MaterialStateProperty.all(colorWhite),
  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(25.0),
    )
  ),
  textStyle: MaterialStateProperty.all(
    TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w700,
    ),
  ),
  padding: MaterialStateProperty.all(
    EdgeInsets.symmetric(
      horizontal: 30,
      vertical: 12,
    )
  ),
);