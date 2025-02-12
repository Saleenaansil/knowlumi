import 'dart:math';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:knowlumi/LearnPage/coursePage.dart';
import 'package:knowlumi/LearnPage/myClassPage.dart';
import 'package:knowlumi/LearnPage/profilePicture.dart';
import 'package:knowlumi/LearnPage/test.dart';
import 'package:knowlumi/controllerPage/appController.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../customwidget/customColor.dart';

class Homelearnpage extends StatefulWidget {
  Homelearnpage({super.key});

  @override
  State<Homelearnpage> createState() => _HomelearnpageState();
}

class _HomelearnpageState extends State<Homelearnpage> {
  final Appcontroller appController = Get.put(Appcontroller());

  final List<Map> listedItem = [
    {
      "image": "asset/competition 1.png",
      "name": "LEARN",
      "message": "Discover & choose your course",
      "rightarrow": "asset/rightarrow.png"
    },
    {
      "image": "asset/competition 2.png",
      "name": "PREPARATION",
      "message": "Get job ready with expert guidance",
      "rightarrow": "asset/rightarrow.png"
    },
    {
      "image": "asset/competition 2 (1).png",
      "name": "ASK A MENTOR",
      "message": "Book a 1:1 doubt clearing sessions",
      "rightarrow": "asset/rightarrow.png"
    },
  ];

  int index = 0;

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

