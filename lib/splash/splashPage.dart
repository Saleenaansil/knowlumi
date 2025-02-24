import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:knowlumi/LearnPage/homePagedummy.dart';
import 'package:knowlumi/classes%20Page/classPage1.dart';
import 'package:knowlumi/classes%20Page/classesPageSubPages/startclasspage.dart';
import 'package:knowlumi/classes%20Page/classesPageSubPages/videosection.dart';
import 'package:knowlumi/customwidget/customColor.dart';
import 'package:knowlumi/customwidget/customText.dart';
import 'package:knowlumi/loginPage/loginPage1.dart';
import 'package:knowlumi/loginPage/loginPage2.dart';

class Splashpage extends StatelessWidget {
  const Splashpage({super.key});

  @override
  Widget build(BuildContext context) {
    // Trigger navigation after a delay
    Future.delayed(const Duration(milliseconds: 2000), () {
      Get.off(() => LoginPage1());
      //  Get.off(() => Startclasspage());
      // Get.off(() => Homepagedummy());
    });

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: Customcolor.primaryGradient, // Custom gradient
        ),
        child: const Center(
          child: CustomText(
            text: "KNOWLUMI",
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color:  Color(0xffE5E5E5),
          ),
        ),
      ),
    );
  }
}
