import 'package:flutter/material.dart';

class Customcolor {
  static const Color primaryLight = Color(0xff316A69);
  static const Color primaryDark = Color(0xff000000);

  static LinearGradient get primaryGradient =>const LinearGradient(
        colors: [
          primaryLight,
          primaryDark,
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      );}
class Customcolor1{
        static const Color primaryLight1 = Color(0xff500C34);
  static const Color primaryDark1 = Color(0xffB61B76);

  static LinearGradient get primaryGradient => const LinearGradient(
        colors: [
          primaryLight1,
          primaryDark1,
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      );
      }
