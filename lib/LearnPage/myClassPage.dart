import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:knowlumi/customwidget/customText.dart';
import '../controllerPage/appController.dart';
import 'package:knowlumi/customwidget/customColor.dart';

class Myclasspage extends StatefulWidget {
  Myclasspage({super.key});

  @override
  State<Myclasspage> createState() => _MyclasspageState();
}

class _MyclasspageState extends State<Myclasspage> {
  final Appcontroller appController = Get.put(Appcontroller());

  final List<Map> courseItem = [
    {"image": "asset/bookIcon.png", "name": "HTML", "message": "3 Chapters"},
    {"image": "asset/bookIcon.png", "name": "CSS", "message": "2 Chapters"},
    {"image": "asset/bookIcon.png", "name": "FLEX", "message": "3 Chapters"},
    {"image": "asset/bookIcon.png", "name": "GRID", "message": "3 Chapters"},
    {
      "image": "asset/bookIcon.png",
      "name": "JAVASCRIPT",
      "message": "3 Chapters"
    },
    {"image": "asset/bookIcon.png", "name": "OOPS", "message": "3 Chapters"},
    {"image": "asset/bookIcon.png", "name": "OOPS", "message": "3 Chapters"}
  ];

  String? selectedCourse;
  // Stores selected dropdown item
  final List<String> courseOptions = ["FLUTTER", "MERN"];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      height: MediaQuery.of(context).size.height,
      color: const Color(0xffF5F6F9), // Background color
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header with Gradient
          Container(
            height: 180,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: double.infinity,
                  height: 139,
                  decoration: BoxDecoration(
                    gradient: Customcolor.primaryGradient,
                  ),
                ),
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
                Positioned(
                  top: 116, // 116px from top
                  left: 14, // 14px from left
                  child: ClipRect(
                    // Ensures no clipping issue
                    child: Container(
                      width: 348, // Fixed width
                      height: 56, // Fixed height
                      padding:
                          EdgeInsets.symmetric(vertical: 16, horizontal: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.circular(16), // 16px border radius
                        border:
                            Border.all(color: Colors.grey.shade300, width: 1),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment
                            .spaceBetween, // Justify space-between
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

                          Spacer(),
                          if (selectedCourse != null)
                            Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: Text(
                                selectedCourse!,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          // Dropdown button
                          PopupMenuButton<String>(
                            onSelected: (String value) {
                              setState(() {
                                selectedCourse = value;
                              });
                            },
                            itemBuilder: (BuildContext context) {
                              return courseOptions.map((String choice) {
                                return PopupMenuItem<String>(
                                  value: choice,
                                  child: Text(choice),
                                );
                              }).toList();
                            },
                            child: Image.asset("asset/down-arrow 1.png"),
                          ),

                          // Example dropdown icon
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 14, right: 14),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: "Modules",
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff161537),
                    ),
                    // Space below "Modules" text

                    // Wrapping ListView in Flexible to avoid overflow
                    for (var data in courseItem)
                      Padding(
                        padding: const EdgeInsets.only(top: 14),
                        child: Container(
                          width: double.infinity,
                          height: 80,
                          margin: EdgeInsets.symmetric(vertical: 4),
                          padding: EdgeInsets.symmetric(
                              vertical: 12, horizontal: 12), // Reduced padding
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                                color: Colors.grey.shade300, width: 0.5),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade200,
                                blurRadius: 4,
                                spreadRadius: 1,
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              // Image container
                              Container(
                                width: 40, // Reduced width
                                height: 40, // Reduced height
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.grey.shade200,
                                ),
                                child: Center(
                                  child: Image.asset(
                                    data["image"]!,
                                    width: 40, // Reduced size
                                    height: 40,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              SizedBox(width: 1.5), // Reduced space

                              // Expanded column for text
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      data["name"],
                                      style: TextStyle(
                                        fontSize: 14, // Reduced font size
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(height: 3), // Reduced spacing
                                    Text(
                                      data["message"],
                                      style: TextStyle(
                                        fontSize: 12, // Reduced font size
                                        color: Colors.grey.shade600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
