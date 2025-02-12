import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:knowlumi/LearnPage/homeLearnPage.dart';
import 'package:knowlumi/LearnPage/myClassPage.dart';
import 'package:knowlumi/LearnPage/profilePicture.dart';
import 'package:knowlumi/controllerPage/appController.dart';
import 'package:knowlumi/customwidget/customColor.dart';

class Coursepage extends StatelessWidget {
  Coursepage({super.key});
  final Appcontroller appController = Get.put(Appcontroller());

  final List<Map> subscriptedItem = [
    {"image": "asset/Icon.png", "courseName": "MERN"},
    {"image": "asset/Icon.png", "courseName": "Junior  WEB DEV - Crash Course"}
  ];

  final List<Map> otherCourses = [
    {"image": "asset/Icon.png", "courseName": "Junior  WEB DEV - Crash Course"},
    {"image": "asset/Icon.png", "courseName": "Junior  WEB DEV - Crash Course"},
    {"image": "asset/Icon.png", "courseName": "MERN"},
    {"image": "asset/Icon.png", "courseName": "REACT"},
    {"image": "asset/Icon.png", "courseName": "MongoDB"},
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: screenHeight * 0.15,
              decoration: BoxDecoration(gradient: Customcolor.primaryGradient),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                child: Row(
                  children: [
                    Text(
                      "Courses",
                      style: TextStyle(
                        fontSize: screenWidth * 0.08, // Responsive font size
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Stack(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.notifications,
                                  size: screenWidth * 0.06,
                                  color: Colors.white),
                            ),
                            Positioned(
                              right: 4,
                              top: 4,
                              child: Container(
                                width: screenWidth * 0.02,
                                height: screenWidth * 0.02,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: screenWidth * 0.02),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.search,
                              size: screenWidth * 0.06, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.06,
                  vertical: screenHeight * 0.02),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Subscribed Courses",
                      style: TextStyle(
                          fontSize: screenWidth * 0.05,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff161537))),
                  SizedBox(height: screenHeight * 0.02),
                  Column(
                    children: subscriptedItem.map((item) {
                      return Container(
                        height: screenHeight * 0.08,
                        margin:
                            EdgeInsets.symmetric(vertical: screenHeight * 0.01),
                        padding: EdgeInsets.all(screenWidth * 0.03),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border:
                              Border.all(color: Colors.grey.shade300, width: 1),
                        ),
                        child: Row(
                          children: [
                            Image.asset(item["image"],
                                width: screenWidth * 0.05,
                                height: screenWidth * 0.05),
                            SizedBox(width: screenWidth * 0.04),
                            Expanded(
                              child: Text(item["courseName"],
                                  style: TextStyle(
                                      fontSize: screenWidth * 0.04,
                                      fontWeight: FontWeight.w400)),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                  SizedBox(height: screenHeight * 0.03),
                  Text("Other Courses",
                      style: TextStyle(
                          fontSize: screenWidth * 0.05,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff161537))),
                  SizedBox(height: screenHeight * 0.02),
                  Column(
                    children: otherCourses.map((item) {
                      return Container(
                        height: screenHeight * 0.08,
                        margin:
                            EdgeInsets.symmetric(vertical: screenHeight * 0.01),
                        padding: EdgeInsets.all(screenWidth * 0.03),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border:
                              Border.all(color: Colors.grey.shade300, width: 1),
                        ),
                        child: Row(
                          children: [
                            Image.asset(item["image"],
                                width: screenWidth * 0.05,
                                height: screenWidth * 0.05),
                            SizedBox(width: screenWidth * 0.04),
                            Expanded(
                              child: Text(item["courseName"],
                                  style: TextStyle(
                                      fontSize: screenWidth * 0.04,
                                      fontWeight: FontWeight.w400)),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
