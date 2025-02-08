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
    double screenHeight = MediaQuery.of(context).size.width;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffF5F6F9),
      appBar: AppBar(
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
                          border:
                              Border.all(color: Color(0xff00000), width: 0.5),
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
                      border: Border.all(color: Color(0xff00000), width: 0.5),
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
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      ImageIcon(
                        AssetImage("asset/Icon.png"),
                        color: Color(0xff316A69),
                      ),
                      SizedBox(width: 3.4),
                      Text("My Course"),
                      Spacer(),
                      Obx(() {
                        return DropdownButtonHideUnderline(
                          child: Center(
                            child: DropdownButton<String>(
                              value: appController.selectedCourse.value,
                              items: ["FLUTTER", "MERN"]
                                  .map((e) => DropdownMenuItem<String>(
                                        value: e,
                                        child: Center(
                                          // Centers the text inside dropdown items
                                          child: Text(
                                            e,
                                            style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w600,
                                              color: Colors
                                                  .black, // Keeps dropdown items black
                                            ),
                                          ),
                                        ),
                                      ))
                                  .toList(),
                              onChanged: (newValue) {
                                if (newValue != null) {
                                  appController.changeCourse(newValue);
                                }
                              },
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: Color(
                                    0xffB61B76), // Color for selected item in display part
                              ),
                              icon: Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: const ImageIcon(
                                  AssetImage("asset/down-arrow 1.png"),
                                  color: Colors.black,
                                ),
                              ),
                              isExpanded:
                                  false, // Ensures dropdown button doesn't stretch too much
                              alignment: Alignment
                                  .center, // Centers selected item in display part
                            ),
                          ),
                        );
                      })
                    ],
                  ),
                ),
              ),
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
                    width: 348, // Set width to 348px
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Customcolor.primaryLight,
                          Customcolor.primaryDark,
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius:
                          BorderRadius.circular(16), // Border radius to 16px
                    ),
                    child: Stack(
                      children: [
                        // Right side image (Positioned at bottom right)
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Image.asset(
                            'asset/shotman.png', // Replace with your asset image
                            width: 140, // Adjust width as needed
                            // Adjust height as needed
                            fit: BoxFit
                                .contain, // Ensure the image scales properly
                          ),
                        ),

                        // Content section
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
                                onPressed: () {
                                  // Add your enroll action here
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
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
                              )
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
                              textAlign:
                                  TextAlign.center), // Text below the container
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
                      border: Border.all(color: Color(0xffDEE5EC), width: 0.5),
                    ),
                    child: Row(
                      children: [
                        Image.asset(item["image"]!, width: 50, height: 50),
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
                        Image.asset(item["rightarrow"]!, width: 24, height: 24),
                      ],
                    ),
                  );
                }).toList(),
              )
            ],
          ),
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
