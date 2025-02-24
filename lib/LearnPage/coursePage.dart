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
    {"image": "asset/courseListIcon.png", "courseName": "MERN"},
    {
      "image": "asset/courseListIcon.png",
      "courseName": "Junior  WEB DEV - Crash Course"
    }
  ];

  final List<Map> otherCourses = [
    {
      "image": "asset/courseListIcon.png",
      "courseName": "Junior  WEB DEV - Crash Course"
    },
    {
      "image": "asset/courseListIcon.png",
      "courseName": "Junior  WEB DEV - Crash Course"
    },
    {"image": "asset/courseListIcon.png", "courseName": "MERN"},
    {"image": "asset/courseListIcon.png", "courseName": "REACT"},
    {"image": "asset/courseListIcon.png", "courseName": "MongoDB"},
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 112,
              decoration: BoxDecoration(gradient: Customcolor.primaryGradient),
              child: Padding(
                padding: EdgeInsets.only(top: 54, left: 16),
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
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: Color.fromARGB(0, 144, 144, 160)),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.notifications,
                                    size: screenWidth * 0.06,
                                    color: Colors.white),
                              ),
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
            SizedBox(height: 14),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 18, right: 18),
                child: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Subscribed Courses",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff161537))),
                      ListView.builder(
                        shrinkWrap: true,
                        physics:
                            NeverScrollableScrollPhysics(), // Prevents inner scrolling conflict
                        itemCount: subscriptedItem.length,
                        itemBuilder: (context, index) {
                          var item = subscriptedItem[index];
                          return Container(
                            height: 70,
                            margin: EdgeInsets.only(bottom: 14),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                  color: Colors.grey.shade300, width: 1),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: Row(
                                children: [
                                  Image.asset(item["image"],
                                      width: screenWidth * 0.05,
                                      height: screenWidth * 0.05,
                                      color: Color(0xff000000)),
                                  SizedBox(width: screenWidth * 0.04),
                                  Expanded(
                                    child: Text(item["courseName"],
                                        style: TextStyle(
                                            fontSize: screenWidth * 0.04,
                                            fontWeight: FontWeight.w400)),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                      SizedBox(height: 20),
                      Text("Other Courses",
                          style: TextStyle(
                              fontSize: screenWidth * 0.05,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff161537))),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: otherCourses.length,
                        itemBuilder: (context, index) {
                          var item = otherCourses[index];
                          return Container(
                            height: 70,
                            margin: EdgeInsets.only(bottom: 14),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                  color: Colors.grey.shade300, width: 1),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 18),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
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
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
