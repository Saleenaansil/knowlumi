import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:knowlumi/LearnPage/homeLearnPage.dart';
import 'package:knowlumi/LearnPage/myClassPage.dart';
import 'package:knowlumi/LearnPage/profilePicture.dart';
import 'package:knowlumi/controllerPage/appController.dart';
import 'package:knowlumi/customwidget/customColor.dart';

class preparationPage extends StatelessWidget {
  preparationPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
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
                      "Preparation",
                      style: TextStyle(
                        fontSize: 30, // Responsive font size
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
                                  color: Colors.white.withOpacity(.25)),
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
                        SizedBox(width: 12),
                        Padding(
                          padding: const EdgeInsets.only(right: 14),
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Colors.white.withOpacity(.25)),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.search,
                                  size: screenWidth * 0.06,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
