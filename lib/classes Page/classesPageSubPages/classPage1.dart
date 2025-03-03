import 'package:flutter/material.dart';
import '../../customwidget/customText.dart';

class ClassesPage1 extends StatelessWidget {
  @override
  final List<Map> classesList = [
    {
      "playButton": "asset/playButton.png",
      "name": "Learn at least one language",
      "time": "58 mins",
      "status": "",
      "downLoadButton": "asset/download 2.png"
    },
    {
      "playButton": "asset/playButton.png",
      "name": "Learn about Complexities",
      "time": "58 mins",
      "status": "Watched",
      "downLoadButton": "asset/download 2.png"
    },
    {
      "playButton": "asset/Notebutton.png",
      "name": "Learn Data Structures and Algorithms",
      "time": "58 mins",
      "status": "Newly added",
      "downLoadButton": "asset/download 2.png"
    }
  ];

  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          /// **Part 1 Section (Reduced Height)**
          Padding(
            padding:
                const EdgeInsets.only(left: 14, right: 14), // Reduced padding
            child: Row(
              children: [
                Container(
                  height: 19,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Color(0xff1F2D4366),
                      borderRadius: BorderRadius.circular(4)),
                  child: Center(
                    child: CustomText(
                      text: "Part 1",
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(width: 6),
                CustomText(
                  text: "Concept of co-operation",
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ],
            ),
          ),

          /// **Part 1 List (Reduced Height)**
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: classesList.length,
            itemBuilder: (context, index) {
              final item = classesList[index];
              final statusColor =
                  index == 1 ? Color(0xff1BB634) : Color(0xffB61B76);

              return Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 14, vertical: 3), // Reduced vertical padding
                child: Container(
                  height: 50, // Reduced height
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(item["playButton"],
                          height: 26, width: 26), // Smaller icons
                      SizedBox(width: 6),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: item["name"],
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                            SizedBox(height: 2),
                            Row(
                              children: [
                                CustomText(
                                  text: item["time"],
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey,
                                ),
                                SizedBox(width: 4),
                                if (item["status"].isNotEmpty)
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 1),
                                    decoration: BoxDecoration(
                                      color: statusColor.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: CustomText(
                                      text: item["status"],
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: statusColor,
                                    ),
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Image.asset(item["downLoadButton"],
                          height: 20, width: 20), // Reduced download icon size
                    ],
                  ),
                ),
              );
            },
          ),

          SizedBox(height: 8), // Reduced spacing before divider
          Center(
            child: Container(
              width: 316,
              child: Divider(
                thickness: 1,
                color: Colors.grey.shade300,
              ),
            ),
          ),
          SizedBox(height: 8), // Reduced spacing before Part 2

          /// **Part 2 Section**
          Padding(
            padding:
                const EdgeInsets.only(left: 14, right: 14), // Reduced padding
            child: Row(
              children: [
                Container(
                  height: 19,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Color(0xff1F2D4366),
                      borderRadius: BorderRadius.circular(4)),
                  child: Center(
                    child: CustomText(
                      text: "Part 2",
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(width: 6),
                CustomText(
                  text: "Features, Objectives & benefits of DSA",
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ],
            ),
          ),

          /// **Part 2 List**
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: classesList.length,
            itemBuilder: (context, index) {
              final item = classesList[index];

              return Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 14), // Reduced padding
                child: Container(
                  height: 50, // Reduced height
                  child: Row(
                    children: [
                      Image.asset(item["playButton"], height: 24, width: 24),
                      SizedBox(width: 6),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomText(
                              text: item["name"],
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                            SizedBox(height: 2),
                            Row(
                              children: [
                                CustomText(
                                  text: item["time"],
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey,
                                ),
                                SizedBox(width: 4),
                                if (item["status"].isNotEmpty)
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 1),
                                    decoration: BoxDecoration(
                                      color: Color(0xff1BB634).withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: CustomText(
                                      text: item["status"],
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff1BB634),
                                    ),
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Image.asset(item["downLoadButton"],
                          height: 20, width: 20), // Reduced size
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
