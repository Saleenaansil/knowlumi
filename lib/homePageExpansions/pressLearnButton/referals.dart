import 'package:flutter/material.dart';
import 'package:knowlumi/customwidget/customText.dart';
import 'package:knowlumi/homePageExpansions/pressLearnButton/uploadedResume.dart';

class ReferalsPage extends StatelessWidget {
  const ReferalsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Image.asset("asset/backarrow.png", height: 24, width: 24),
          onPressed: () => Navigator.pop(context),
        ),
        title: const CustomText(
          text: "COMPANIES",
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
        child: ListView(
          children: [
            companyListContainer(
              context,
              "asset/microsoftIcon.png",
              "Microsoft",
              "Top Industry Leader",
              "asset/comment-question 1.png",
              "Software Engineer",
              "asset/sandtimer.png",
              "Fresher",
            ),
            companyListContainer(
              context,
              "asset/googleIcon.png",
              "Google",
              "Great Career Growth",
              "asset/comment-question 1.png",
              "HR-Manager",
              "asset/sandtimer.png",
              "Fresher",
            ),
            companyListContainer(
              context,
              "asset/microsoftIcon.png",
              "Microsoft",
              "Highly Rated Workplace",
              "asset/comment-question 1.png",
              "Fortune 500 Company",
              "asset/sandtimer.png",
              "Fresher",
            ),
            companyListContainer(
              context,
              "asset/googleIcon.png",
              "Google",
              "Best Employee Benefits",
              "asset/comment-question 1.png",
              "Healthcare & Insurance",
              "asset/sandtimer.png",
              "Fresher",
            ),
          ],
        ),
      ),
    );
  }

  Widget companyListContainer(
    BuildContext context,
    String imagePath,
    String title,
    String subtitle,
    String icon1Path,
    String field1,
    String icon2Path,
    String field2,
  ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color(0xffDEE5EC)),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(imagePath, height: 34, width: 34),
              const SizedBox(width: 8),
              CustomText(
                text: title,
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ],
          ),
          const SizedBox(height: 15),
          Divider(thickness: 1, color: Colors.grey.shade300),
          const SizedBox(height: 4),
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset(icon1Path, height: 18, width: 18),
                          const SizedBox(width: 4),
                          Text(
                            field1,
                            style: TextStyle(
                                fontSize: 14, color: Colors.grey[700]),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Image.asset(icon2Path, height: 20, width: 20),
                          const SizedBox(width: 6),
                          Text(
                            field2,
                            style: TextStyle(
                                fontSize: 14, color: Colors.grey[700]),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => UploadResumePage()),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xFF316A69), Colors.black],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Center(
                      child: Text(
                        "Verify Me",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
