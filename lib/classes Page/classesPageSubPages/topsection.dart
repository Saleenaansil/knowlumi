import 'package:flutter/material.dart';
import 'package:knowlumi/classes%20Page/classesPageSubPages/startclasspage.dart';

import '../../customwidget/customText.dart';

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 260,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff000000), Color(0xff316A69)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.65, 1.0],
            ),
          ),
        ),
        Positioned(
          left: 129,
          top: 32,
          bottom: 0,
          child: Image.asset(
            "asset/shotman.png",
            fit: BoxFit.contain,
          ),
        ),
        const Positioned(
          top: 101,
          left: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: "DSA",
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
              CustomText(
                text: "3 Chapters",
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ],
          ),
        ),
        Positioned(
          top: 30,
          left: 20,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white, // Optional: background color
              borderRadius: BorderRadius.circular(
                  25), // Correct way to add rounded corners
            ),
            child: Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () {
                  // Add back navigation logic here
                  Navigator.pop(context);
                },
              ),
            ),
          ),
        ),
        Positioned(
          child: Padding(
            padding: const EdgeInsets.only(left: 25, top: 194),
            child: Container(
              height: 44,
              width: 115,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xff9A1864), Color(0xff650061)],
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    // Navigate to the next page
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              StartClassPage()), // Replace NextPage with your actual page
                    );
                  },
                  child: CustomText(
                    text: "Start Class",
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xffFFFFFF),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
