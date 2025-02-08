import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:knowlumi/LearnPage/homeLearnPage.dart';
import 'package:knowlumi/LearnPage/myClassPage.dart';
import 'package:knowlumi/LearnPage/profilePicture.dart';
import 'package:knowlumi/controllerPage/appController.dart';
import 'package:knowlumi/customwidget/customColor.dart';
import 'package:knowlumi/customwidget/customContainer.dart';
import 'package:knowlumi/selectedCourse/selectedCourse.dart';

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

  void _navigateToPage(int index) {
    switch (index) {
      case 0:
        Get.to(() => Homelearnpage());
        break;
      case 1:
        Get.to(() => Myclasspage());
        break;
      case 2:
        Get.to(() => Coursepage());
        break;
      case 3:
        Get.to(() => Profilepicture());
        break;
    }
  }

  Widget _buildIcon(String imagePath, bool isSelected) {
    return ShaderMask(
      shaderCallback: (bounds) {
        return LinearGradient(
          colors: isSelected
              ? [Color(0xFF500C34), Color(0xFFB61B76)]
              : [Color(0xFFCCCCCC), Color(0xFFCCCCCC)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ).createShader(bounds);
      },
      child: Image.asset(imagePath, width: 24, height: 24, color: Colors.white),
    );
  }

  BottomNavigationBarItem _buildNavItem(
      String imagePath, String label, int index) {
    bool isSelected = appController.selectedIndex.value == index;
    return BottomNavigationBarItem(
      icon: _buildIcon(imagePath, isSelected),
      label: label,
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xffF5F6F9),
      body: SingleChildScrollView(
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
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: appController.selectedIndex.value,
          selectedItemColor: Color(0xFF500C34),
          unselectedItemColor: Color(0xFFCCCCCC),
          onTap: (int index) {
            appController.changeIndex(index);
            _navigateToPage(index);
          },
          items: [
            _buildNavItem("asset/HomePage.png", "Home", 0),
            _buildNavItem("asset/Myclass.png", "Class", 1),
            _buildNavItem("asset/Courses.png", "Lessons", 2),
            _buildNavItem("asset/profile.png", "Account", 3),
          ],
        );
      }),
    );
  }
}
