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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF5F6F9),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 112,
                decoration:
                    BoxDecoration(gradient: Customcolor.primaryGradient),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: const Text(
                        "Courses",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            color: Color(0xffFFFFFF)),
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(
                                    color: const Color.fromARGB(0, 24, 24, 57),
                                    width: 0.5),
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.notifications,
                                  size: 20,
                                  color: Color(0xffFFFFFF),
                                ),
                              ),
                            ),
                            Positioned(
                              right: 4,
                              top: 4,
                              child: Container(
                                width: 10,
                                height: 10,
                                decoration: const BoxDecoration(
                                  color: Colors.red,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 2),
                        Padding(
                          padding: EdgeInsets.only(right: 14),
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(
                                  color: Color(0xff00000014), width: 0.5),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.search,
                                size: 20,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 24, top: 14),
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Align text to the left
                  children: [
                    Text(
                      "Subscribed Courses",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff161537)),
                    ),
                    SizedBox(height: 14),
                    Padding(
                      padding: const EdgeInsets.only(right: 18),
                      child: Column(
                        children: subscriptedItem.map((item) {
                          return Container(
                            height: 70,
                            margin: EdgeInsets.symmetric(vertical: 8),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                  color: Colors.grey.shade300, width: 1),
                            ),
                            child: Row(
                              children: [
                                // Icon or Image
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Image.asset(
                                      item["image"],
                                      width: 18,
                                      height: 15,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                // Course Name and Chapter Count
                                Expanded(
                                  child: Text(
                                    item["courseName"],
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),

                                // Arrow Icon
                              ],
                            ),
                          );
                        }).toList(), // Convert map() output to List<Widget>
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    // Add spacing between texts
                    Text(
                      "Other Courses",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff161537)),
                    ),
                    SizedBox(height: 14),
                    Padding(
                      padding: const EdgeInsets.only(right: 18),
                      child: Column(
                        children: otherCourses.map((item) {
                          return Container(
                            height: 70,
                            margin: EdgeInsets.symmetric(vertical: 8),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                  color: Colors.grey.shade300, width: 1),
                            ),
                            child: Row(
                              children: [
                                // Icon or Image
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Image.asset(
                                      item["image"],
                                      width: 20,
                                      height: 20,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                // Course Name and Chapter Count
                                Expanded(
                                  child: Text(
                                    item["courseName"],
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),

                                // Arrow Icon
                              ],
                            ),
                          );
                        }).toList(), // Convert map() output to List<Widget>
                      ),
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
            selectedItemColor: Colors.white, // Overridden for gradient effect
            unselectedItemColor: Color(0xFFCCCCCC),
            onTap: (int index) {
              appController.changeIndex(index);
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
            },
            items: [
              _buildNavItem("asset/HomePage.png", "Home", 0),
              _buildNavItem("asset/Myclass.png", "My Class", 1),
              _buildNavItem("asset/Courses.png", "Courses", 2),
              _buildNavItem("asset/profile.png", "Profile", 3),
            ],
          );
        }));
  }

  BottomNavigationBarItem _buildNavItem(
      String imagePath, String? label, int index) {
    bool isSelected = appController.selectedIndex.value == index;
    return BottomNavigationBarItem(
      icon: _buildIcon(imagePath, isSelected),
      label: label, // ✅ Label is always provided (Fixes assertion error)
    );
  }

  Widget _buildIcon(String imagePath, bool isSelected) {
    return ShaderMask(
      shaderCallback: (bounds) {
        return LinearGradient(
          colors: isSelected
              ? [
                  Color(0xFF500C34),
                  Color(0xFFB61B76)
                ] // Gradient for selected icon
              : [
                  Color(0xFFCCCCCC),
                  Color(0xFFCCCCCC)
                ], // Solid color for unselected icon
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ).createShader(bounds);
      },
      child: Image.asset(imagePath, width: 24, height: 24, color: Colors.white),
    );
  }
}