  BottomNavigationBarItem _buildNavItem(String imagePath, String label, int i) {
    bool isSelected = index == i;
    return BottomNavigationBarItem(
      icon: _buildIcon(imagePath, isSelected),
      label: label,
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffF5F6F9),
      appBar: (index != 0)
          ? null
          : AppBar(
              title: Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * .05),
                child: Row(
                  children: [
                    const Text(
                      "Welcome back👋🏼",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
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
                                    color: Color(0xff00000), width: 0.5),
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.notifications,
                                  size: 20,
                                  color: Colors.black,
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
                        const SizedBox(width: 8),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(16),
                            border:
                                Border.all(color: Color(0xff00000), width: 0.5),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.search,
                              size: 20,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
      body: (index != 0)
          ? Column(
              children: [
                if (index == 1) Myclasspage(),
                if (index == 2) Coursepage(),
              ],
            )
          : SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(left: 24, right: 24, top: 14),
                child: Column(
                  children: [
                    Builder(builder: (context) {
                      print("Column children are being built");
                      return Container(
                        height: 52,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color(0xFFe4e4ec),
                          border: Border.all(
                            color: const Color(0xffDEE5EC),
                            width: 0.8,
                          ),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        padding: const EdgeInsets.only(left: 14, right: 14),
                        child: Row(
                          children: [
                            const ImageIcon(
                              AssetImage("asset/Icon.png"),
                              color: Color(0xff316A69),
                            ),
                            const SizedBox(width: 3.4),
                            const Text("My Course"),
                            const Spacer(),
                            Obx(() {
                              return DropdownButton2<String>(
                                value: appController.selectedCourse.value,
                                items: ["FLUTTER", "MERN"]
                                    .map((e) => DropdownMenuItem<String>(
                                          value: e,
                                          child: Text(
                                            e,
                                            style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ))
                                    .toList(),
                                onChanged: (newValue) {
                                  if (newValue != null) {
                                    appController.changeCourse(newValue);
                                  }
                                },
                                style: const TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xffB61B76),
                                ),
                                buttonStyleData: ButtonStyleData(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(16),
                                    border:
                                        Border.all(color: Colors.grey.shade300),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black26,
                                        blurRadius: 4,
                                        spreadRadius: 2,
                                      ),
                                    ],
                                  ),
                                ),
                                customButton: Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: const ImageIcon(
                                    AssetImage("asset/down-arrow 1.png"),
                                    color: Colors.black,
                                  ),
                                ),
                                isExpanded: false,
                                alignment: Alignment.center,
                                dropdownStyleData: DropdownStyleData(
                                  width: 348, // Fixed width
                                  padding: const EdgeInsets.fromLTRB(10, 20, 10,
                                      16), // Padding: top 16, right 10, bottom 16, left 10
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(16),
                                    border:
                                        Border.all(color: Colors.grey.shade300),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black26,
                                        blurRadius: 4,
                                        spreadRadius: 2,
                                      ),
                                    ],
                                  ),
                                  offset: const Offset(4,
                                      -43), // Adjust offset to position the dropdown
                                ),
                                menuItemStyleData: const MenuItemStyleData(
                                  height: 50, // Height of each menu item
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 14), // Padding for menu items
                                ),
                              );
                            }),
                          ],
                        ),
                      );
                    }),
                    SizedBox(height: 10),
                    CarouselSlider(
                      options: CarouselOptions(
                        enlargeCenterPage: true,
                        viewportFraction: 1.0,
                        onPageChanged: (index, reason) {
                          appController.changeCarouselIndex(index);
                        },
                      ),
                      items: List.generate(5, (index) {
                        return Container(
                          width: 348,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Customcolor.primaryLight,
                                Customcolor.primaryDark,
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Image.asset(
                                  'asset/shotman.png',
                                  width: 140,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 26, right: 20, left: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Learn from the best",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "Lorum Epsum",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(height: 35),
                                    ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        minimumSize: Size(91, 35),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 14, vertical: 10),
                                      ),
                                      child: Text(
                                        "Enroll Now",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xff316A69),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Obx(() {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(5, (index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 2),
                            child: Container(
                              width: 8, // Set width
                              height: 8, // Set height
                              decoration: BoxDecoration(
                                shape: BoxShape.circle, // Ensure it's circular
                                color: appController.carouselIndex.value ==
                                        index
                                    ? null // We will use gradient for selected item
                                    : Colors.grey, // Inactive circle color
                                gradient: appController.carouselIndex.value ==
                                        index
                                    ? LinearGradient(
                                        colors: [
                                          Color(0xFF671043),
                                          Color(0xFFB61B76)
                                        ], // Gradient colors
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      )
                                    : null, // No gradient for inactive items
                              ),
                            ),
                          );
                        }),
                      );
                    }),
                    SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 41, right: 41),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // First Column with Container and Text
                            Column(
                              children: [
                                Container(
                                  width: 64,
                                  height: 64,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: Color(0xffFFFFFF),
                                    border: Border.all(
                                        color: Color(
                                            0xffDEE5EC)), // Optional, for border
                                  ),
                                  child: Image.asset(
                                    'asset/test 1.png', // Replace with your asset path
                                    width: 40, // Adjust image size
                                    height: 40, // Adjust image size
                                  ),
                                ),
                                Text("1:1",
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xff1F2D43)),
                                    textAlign: TextAlign
                                        .center), // Text below the container
                              ],
                            ),

                            SizedBox(width: 20), // Space between columns

                            // Second Column with Container and Text
                            Column(
                              children: [
                                Container(
                                  width: 64,
                                  height: 64,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      color: Color(0xffFFFFFF),
                                      border: Border.all(
                                          color: Color(
                                              0xffDEE5EC)) // Optional, for border
                                      ),
                                  child: Image.asset(
                                    'asset/exam 1.png', // Replace with your asset path
                                    width: 40, // Adjust image size
                                    height: 40, // Adjust image size
                                  ),
                                ),
                                Text("Mater class",
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xff1F2D43)),
                                    textAlign: TextAlign
                                        .center), // Text below the container
                              ],
                            ),

                            SizedBox(width: 20), // Space between columns

                            // Third Column with Container and Text
                            Column(
                              children: [
                                Container(
                                  width: 64,
                                  height: 64,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      color: Color(0xffFFFFFF),
                                      border: Border.all(
                                          color: Color(
                                              0xffDEE5EC)) // Optional, for border
                                      ),
                                  child: Image.asset(
                                    'asset/megaphone 1.png', // Replace with your asset path
                                    width: 40, // Adjust image size
                                    height: 40, // Adjust image size
                                  ),
                                ),
                                Text("updates",
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xff1F2D43)),
                                    textAlign: TextAlign
                                        .center), // Text below the container
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    Column(
                      children: listedItem.map((item) {
                        return Container(
                          width: screenWidth * 0.9,
                          margin: EdgeInsets.symmetric(vertical: 8),
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Color(0xffFFFFFF),
                            border: Border.all(
                                color: Color(0xffDEE5EC), width: 0.5),
                          ),
                          child: Row(
                            children: [
                              Image.asset(item["image"]!,
                                  width: 50, height: 50),
                              SizedBox(width: 10),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(item["name"]!,
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700)),
                                    Text(item["message"]!,
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.grey)),
                                  ],
                                ),
                              ),
                              Image.asset(item["rightarrow"]!,
                                  width: 24, height: 24),
                            ],
                          ),
                        );
                      }).toList(),
                    )
                  ],
                ),
              ),
            ),
      bottomNavigationBar: BottomNavigationBar(
        //  type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xffFFFFFF),
        currentIndex: index,
        selectedItemColor: Color(0xFF500C34), // Selected label color
        unselectedItemColor: Color(0xFFCCCCCC), // Unselected label color
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: (int i) {
          setState(() {
            index = i;
          });
          // appController.changeIndex(index);
          // _navigateToPage(index); // ✅ FIXED: Added navigation function

          index = i;
        },
        items: [
          _buildNavItem(
            "asset/HomePage.png",
            "Home",
            0,
          ),
          _buildNavItem("asset/Myclass.png", "Class", 1),
          _buildNavItem("asset/Courses.png", "Lessons", 2),
          _buildNavItem("asset/profile.png", "Account", 3),
        ],
      ),
    );
  }
}
