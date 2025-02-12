import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:knowlumi/customwidget/customText.dart';
import '../controllerPage/appController.dart';
import 'package:knowlumi/customwidget/customColor.dart';

class Myclasspage extends StatelessWidget {
  final Appcontroller appController = Get.put(Appcontroller());

  Myclasspage({super.key});

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

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      color: const Color(0xffF5F6F9), // Background color
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header with Gradient
            Stack(
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
                          Image.asset("asset/down-arrow 1.png"),

                          // Example dropdown icon
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(left: 14, right: 14, top: 40),
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
                  ListView.builder(
                    shrinkWrap: true, // Prevents infinite height issue
                    physics:
                        NeverScrollableScrollPhysics(), // Prevents nested scrolling conflict
                    itemCount: courseItem.length,
                    itemBuilder: (context, index) {
                      return Container(
                        width: double.infinity,
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
                                  courseItem[index]["image"]!,
                                  width: 30, // Reduced size
                                  height: 30,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            SizedBox(width: 10), // Reduced space

                            // Expanded column for text
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    courseItem[index]["name"],
                                    style: TextStyle(
                                      fontSize: 14, // Reduced font size
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 3), // Reduced spacing
                                  Text(
                                    courseItem[index]["message"],
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
                      );
                    },
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
