import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:knowlumi/LearnPage/homeLearnPage.dart';
import 'package:knowlumi/customwidget/customColor.dart';
import 'package:knowlumi/customwidget/customText.dart';

class Selectedcourse extends StatelessWidget {
  Selectedcourse({super.key});

  final List<String> courses = [
    "MERN",
    "FLUTTER",
    "NODE.JS",
    "WEB3",
    "ENGLISH",
    "MALAYALAM",
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: screenWidth * 0.05, vertical: 60),
        child: Padding(
          padding: const EdgeInsets.only(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title Section
              const CustomText(
                text: "Courses",
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: Color(0xff1F2D43),
              ),
              SizedBox(height: 20), // Responsive spacing
              // List of courses
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: courses.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 70, // 10% of screen height
                      margin: EdgeInsets.only(
                          bottom: screenHeight * 0.02), // Responsive margin
                      decoration: BoxDecoration(
                        color: Color(0xFFe4e4ec),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Center(
                        child: ListTile(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: screenWidth * 0.05),
                          title: Text(
                            courses[index],
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF1F2D43),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              // Skip and Continue buttons at the bottom
              Padding(
                padding: EdgeInsets.only(
                    top: screenHeight * 0.03, bottom: screenHeight * 0.03),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Skip Button
                    Expanded(
                      flex: 1,
                      child: SizedBox(
                        height: screenHeight * 0.06, // 6% of screen height
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                horizontal: screenWidth * 0.04),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            backgroundColor: const Color(0xFFe4e4ec),
                            side: const BorderSide(
                              color: Color(0xFFe4e4ec),
                              width: 1,
                            ),
                          ),
                          child: const CustomText(
                            text: "Skip",
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff1F2D43),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.02), // Responsive spacing
                    // Continue Button
                    Expanded(
                      flex: 2,
                      child: SizedBox(
                        height: screenHeight * 0.06, // 6% of screen height
                        child: ElevatedButton(
                          onPressed: () {
                            Get.off(Homelearnpage());
                          },
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            foregroundColor: Colors.white,
                          ),
                          child: Ink(
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [
                                  Customcolor.primaryLight,
                                  Customcolor.primaryDark,
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Container(
                              constraints: BoxConstraints(
                                  minWidth:
                                      screenWidth * 0.4), // 40% of screen width
                              alignment: Alignment.center,
                              child: const CustomText(
                                text: "Continue",
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Color(0xffFFFFFF),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
