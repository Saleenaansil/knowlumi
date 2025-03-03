import 'package:flutter/material.dart';
import 'package:knowlumi/customwidget/customText.dart';
import 'package:knowlumi/homePageExpansions/pressLearnButton/hourGlassPage.dart';

class UploadResumePage extends StatelessWidget {
  const UploadResumePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              alignment: Alignment.center,
              child: Column(
                children: [
                  CustomText(
                    text: "UPLOAD YOUR RESUME",
                    fontSize: 23,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff1F2D43),
                  ),
                  const SizedBox(height: 5), // Space between the two texts
                  CustomText(
                    text: "CHECK",
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            GestureDetector(
              onTap: () {
                // Replace `NextPage()` with your actual target page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HourglassPage()),
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8, // Adjust width
                padding: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFF316A69),
                      Colors.black
                    ], // Gradient effect
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(16), // Rounded edges
                ),
                child: const Center(
                  child: Text(
                    "UPLOAD",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
