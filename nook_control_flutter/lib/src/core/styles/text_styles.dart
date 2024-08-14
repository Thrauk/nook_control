import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nook_control_flutter/src/core/styles/colors.dart';

class ATTextStyles {
  static TextStyle custom({
    Color? color,
    double? fontSize,
    FontStyle? fontStyle,
  }) {
    return GoogleFonts.inter(
      fontSize: fontSize ?? 16,
      color: color ?? ATColors.light80,
      fontStyle: fontStyle,
    );
  }

  static TextStyle body({
    Color? color,
  }) {
    return GoogleFonts.inter(
      fontSize: 16,
      color: color ?? ATColors.light80,
    );
  }

  static TextStyle h1() {
    return GoogleFonts.inter(
      fontSize: 32,
      fontWeight: FontWeight.w500,
      color: Color.fromARGB(255, 255, 255, 255),
      shadows: [
        const Shadow(
            // bottomLeft
            offset: Offset(-1.5, -1.5),
            color: Colors.black),
        const Shadow(
            // bottomRight
            offset: Offset(1.5, -1.5),
            color: Colors.black),
        const Shadow(
            // topRight
            offset: Offset(1.5, 1.5),
            color: Colors.black),
        const Shadow(
            // topLeft
            offset: Offset(-1.5, 1.5),
            color: Colors.black),
      ],
    );
  }

  static TextStyle h2({
    Color? color,
  }) {
    return GoogleFonts.inter(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: color ?? ATColors.light80,
    );
  }

  static TextStyle h3({
    Color? color,
  }) {
    return GoogleFonts.inter(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: color ?? ATColors.light80,
    );
  }

  static TextStyle small10({
    Color? color,
  }) {
    return GoogleFonts.inter(
      fontSize: 10,
      color: color ?? ATColors.light80,
    );
  }

  static TextStyle small12({
    Color? color,
  }) {
    return GoogleFonts.inter(
      fontSize: 12,
      color: color ?? ATColors.light80,
    );
  }
}
