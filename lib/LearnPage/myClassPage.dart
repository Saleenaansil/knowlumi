import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:knowlumi/LearnPage/coursePage.dart';
import 'package:knowlumi/LearnPage/homeLearnPage.dart';
import 'package:knowlumi/LearnPage/profilePicture.dart';
import 'package:knowlumi/customwidget/customColor.dart';
import '../controllerPage/appController.dart';

class Myclasspage extends StatelessWidget {
  final Appcontroller appController = Get.put(Appcontroller());

  Myclasspage({super.key});
  final List<Map> courseListedItem = [
    {
      "image": "asset/bookIcon.png",
      "name": "HTML",
      "message": "3 Chapters",
    },
    {
      "image": "asset/bookIcon.png",
      "name": "CSS",
      "message": "2 Chapters",
    },
    {
      "image": "asset/bookIcon.png",
      "name": "FLEX",
      "message": "3 Chapters",
    },
    {
      "image": "asset/bookIcon.png",
      "name": "GRID",
      "message": "3 Chapters",
    },
    {
      "image": "asset/bookIcon.png",
      "name": "JAVASCRIPT",
      "message": "3 Chapters",
    },
    {
      "image": "asset/bookIcon.png",
      "name": "OOPS",
      "message": "3 Chapters",
    },
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
    return Scaffold(
      backgroundColor: Color(0xffF5F6F9),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                // Background gradient container
                Container(
                  width: double.infinity,
                  height: 139,
                  decoration: BoxDecoration(
                    gradient: Customcolor.primaryGradient,
                  ),
                ),
                // Page title
                const Positioned(
                  top: 54,
                  left: 16,
                  child: Text(
                    "My Class",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
                // Dropdown course selection
                Positioned(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 14, right: 14, top: 116),
                    child: Container(
                      height: 52,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xFFe4e4ec),
                        border: Border.all(
                          color: Color(0xffDEE5EC),
                          width: 0.8,
                        ),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: ImageIcon(
                              AssetImage("asset/Icon.png"),
                              color: Color(0xff316A69),
                            ),
                          ),
                          const Text(
                            "My Course",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w600),
                          ),
                          const Spacer(),
                          Obx(() {
                            return Flexible(
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  value: appController.selectedCourse.value,
                                  items: ["FLUTTER", "MERN"]
                                      .map((e) => DropdownMenuItem<String>(
                                            value: e,
                                            child: Text(
                                              e,
                                              style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w600,
                                                color: e ==
                                                        appController
                                                            .selectedCourse
                                                            .value
                                                    ? Colors.black
                                                    : Colors.black,
                                              ),
                                              overflow: TextOverflow
                                                  .ellipsis, // Prevents overflow
                                            ),
                                          ))
                                      .toList(),
                                  onChanged: (newValue) {
                                    if (newValue != null) {
                                      appController.changeCourse(newValue);
                                    }
                                  },
                                  icon: const Padding(
                                    padding: EdgeInsets.only(right: 10),
                                    child: ImageIcon(
                                      AssetImage("asset/down-arrow 1.png"),
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          })
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            // Modules section
            Padding(
              padding: const EdgeInsets.only(left: 18, top: 15),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Modules",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Column(
              children: courseListedItem.map((item) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.grey.shade300, width: 1),
                  ),
                  child: Row(
                    children: [
                      // Icon or Image
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Image.asset(
                          item["image"],
                          width: 30,
                          height: 30,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      // Course Name and Chapter Count
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item["name"],
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              item["message"],
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey.shade600,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Arrow Icon
                    ],
                  ),
                );
              }).toList(), // Convert map() output to List<Widget>
            )
          ],
        ),
      ),
      bottomNavigationBar: Obx(() {
        return Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.white, // Background color of BottomNav
            primaryColor: Colors.white,
            textTheme: Theme.of(context).textTheme.copyWith(
                  bodySmall: TextStyle(
                    color: Colors.grey, // Unselected label color
                  ),
                ),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: appController.selectedIndex.value,
            selectedItemColor: Color(0xFF500C34), // Selected text color
            unselectedItemColor: Color(0xFFCCCCCC), // Unselected text color
            selectedLabelStyle: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Color(0xFF500C34),
            ),
            unselectedLabelStyle: TextStyle(
              fontSize: 12,
              color: Color(0xFFCCCCCC),
            ),
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
          ),
        );
      }),
    );
  }
}
