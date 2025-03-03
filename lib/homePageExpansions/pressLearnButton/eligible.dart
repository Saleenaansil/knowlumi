import 'package:flutter/material.dart';
import 'package:knowlumi/customwidget/customText.dart';
import 'package:knowlumi/homePageExpansions/pressLearnButton/mentorPage.dart';

class Eligible extends StatelessWidget {
  const Eligible({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Image.asset("asset/backarrow.png", height: 24, width: 24),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 42),
            child: CustomText(
              text: "Congrats",
              fontSize: 23,
              fontWeight: FontWeight.w700,
              color: const Color(0xff1F2D43),
            ),
          ),
          const SizedBox(height: 28),
          // Star Row at the Top
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("asset/Star 3.png",
                  width: 92, height: 92), // Left Star
              const SizedBox(width: 10),
              Image.asset("asset/Star 3.png",
                  width: 114, height: 114), // Center Star (Biggest)
              const SizedBox(width: 10),
              Image.asset("asset/Star 3.png",
                  width: 92, height: 92), // Right Star (Smaller)
            ],
          ),
          const SizedBox(height: 72), // Space between stars and text

          // Congrats Text
          // Space between text and button

          // Connect Mentor Button
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  Mentorpage()),
              );
            },
            child: Container(
              width: MediaQuery.of(context).size.width * 0.8, // Adjust width
              height: 54,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color(0xff316A69),
                    Color(0xFF000000)
                  ], // New gradient colors
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Center(
                child: Text(
                  "Connect your Mentor",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
