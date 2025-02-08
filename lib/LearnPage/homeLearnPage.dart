import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:knowlumi/LearnPage/coursePage.dart';
import 'package:knowlumi/LearnPage/myClassPage.dart';
import 'package:knowlumi/LearnPage/profilePicture.dart';
import 'package:knowlumi/controllerPage/appController.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../customwidget/customColor.dart';

class Homelearnpage extends StatelessWidget {
  final Appcontroller appController = Get.put(Appcontroller());
  Homelearnpage({super.key});
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF5F6F9),
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(left: 11, right: 11),
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
                                color: const Color.fromARGB(0, 24, 24, 57),
                                width: 0.5),
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
                            Border.all(color: Color(0xff00000014), width: 0.5),
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
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 24, right: 24, top: 14),
            child: Column(
              children: [
                Container(
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
                      ImageIcon(
                        AssetImage("asset/Icon.png"),
                        color: Color(0xff316A69),
                      ),
                      SizedBox(width: 2),
                      Text("Course"),
                      Spacer(),
                      Obx(() {
                        return DropdownButton<String>(
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
                                                    .selectedCourse.value
                                            ? Color(0xffB61B76)
                                            : Colors.black,
                                      ),
                                    ),
                                  ))
                              .toList(),
                          onChanged: (newValue) {
                            if (newValue != null) {
                              appController.changeCourse(newValue);
                            }
                          },
                          icon: Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: const ImageIcon(
                              AssetImage("asset/down-arrow 1.png"),
                              color: Colors.black,
                            ),
                          ),
                        );
                      })
                    ],
                  ),
                ),
                SizedBox(height: 10),
                CarouselSlider(
                  options: CarouselOptions(
                    // Adjust height as needed
                    enlargeCenterPage:
                        true, // To ensure the active item is larger
                    viewportFraction: 1.0, // Ensure full width is used
                    onPageChanged: (index, reason) {
                      appController
                          .changeCarouselIndex(index); // Update carousel index
                    },
                  ),
                  items: List.generate(5, (index) {
                    return Container(
                      width: 348, // Set width to 348px
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Customcolor.primaryLight,
                            Customcolor.primaryDark
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(
                            16), // Set border radius to 16px
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 26, right: 20, left: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Left side content
                            Flexible(
                              flex:
                                  1, // This allows the text and button to take available space
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      const Text(
                                        "Learn from the best ",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    children: [
                                      const Text(
                                        "Lorum Epsum ",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xffFFFFFF)),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 35),
                                  ElevatedButton(
                                    onPressed: () {
                                      // Add your enroll action here
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            20), // Adjusted radius to 20px
                                      ),
                                      minimumSize: Size(91,
                                          35), // Set width to 91px and height to 35px
                                      padding: EdgeInsets.only(
                                        top: 10,
                                        right: 14,
                                        bottom: 10,
                                        left:
                                            14, // Set padding for all sides as required
                                      ),
                                    ),
                                    child: const Text(
                                      "Enroll Now",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff316A69),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            // Right side image
                            // Image.asset(
                            //   'asset/shotman.png', // Replace with the path to your asset image
                            //   width: 140, // Adjust image width as needed
                            //   height: 100, // Adjust image height as needed
                            //   fit: BoxFit
                            //       .cover, // Adjust how the image should be scaled
                            // ),
                          ],
                        ),
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
                        padding: const EdgeInsets.symmetric(horizontal: 6),
                        child: Container(
                          width: 8, // Set width
                          height: 8, // Set height
                          decoration: BoxDecoration(
                            shape: BoxShape.circle, // Ensure it's circular
                            color: appController.carouselIndex.value == index
                                ? null // We will use gradient for selected item
                                : Colors.grey, // Inactive circle color
                            gradient: appController.carouselIndex.value == index
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
                Row(
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
                            border: Border.all(
                                color:
                                    Color(0xffDEE5EC)), // Optional, for border
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
                            textAlign:
                                TextAlign.center), // Text below the container
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
                              border: Border.all(
                                  color:
                                      Color(0xffDEE5EC)) // Optional, for border
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
                            textAlign:
                                TextAlign.center), // Text below the container
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
                              border: Border.all(
                                  color:
                                      Color(0xffDEE5EC)) // Optional, for border
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
                            textAlign:
                                TextAlign.center), // Text below the container
                      ],
                    ),
                  ],
                ),
                Column(
                  children: listedItem.map((item) {
                    return SizedBox(
                      child: Container(
                        width: 348,
                        margin: EdgeInsets.symmetric(vertical: 8),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(20),
                          border:
                              Border.all(color: Color(0xffDEE5EC), width: 0.5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Image on the left
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset(
                                item["image"]!,
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                            ),
                            // Name & Message in the center
                            SizedBox(
                              child: Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          item["name"]!,
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          item["message"]!,
                                          style: TextStyle(
                                              fontSize: 12, color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset(
                                item["rightarrow"]!,
                                width: 24,
                                height: 24,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }).toList(), // Convert map() output to List<Widget>
                )
              ],
            ),
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
                  Get.offAll(() => Homelearnpage());
                  break;
                case 1:
                  Get.offAll(() => Myclasspage());
                  break;
                case 2:
                  Get.offAll(() => Coursepage());
                  break;
                case 3:
                  Get.offAll(() => Profilepicture());
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
