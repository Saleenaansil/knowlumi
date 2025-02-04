import 'package:flutter/material.dart';

class Customcolor {
  static const Color primaryLight = Color(0xff316A69);
  static const Color primaryDark = Color(0xff000000);

  static LinearGradient get primaryGradient => LinearGradient(
        colors: [
          primaryLight,
          primaryDark,
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      );
}
