import 'package:dropdown_button2/dropdown_button2.dart';
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

  @override
  Widget build(BuildContext context) {
    return Container(
        // backgroundColor: const Color(0xffF5F6F9),
        child: SingleChildScrollView(
            child: Column(
      children: [
        SizedBox(
            height: 180, // Ensure enough space to avoid clipping
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 139,
                  decoration: BoxDecoration(
                    gradient: Customcolor.primaryGradient,
                  ),
                ),
                Positioned(
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
                  top: 116,
                  left: 14,
                  child: Container(
                    width: 348, // Fixed width
                    height: 52, // Hug height
                    decoration: BoxDecoration(
                      color: Color(0xFFE4E4EC),
                      border: Border.all(
                        color: Color(0xFFDEE5EC),
                        width: 0.8,
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    padding: EdgeInsets.fromLTRB(
                        10, 16, 10, 16), // Top, Right, Bottom, Left
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(color: Colors.grey.shade300),
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
                                border: Border.all(color: Colors.grey.shade300),
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
                  ),
                ),
              ],
            )),
        const Padding(
            padding: EdgeInsets.only(left: 18, top: 8),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Modules",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ))),
        Container()
      ],
    )));
  }
}
